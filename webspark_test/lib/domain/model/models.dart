import 'package:webspark_test/data/responses/list_tasks_response.dart';

class GridResultItems {
  const GridResultItems({
    required this.blockedItems,
    required this.path,
    required this.points,
    required this.gridSize,
  });

  final String path;
  final List<End> points;
  final List<End> blockedItems;
  final End gridSize;
}
