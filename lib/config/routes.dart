/*
* store all app router here 
*/
List<Map> routes = [
  {
    'url': 'home',
    'method': 'index',
    'controller': 'HomeController',
    'requestAction': 'get',
    'name': 'home'
  },
  {
    'url': 'about',
    'method': 'about',
    'controller': 'HomeController',
    'requestAction': 'get',
    'name': ''
  },
  {
    'url': 'category',
    'method': 'index',
    'controller': 'CategoryController',
    'requestAction': 'get',
    'name': 'category.index'
  },
  {
    'url': 'category/store',
    'method': 'store',
    'controller': 'CategoryController',
    'requestAction': 'post',
    'name': 'category.store'
  },
  {
    'url': 'category/update',
    'method': 'update',
    'controller': 'CategoryController',
    'requestAction': 'update',
    'name': 'category.update'
  },
  {
    'url': 'category',
    'method': 'delete',
    'controller': 'CategoryController',
    'requestAction': 'delete',
    'name': 'category.delete'
  }
];




