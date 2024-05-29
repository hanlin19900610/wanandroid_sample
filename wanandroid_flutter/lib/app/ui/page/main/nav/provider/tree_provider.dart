part of 'nav_provider.dart';

@riverpod
class TreeList extends _$TreeList {
  late ApiClient _apiClient;

  @override
  Future<List<TreeBean>> build() async {
    try {
      _apiClient = ref.read(networkProvider);
      var treeList = await _apiClient.getTreeList();
      return treeList;
    }catch(e,s){
      return [];
    }
  }
}