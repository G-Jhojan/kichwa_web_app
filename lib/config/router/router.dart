import 'package:fluro/fluro.dart';
import 'package:kichwa_web_app/config/router/admin_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  //root router
  static String rootRoute = '/';

  //auth router
  static String loginRoute = 'auth/login';
  static String registerRoute = 'auth/login';

  //DashBorad
  static String dashboardRoute = 'auth/login';

  static void configureRoutes() {
    router.define(rootRoute,     handler: AdminHandlers.login);
    router.define(loginRoute,    handler: AdminHandlers.login);
   // router.define(registerRoute, handler: handler);
  }
  //
}
