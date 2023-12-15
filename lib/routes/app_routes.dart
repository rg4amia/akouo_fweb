import 'package:thierry_stphane_s_application3/presentation/frame_two_screen/frame_two_screen.dart';
import 'package:thierry_stphane_s_application3/presentation/frame_two_screen/binding/frame_two_binding.dart';
import 'package:thierry_stphane_s_application3/presentation/frame_screen/frame_screen.dart';
import 'package:thierry_stphane_s_application3/presentation/frame_screen/binding/frame_binding.dart';
import 'package:thierry_stphane_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:thierry_stphane_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String frameTwoScreen = '/frame_two_screen';

  static const String frameScreen = '/frame_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: frameTwoScreen,
      page: () => FrameTwoScreen(),
      bindings: [
        FrameTwoBinding(),
      ],
    ),
    GetPage(
      name: frameScreen,
      page: () => FrameScreen(),
      bindings: [
        FrameBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => FrameScreen(),
      bindings: [
        FrameBinding(),
      ],
    )
  ];
}
