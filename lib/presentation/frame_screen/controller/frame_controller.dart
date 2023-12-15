import 'package:thierry_stphane_s_application3/core/app_export.dart';
import 'package:thierry_stphane_s_application3/presentation/frame_screen/models/frame_model.dart';

/// A controller class for the FrameScreen.
///
/// This class manages the state of the FrameScreen, including the
/// current frameModelObj
class FrameController extends GetxController {
  Rx<FrameModel> frameModelObj = FrameModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.frameTwoScreen,
      );
    });
  }
}
