import 'Router.dart';
import 'Configration.dart';
import '../config/routes.dart';
class Application{

  Configration config;

  Router router = new Router();

  Application(Configration this.config){
    this.generateRoutes(routes);
  }

  void generateRoutes(List<Map> routes) {
    routes.forEach((element) {
      switch(element['requestAction']) {  

        case 'get': {
          this.router.get(url: element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']);
        }
        break;

        case 'post': {
          this.router.post(url: element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']);
        }
        break;
        
        case 'update': {
          this.router.update(url: element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']); 
        }
        break;
        
        case 'delete': {
          this.router.delete(url: element['url'],method: element['method'],controller: element['controller']).name(routeName: element['name']);
        }
      }
    });
  }

}