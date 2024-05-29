import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../lib.dart';

part 'nav_provider.g.dart';

part 'tree_provider.dart';

@riverpod
class NaviList extends _$NaviList{
  late ApiClient _apiClient;

  @override
  Future<List<NaviBean>> build() async {
    try {
      _apiClient = ref.read(networkProvider);
      var naviList = await _apiClient.getNaviList();
      return naviList;
    }catch(e,s){
      return [];
    }
  }
}