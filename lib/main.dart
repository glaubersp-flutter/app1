import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app1module.dart';
import 'app1widget.dart';

void main() => runApp(ModularApp(module: App1Module(), child: App1Widget()));
