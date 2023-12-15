import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:thierry_stphane_s_application3/core/app_export.dart';
import 'package:thierry_stphane_s_application3/core/utils/validation_functions.dart';
import 'package:thierry_stphane_s_application3/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: appTheme.gray300,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 23.v,
                  width: 33.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 12.v,
                    bottom: 10.v,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(4.h, 14.v, 13.h, 11.v),
                  child: Text(
                    "+${country.phoneCode}",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomTextFormField(
              width: 195.h,
              controller: controller,
              hintText: "msg_num_ro_de_t_l_phone".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
