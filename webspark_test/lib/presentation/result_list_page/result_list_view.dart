import 'package:flutter/material.dart';
import 'package:webspark_test/data/requests/result_tasks_request.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';

class ResultListView extends StatefulWidget {
  const ResultListView({
    required this.resultsList,
    super.key,
  });
  final List<ResultTasks> resultsList;

  @override
  State<ResultListView> createState() => _ResultListViewState();
}

class _ResultListViewState extends State<ResultListView> {
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
              'Result list screen',
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorsManager.lightGray,
                ),
              ),
            ),
            child: Text(
              widget.resultsList[index].result.path,
              style: TextStyles.titleSmall,
            ),
          ),
        ),
        itemCount: widget.resultsList.length,
      ),
    );
  }
}
