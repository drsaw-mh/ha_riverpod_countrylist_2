import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hs_country_list/data/service/country_service.dart';
import 'package:hs_country_list/state/country_list_state/country_list_state.dart';

import '../../data/model/country_list_model.dart';

class CountryListNotifier extends Notifier<CountryListState> {
  final CountryService _countryListService = CountryService();

  @override
  CountryListState build() {
    return CountryListLoading();
  }

  void getCountryList() async {
    try {
      state = CountryListLoading();
      final List<CountryListModel> countryList =
          await _countryListService.getCountryList();
      state = CountryListSuccess(countryList);
    } catch (e) {
      state = CountryListFailed(e.toString());
    }
  }
}
