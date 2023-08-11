import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_resource/Provider_Request/view_model/provider_view_model.dart';

class ProviderView extends StatefulWidget {
  const ProviderView({super.key});

  @override
  State<ProviderView> createState() => _ProviderViewState();
}

class _ProviderViewState extends State<ProviderView> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ProviderViewModel>(
        builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.resources?.data?.length ?? 1,
          itemBuilder: (BuildContext context, int index) {
            return Text(value.resources?.data?[index].name ?? "boş");
          },
        );
      }),
    );
  }
}
