class Router{

  /*
  * List of app routes
  */
  static late List routes = [];

  /*
  * this method add route type get
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return Object | Router
  */
  Router get({required String url, required String controller, required String method}) {
    Router.add(url: url, controller: controller, method: method, requestAction: 'get');
    return this;
  }

  /*
  * this method add route type post
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return Object | Router
  */
  Router post({required String url, required String controller, required String method}){
    Router.add(url: url, controller: controller, method: method,requestAction: 'post');
    return this;
  }

  /*
  * this method add route type update
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return Object | Router
  */
  Router update({required String url, required String controller, required String method}){
    Router.add(url: url, controller: controller, method: method, requestAction: 'update');
    return this;
  }

  /*
  * this method add route type delete
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return Object | Router
  */
  Router delete({required String url, required String controller, required String method}){
    Router.add(url: url, controller: controller, method: method,requestAction: 'delete');
    return this;
  }

  /*
  * this function store route name in routes array
  *
  * @param routeName | String
  * @return Object | Router
  */
  Router name({required String routeName}){
    Router.routes[Router.routes.length - 1]['name'] = routeName;
    return this;
  }
  /*
  * this method add any route in routes list
  * @param url | String
  * @param method | String
  * @param controller | String
  * @param requestAction | String 
  * @return void
  */
  static void add({required String url, required String controller, required String method, String requestAction = 'get'}) {
    Router.routes.add(Router.prepareRoute(url: url, controller: controller, method: method, requestAction: requestAction));
  }
  
  /*
  * this method preparing router parameter to [add,post,get,update,delete] methods and append name param in end
  * @param url | String
  * @param method | String
  * @param controller | String
  * @param requestAction | String 
  * @return Map<String,String>
  */
  static Map<String,String> prepareRoute({required String url, required String controller, required String method, required String requestAction}) {
    return {
      'url': url,
      'controller': controller,
      'method': method,
      'requestAction': requestAction,
      'name': ''
    };
  }
}