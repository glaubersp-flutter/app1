library app1;

import 'package:convex_app_bar_example/convex_button_demo.dart';
import 'package:convex_app_bar_example/custom_appbar_sample.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'default_appbar_demo.dart';

class App1Module extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => DefaultAppBarDemo()),
        ChildRoute('/custom', child: (_, args) => CustomAppBarDemo()),
        ChildRoute('/fab', child: (_, args) => ConvexButtonDemo()),
      ];
}
