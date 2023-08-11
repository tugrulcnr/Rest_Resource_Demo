import 'package:dio/dio.dart';
import 'package:rest_resource/Provider_Request/model/provider_model.dart';

class ProviderService {
  final _service = Dio();
  

  Future<ProviderModel?> getData() async {
    final response = await _service.get("https://reqres.in/api/unknown");
    if(response.statusCode == 200){
      final data = response.data;
      if(data is Map<String, dynamic>){
        return ProviderModel.fromJson(data);
      }
    }
    return null;
  }
}