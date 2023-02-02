class Router24{

  static late List<Map> routes = [];

  /*
  * this method add route type get
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return void
  */
  static get({required String url, required String controller, required String method}){
    Router24.add(url: url, controller: controller, method: method,requestAction: 'get');
  }

  /*
  * this method add route type post
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return void
  */
  static post({required String url, required String controller, required String method}){
    Router24.add(url: url, controller: controller, method: method,requestAction: 'get');
  }

  /*
  * this method add route type update
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return void
  */
  static update({required String url, required String controller, required String method}){
    Router24.add(url: url, controller: controller, method: method,requestAction: 'update');
  }

  /*
  * this method add route type delete
  * @param url | String
  * @param method | String
  * @param controller | String
  * @return void
  */
  static delete({required String url, required String controller, required String method}){
    Router24.add(url: url, controller: controller, method: method,requestAction: 'delete');
  }
  // Router name({required String routeName}){
  //   this.registery['name'] = routeName;
  //   return this;
  // }


  /*
  * this method add any route in routes list
  * @param url | String
  * @param method | String
  * @param controller | String
  * @param requestAction | String 
  * @return void
  */
  static void add({required String url, required String controller, required String method, String requestAction = 'get'}) {
    Router24.routes.add(Router24.prepareRoute(url: url, controller: controller, method: method));
  }

  /*
  * this method preparing router parameter to [add,post,get,update,delete] methods and append name param in end
  * @param url | String
  * @param method | String
  * @param controller | String
  * @param requestAction | String 
  * @return Map<String,String>
  */
  static Map<String,String> prepareRoute({required String url, required String controller, required String method, String requestAction = 'get'}) {
    return {
      'url': url,
      'controller': controller,
      'method': method,
      'requestAction': requestAction,
      'name': ''
    };
  }
}


