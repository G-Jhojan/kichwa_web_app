import 'package:fluro/fluro.dart';
import 'package:kichwa_web_app/presentation/views/login/login_view.dart';
import 'package:kichwa_web_app/presentation/views/register/register_view.dart';

class AdminHandlers {
  static Handler login = Handler(handlerFunc: (context, params) {
    return const LoginView();
  });

  static Handler register = Handler(handlerFunc: (context, params) {
    return const RegisterView();
  });


}
