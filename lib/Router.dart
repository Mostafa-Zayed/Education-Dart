class Router{

  static late Map<String,Map> routes = {};
  Map<String,String> registery = {
    'url': '',
    'controller': '',
    'method': '',
    'name': '',
    'action': ''
  };

  Router get({required String url, required String controller, required String method, String requestAction = 'get'}){
    this.registery['url'] = url;
    this.registery['controller'] = controller;
    this.registery['method'] = method;
    this.registery['action'] = requestAction;
    return this;
  }

  Router post({required String url, required String controller, required String method, String requestAction = 'post'}){
    this.registery['url'] = url;
    this.registery['controller'] = controller;
    this.registery['method'] = method;
    this.registery['action'] = requestAction;
    return this;
  }

  Router name({required String routeName}){
    this.registery['name'] = routeName;
    return this;
  }

  void add(){
    if(this.registery['name']!.isNotEmpty){
      Router.routes[this.registery['name']!] = this.registery;
      this.registery = {
        'url': '',
        'controller': '',
        'method': '',
        'name': '',
        'action': ''
      };
    }
    
  }
}