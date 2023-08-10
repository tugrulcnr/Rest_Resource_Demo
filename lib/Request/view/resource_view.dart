import 'package:flutter/material.dart';
import 'package:rest_resource/Request/view_model/resource_view_model.dart';

class ResourceView extends StatefulWidget {
  const ResourceView({super.key});

  @override
  State<ResourceView> createState() => _ResourceViewState();
}

class _ResourceViewState extends ResourceViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: resources?.data?.length ?? 1,
        itemBuilder: (BuildContext context, int index) {
          return Text(resources?.data?[index].name ?? "boş");
        },
      ),
    );
  }
}