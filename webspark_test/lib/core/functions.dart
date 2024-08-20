import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:webspark_test/data/responses/list_tasks_response.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';
import 'package:http/http.dart' as http;

void unFocus(BuildContext context) {
  if (FocusScope.of(context).hasFocus) {
    FocusScope.of(context).unfocus();
  }
}

void showScaffoldSnackBar({
  required BuildContext context,
  required String error,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            error,
            style: TextStyles.bodySmall.apply(
              color: ColorsManager.white,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {
              ScaffoldMessenger.of(context).clearSnackBars();
            },
            child: const Icon(
              Icons.close,
              color: ColorsManager.white,
            ),
          ),
        ],
      ),
    ),
  );
}

bool isValidUrl(String url) {
  try {
    final uri = Uri.tryParse(url);
    return uri != null && uri.isAbsolute && uri.hasScheme;
  } catch (e) {
    return false;
  }
}

Future<bool> checkUrlSupportsGetParameters(String url) async {
  try {
    final response = await http.get(Uri.parse('$url?test_param=test_value'));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}

List<List<int>> convertGrid(List<String> stringGrid) {
  final grid = stringGrid.map((row) {
    return row.split('').map((char) {
      return char == 'X' ? -1 : 0;
    }).toList();
  }).toList();

  return grid;
}

List<End> shortestPath(List<List<int>> grid, End start, End end) {
  try {
    List<End> directions = [
      End(x: 0, y: 1),
      End(x: 1, y: 0),
      End(x: 0, y: -1),
      End(x: -1, y: 0),
      End(x: 1, y: 1),
      End(x: 1, y: -1),
      End(x: -1, y: 1),
      End(x: -1, y: -1)
    ];

    int rows = grid.length;
    int cols = grid[0].length;

    Queue<List<End>> queue = Queue();
    queue.add([start]);

    Set<End> visited = {start};

    while (queue.isNotEmpty) {
      List<End> path = queue.removeFirst();
      End current = path.last;

      if (current.x == end.x && current.y == end.y) {
        return path;
      }

      for (var direction in directions) {
        int newX = current.x + direction.x;
        int newY = current.y + direction.y;

        if (newX >= 0 &&
            newX < rows &&
            newY >= 0 &&
            newY < cols &&
            grid[newX][newY] != -1) {
          End newPoint = End(x: newX, y: newY);
          if (!visited.contains(newPoint)) {
            visited.add(newPoint);
            queue.add(List.from(path)..add(newPoint));
          }
        }
      }
    }

    return [];
  } catch (e) {
    print('Route not found');

    return [];
  }
}

String formatPath(List<Map<String, int>> path) {
  return path.map((point) {
    return '(${point['x']},${point['y']})';
  }).join('->');
}
