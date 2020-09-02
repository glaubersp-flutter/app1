import 'package:convex_app_bar_example/convex_button_demo.dart';
import 'package:convex_app_bar_example/custom_appbar_sample.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'default_appbar_demo.dart';

class App1Module extends ChildModule {
  static Inject get to => Inject<App1Module>.of();
  @override
  // TODO: implement binds
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => DefaultAppBarDemo()),
        ModularRouter('/custom', child: (_, args) => CustomAppBarDemo()),
        ModularRouter('/fab', child: (_, args) => ConvexButtonDemo()),
      ];
}
