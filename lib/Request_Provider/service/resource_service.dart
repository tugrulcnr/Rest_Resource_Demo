import 'package:dio/dio.dart';
import 'package:rest_resource/Request/model/resource_model.dart';

class ResourceService {
  final _service = Dio();
  

  Future<ResourceModel?> getData() async {
    final response = await _service.get("https://reqres.in/api/unknown");
    if(response.statusCode == 200){
      final data = response.data;
      if(data is Map<String, dynamic>){
        return ResourceModel.fromJson(data);
      }
    }
    return null;
  }
}