import 'package:ezwallet_mobile/app/modules/start/presentation/submodules/home/home_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';

void main() {
  setUpAll(() {
    initModule(HomeModule());
  });
}