import 'package:final_year/utils/constants/url.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String appbaseUrl;
  late String token;
  late Map<String, String> mainHeader;
  ApiClient({required this.appbaseUrl}){
    baseUrl=appbaseUrl;
    timeout = const Duration(seconds: 60);
    token=UrlConstants.TOKEN;
    mainHeader={
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
      "HttpHeaders.contentTypeHeader": "application/json"
    };
  }


  updateToken(token){
     mainHeader={
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
      "HttpHeaders.contentTypeHeader": "application/json"
    };
  }

 Future<Response> postData(String url, dynamic body) async{
   try{
     Response response= await post(url, body, headers:mainHeader);
     return response;
   }catch(e){
    return Response(statusCode: 1, statusText: e.toString());
   }
  }
}