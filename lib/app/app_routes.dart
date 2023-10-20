import 'package:flutter_modular/flutter_modular.dart';

class AppRoutes {
  static void goToRegisterPage() {
    Modular.to.navigate("/register/");
  }

  static void goToAuthPage() {
    Modular.to.pushReplacementNamed('/auth');
  }

  static void goToNewRegisterPage() {
    Modular.to.pushNamed('/new-register');
  }
}
