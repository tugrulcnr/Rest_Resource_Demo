// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rest_resource/Provider_Request/model/provider_model.dart';
import 'package:rest_resource/Provider_Request/service/provider_service.dart';

class ProviderViewModel extends ChangeNotifier {
  late final ProviderService providerService = ProviderService();
  late ProviderModel? resources = ProviderModel();

  ProviderViewModel() {
    fecthData();
  }

/*
  @override
  void initState() {
    super.initState();
    providerService = ProviderService();
    fecthData();
  }

  */

  Future<void> fecthData() async {
    resources = await providerService.getData();
    // setState(() {});
    notifyListeners();
  }
}
