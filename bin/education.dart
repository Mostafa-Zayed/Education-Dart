import 'package:education/environment.dart';
import 'package:education/Configration.dart';
import 'package:education/Application.dart';
import 'package:education/routes.dart';
import 'package:education/Router24.dart';
import 'package:education/Router.dart';
// import 'package:education/Router.dart';
void main(List<String> arguments) {
  
  Application app = new Application(new Configration(env));

  print(Router.routes);
}
