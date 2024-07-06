import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hs_country_list/state/country_detail_state/country_detail_state.dart';

import '../../data/model/country_detail_model.dart';
import '../../data/service/country_service.dart';

typedef CountryDetailProvider
    = AutoDisposeNotifierProvider<CountryDetailNotifier, CountryDetailState>;

class CountryDetailNotifier extends AutoDisposeNotifier<CountryDetailState> {
  final _countryService = CountryService();

  @override
  CountryDetailState build() {
    return CountryDetailLoading();
  }

  void getCountry(String name) async {
    try {
      state = CountryDetailLoading();
      final CountryDetailModel country = await _countryService.getCountry(name);
      state = CountryDetailSuccess(country);
    } catch (e) {
      state = CountryDetailFailed(e.toString());
    }
  }
}
