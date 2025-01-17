import 'package:flutter/material.dart';

import '../../data/model/country_detail_model.dart';

class CountryDetailWidget extends StatelessWidget {
  const CountryDetailWidget({super.key, required this.model});
  final CountryDetailModel model;

  @override
  Widget build(BuildContext context) {
    final String? flagLink = model.flags?.png;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: const Text('Common name'),
              trailing: Text(model.name?.common ?? ''),
            ),
            ListTile(
              title: const Text('Official name'),
              trailing: Text(model.name?.official ?? ''),
            ),
            ListTile(
              title: const Text('Population'),
              trailing: Text(model.population?.toString() ?? ''),
            ),
            ListTile(
              title: const Text('Region'),
              trailing: Text(model.region ?? ''),
            ),
            ListTile(
              title: const Text('Sub-region'),
              trailing: Text(model.subregion ?? ''),
            ),
            ListTile(
              title: const Text('Capital'),
              trailing: Text(model.capital?.join(",") ?? ''),
            ),
            if (flagLink != null) Image.network(flagLink)
          ],
        ),
      ),
    );
  }
}
