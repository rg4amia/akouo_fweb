import 'package:thierry_stphane_s_application3/core/app_export.dart';
import 'package:thierry_stphane_s_application3/presentation/frame_two_screen/models/frame_two_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the FrameTwoScreen.
///
/// This class manages the state of the FrameTwoScreen, including the
/// current frameTwoModelObj
class FrameTwoController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController keySixController = TextEditingController();

  Rx<FrameTwoModel> frameTwoModelObj = FrameTwoModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('225').obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    keySixController.dispose();
  }
}
