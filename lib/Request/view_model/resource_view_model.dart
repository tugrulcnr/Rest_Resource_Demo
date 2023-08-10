import 'package:flutter/material.dart';
import 'package:rest_resource/Request/model/resource_model.dart';
import 'package:rest_resource/Request/service/resource_service.dart';
import 'package:rest_resource/Request/view/resource_view.dart';


abstract class ResourceViewModel extends State<ResourceView> {
  
  late final ResourceService resourceService;
  late ResourceModel? resources = ResourceModel();

  @override
  void initState() {
    super.initState();
    resourceService = ResourceService();
    fecthData();
  }

  Future<void> fecthData() async {
    resources = await resourceService.getData();
    setState(() {});

  }


  
}