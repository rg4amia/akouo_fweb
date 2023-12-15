import 'controller/frame_two_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:thierry_stphane_s_application3/core/app_export.dart';
import 'package:thierry_stphane_s_application3/core/utils/validation_functions.dart';
import 'package:thierry_stphane_s_application3/widgets/custom_outlined_button.dart';
import 'package:thierry_stphane_s_application3/widgets/custom_phone_number.dart';
import 'package:thierry_stphane_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FrameTwoScreen extends GetWidget<FrameTwoController> {
  FrameTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Column(
              children: [
                Spacer(
                  flex: 64,
                ),
                SizedBox(
                  height: 95.v,
                  width: 207.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "lbl_ak".tr,
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 45.h),
                          child: Text(
                            "lbl_u".tr,
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroupe127,
                                height: 43.v,
                                width: 129.h,
                                alignment: Alignment.centerRight,
                              ),
                              SizedBox(height: 15.v),
                              Text(
                                "msg_audios_de_culte".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 35,
                ),
                _buildLoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Column(
              children: [
                Obx(
                  () => CustomPhoneNumber(
                    country: controller.selectedCountry.value,
                    controller: controller.phoneNumberController,
                    onTap: (Country value) {
                      controller.selectedCountry.value = value;
                    },
                  ),
                ),
                SizedBox(height: 12.v),
                Obx(
                  () => CustomTextFormField(
                    controller: controller.keySixController,
                    hintText: "lbl_mot_de_passe".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 13.v, 17.h, 13.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEye,
                          height: 17.v,
                          width: 20.h,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 45.v,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_password".tr;
                      }
                      return null;
                    },
                    obscureText: controller.isShowPassword.value,
                    contentPadding: EdgeInsets.only(
                      left: 14.h,
                      top: 13.v,
                      bottom: 13.v,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                CustomOutlinedButton(
                  width: 121.h,
                  text: "lbl_se_connecter".tr,
                ),
                SizedBox(height: 21.v),
                Text(
                  "msg_vous_n_avez_pas".tr,
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_cr_er_mon_compte".tr,
                  style: CustomTextStyles.titleSmallBlack900.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 48.v),
          CustomImageView(
            imagePath: ImageConstant.imgVhLogoBlanc,
            height: 46.v,
            width: 83.h,
          ),
        ],
      ),
    );
  }
}
