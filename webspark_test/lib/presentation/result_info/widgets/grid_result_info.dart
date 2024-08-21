import 'package:flutter/material.dart';
import 'package:webspark_test/domain/model/models.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';

class GridResultInfo extends StatelessWidget {
  const GridResultInfo({
    required this.task,
    super.key,
  });

  final GridResultItems task;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: task.gridSize.x,
      ),
      itemCount: task.gridSize.x * task.gridSize.y,
      itemBuilder: (context, index) {
        int x = index % task.gridSize.x;
        int y = index ~/ task.gridSize.y;

        bool isHighlighted =
            task.points.any((point) => point.x == x && point.y == y);

        bool isBlocked =
            task.blockedItems.any((point) => point.x == x && point.y == y);

        const black = ColorsManager.black;
        const grey = ColorsManager.grey;

        final border = Border(
          top: BorderSide(
            color: y == 0 ? grey : black,
          ),
          left: BorderSide(
            color: x == 0 ? grey : black,
          ),
          right: BorderSide(
            color: x == 3 ? grey : black,
          ),
          bottom: BorderSide(
            color: y == 3 ? grey : black,
          ),
        );

        return Container(
          decoration: BoxDecoration(
            color: (isHighlighted || isBlocked)
                ? getColor(
                    x,
                    y,
                  )
                : ColorsManager.white,
            border: border,
          ),
          child: Center(
            child: Text(
              '($x,$y)',
              style: TextStyles.displayLarge.apply(
                color: isBlocked ? ColorsManager.white : black,
              ),
            ),
          ),
        );
      },
    );
  }

  Color getColor(int x, int y) {
    final steps = task.points;

    if (task.blockedItems.any((point) => point.x == x && point.y == y)) {
      return ColorsManager.black;
    } else {
      if (x == steps[0].x && y == steps[0].y) {
        return ColorsManager.turquoise;
      } else if (x == steps.last.x && y == steps.last.y) {
        return ColorsManager.green;
      } else {
        return ColorsManager.saladGreen;
      }
    }
  }
}
