import 'package:education/environment.dart';
import 'package:education/Configration.dart';
import 'package:education/Application.dart';
import 'package:education/routes.dart';
import 'package:education/Router.dart';
void main(List<String> arguments) {
  
  Application app = new Application(new Configration(env));

  // register app routes
  router.get(url: 'home', controller: 'HomeController', method: 'index').name(routeName: 'home').add();
  router.get(url: 'about', controller: 'HomeController',method: 'about').name(routeName: 'about').add();
  router.post(url: '/users/store', controller: 'UserController', method: 'store').name(routeName: 'users.store').add();
  print(Router.routes['users.store']);
}
