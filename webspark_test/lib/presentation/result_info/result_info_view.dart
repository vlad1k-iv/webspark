import 'package:flutter/material.dart';
import 'package:webspark_test/domain/model/models.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';
import 'package:webspark_test/presentation/result_info/widgets/grid_result_info.dart';

class ResultInfoView extends StatelessWidget {
  const ResultInfoView({
    required this.task,
    super.key,
  });

  final GridResultItems task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            const Text(
              'Preview screen',
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          GridResultInfo(
            task: task,
          ),
          Text(
            task.path,
            style: TextStyles.bodyMedium.apply(
              color: ColorsManager.black,
            ),
          ),
        ],
      ),
    );
  }
}
