import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webspark_test/core/extensions.dart';
import 'package:webspark_test/core/navigation/route_manager.dart';
import 'package:webspark_test/presentation/home_page/bloc/home_page_cubit.dart';
import 'package:webspark_test/presentation/home_page/bloc/home_page_state.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';
import 'package:webspark_test/presentation/widgets/app_elevated_button.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({
    super.key,
  });

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
      final cubit = context.read<HomePageCubit>();

      return IgnorePointer(
        ignoring: !state.isReady,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {
                      cubit.onPop();
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                const Text(
                  'Process screen',
                ),
              ],
            ),
            centerTitle: false,
          ),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      !state.isReady
                          ? 'Please wait...'
                          : 'All calculations has finished, you can send your results to server',
                      style: TextStyles.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      '${state.percentIndicator}%',
                      style: TextStyles.titleMedium,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 6,
                      ),
                      child: Divider(),
                    ),
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: CircularProgressIndicator(
                        value: state.percentIndicator / 100,
                        strokeWidth: 4,
                        color: ColorsManager.darkMain,
                      ),
                    ),
                    const Spacer(),
                    if (state.isReady)
                      SizedBox(
                        height: 56,
                        width: context.screenWidth - 32,
                        child: AppElevatedButton(
                          onTap: () {
                            cubit.sendResult(() {
                              Navigator.of(context).pushNamed(
                                Routes.resultsPageRoute,
                                arguments: state.listResultTasks,
                              );
                            });
                          },
                          text: 'Send results to server',
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
