import 'package:flutter/material.dart';
import 'package:webspark_test/core/extensions.dart';
import 'package:webspark_test/core/functions.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';
import 'package:webspark_test/presentation/widgets/app_elevated_button.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unFocus(context);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: const Text(
            'Home screen',
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Set valid API base URL in order to continue',
                  style: TextStyles.bodyMedium,
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.compare_arrows_rounded,
                      size: 30,
                      color: ColorsManager.gray,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(hintText: 'Link'),
                        controller: _controller,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Spacer(),
                SizedBox(
                  width: context.screenWidth - 32,
                  height: 55,
                  child: AppElevatedButton(
                    onTap: () {},
                    text: 'Start counting proccess',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
