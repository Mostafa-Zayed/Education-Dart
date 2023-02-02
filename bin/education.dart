import '../lib//config/environment.dart';
import '../lib/core/Configration.dart';
import '../lib/core/Application.dart';
import '../lib/config/routes.dart';
import '../lib/core/Router.dart';
// import 'package:education/Router.dart';
void main(List<String> arguments) {
  
  Application app = new Application(new Configration(env));

  print(Router.routes);
}
