
class Configration{

  static late  final String PROTOCOL = Configration.getProtocol();
  static late final String DOMAIN_NAME = Configration.getDomainName();
  static late final String BASE_ENDPOINT = Configration.getBaseEndPoint();
  static late final String MODULE_ENDPOINT = Configration.getModuleEndPoint();
  static late Map<String,dynamic> environment;

  Configration(Map<String,dynamic> environment){
    Configration.environment = environment;
  }

  Map<String,dynamic> showEnviroment(){
    return Configration.environment;
  }

  /*
  * this function get https or http depending of env app file
  *
  * @return String 
  */
  static String getProtocol(){
    return Configration.environment['https_enabled'] ? 'https://' : 'http://';
  }

  /*
  * this function get domain name with protocol depending of env app file
  *
  * @return String
  */
  static String getDomainName(){
    return Configration.PROTOCOL + Configration.environment['domain'] ;
  }

  /*
  * this function get base endpoint api without module defpending of env app file
  *
  * @return String
  */
  static String getBaseEndPoint(){
    return Configration.DOMAIN_NAME + Configration.environment['api_prefix'] + '/v' + Configration.environment['api_version'] + '/';
  }

  /*
  * this function get full endpoint api with module name depending of env app file
  *
  * @return String
  */
  static String getModuleEndPoint(){
    return ! Configration.environment['module'].isEmpty ? Configration.BASE_ENDPOINT + Configration.environment['module'] : Configration.BASE_ENDPOINT;
  }

}

