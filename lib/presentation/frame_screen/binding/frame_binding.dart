import '../controller/frame_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FrameScreen.
///
/// This class ensures that the FrameController is created when the
/// FrameScreen is first loaded.
class FrameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameController());
  }
}
