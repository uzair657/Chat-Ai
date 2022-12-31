import 'package:flutter/material.dart';
import '../app_const/page_const.dart';
import '../../image_ai/presentation/pages/image_generation_page.dart';
import '../../message_ai/presentation/pages/message_generation_page.dart';


class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        {
          return materialBuilder(
            widget: ErrorPage(),
          );
        }
      case PageConst.ImageGenerationPage:
        {
          return materialBuilder(
            widget: ImageGenerationPage(),
          );
        }
      case PageConst.MessageGenerationPage:
        {
          return materialBuilder(
            widget: MessageGenerationPage(),
          );
        }
      default:
        return materialBuilder(
          widget: ErrorPage(),
        );
    }
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text("Error"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
