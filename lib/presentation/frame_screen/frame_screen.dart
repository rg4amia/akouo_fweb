import 'controller/frame_controller.dart';
import 'package:flutter/material.dart';
import 'package:thierry_stphane_s_application3/core/app_export.dart';
import 'package:thierry_stphane_s_application3/widgets/custom_elevated_button.dart';

class FrameScreen extends GetWidget<FrameController> {
  const FrameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 543.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
                child: Column(children: [
                  SizedBox(height: 6.v),
                  Expanded(
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 39.h, vertical: 27.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_ajoutez_une_entit".tr,
                                    style: theme.textTheme.headlineMedium),
                                Text("msg_remplissez_les_champs".tr,
                                    style: CustomTextStyles.bodyMediumGray800),
                                SizedBox(height: 34.v),
                                SizedBox(
                                    height: 57.v,
                                    width: 426.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 17.h,
                                                      vertical: 9.v),
                                                  decoration: AppDecoration
                                                      .fillGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder19),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_type_de_structure"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium),
                                                        SizedBox(height: 4.v),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgIconIonicMdArrowDropdown,
                                                            height: 9.v,
                                                            width: 18.h,
                                                            alignment: Alignment
                                                                .centerRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        3.h)),
                                                        SizedBox(height: 5.v)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 17.h),
                                                  child: Text("lbl".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray900)))
                                        ])),
                                Spacer(),
                                CustomElevatedButton(
                                    width: 140.h, text: "lbl_cr_er".tr),
                                SizedBox(height: 7.v),
                                Text("lbl_annuler".tr,
                                    style: theme.textTheme.bodyLarge),
                                SizedBox(height: 3.v)
                              ])))
                ]))));
  }
}
