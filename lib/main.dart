import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rest_resource/Provider_Request/service/provider_service.dart';
import 'package:rest_resource/Provider_Request/view/provider_view.dart';
import 'package:provider/provider.dart';
import 'package:rest_resource/Provider_Request/view_model/provider_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProviderViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProviderView(),
      ),
    );
  }
}
