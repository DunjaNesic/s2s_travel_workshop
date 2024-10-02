class BaseAPI {
  static String ipAndPort = "192.168.1.12:7062";
  static String base = "https://$ipAndPort"; 
  // static var api = "$base/travel"; 
  static var api = 'https://serpapi.com/search.json?engine=google&q=Serbia+Destinations&api_key=f15a7fddd6102085c59d66db5687f5513b64b744f72c17a6ef842019389fb9bd';

  Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };
}
