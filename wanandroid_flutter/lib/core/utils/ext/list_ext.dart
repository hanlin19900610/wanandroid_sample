part of 'ext.dart';
extension ListExt<T> on List<T> {

  /// 从数组中随机取几个值
  List<T> random(int num){
    // 创建一个随机数生成器
    Random random = Random();

    // 初始化一个集合来存储随机选择的元素，确保不会有重复
    Set<T> selectedItems = {};

    // 循环直到我们选择了4个不同的元素
    while (selectedItems.length < 4) {
      int randomIndex = random.nextInt(length);
      T item = this[randomIndex];
      selectedItems.add(item);
    }

    return selectedItems.toList();
  }

}