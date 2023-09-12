import 'package:fluro/fluro.dart';
import 'package:kichwa_web_app/presentation/views/404/no_page_found_view.dart';


class NoPageFoundHandlers {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    return const NoPageFoundView();
  });
}
