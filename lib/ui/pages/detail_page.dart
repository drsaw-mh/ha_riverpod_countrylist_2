import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hs_country_list/state/country_detail_state/country_detail_notifier.dart';
import 'package:hs_country_list/state/country_detail_state/country_detail_state.dart';
import 'package:hs_country_list/ui/widgets/failed_widget.dart';

import '../../data/model/country_detail_model.dart';
import '../widgets/country_detail_widget.dart';

class CountryDetailPage extends ConsumerStatefulWidget {
  const CountryDetailPage({super.key, required this.name});
  final String name;

  @override
  ConsumerState<CountryDetailPage> createState() => _CountryDetailPageState();
}

class _CountryDetailPageState extends ConsumerState<CountryDetailPage> {
  final CountryDetailProvider countryDetailProvider =
      CountryDetailProvider(() => CountryDetailNotifier());

  @override
  void initState() {
    super.initState();
    _getCountryDetail();
  }

  void _getCountryDetail() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref
          .read(countryDetailProvider.notifier)
          .getCountry(widget.name.toLowerCase());
    });
  }

  @override
  void didUpdateWidget(covariant CountryDetailPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _getCountryDetail();
  }

  @override
  Widget build(BuildContext context) {
    final CountryDetailState countryDetailState =
        ref.watch(countryDetailProvider);
    return Scaffold(
      appBar: AppBar(title: Text(widget.name)),
      body: switch (countryDetailState) {
        CountryDetailLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        CountryDetailSuccess(countryDetailModel: CountryDetailModel model) =>
          CountryDetailWidget(model: model),
        CountryDetailFailed(errorMessage: String errorMessage) => FailedWidget(
            errorMessage: errorMessage,
            tryAgain: () {},
          ),
      },
    );
  }
}
