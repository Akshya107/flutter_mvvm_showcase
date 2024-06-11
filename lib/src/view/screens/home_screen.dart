import 'package:flutter/material.dart';
import 'package:flutter_mvvm_showcase/src/services/joke_service.dart';
import 'package:flutter_mvvm_showcase/src/view/widget/custom_error_widget.dart';
import 'package:flutter_mvvm_showcase/src/view/widget/home/joke_list_widget.dart';
import 'package:flutter_mvvm_showcase/src/view/widget/home/joke_not_found_widget.dart';
import 'package:flutter_mvvm_showcase/src/view/widget/loading_widget.dart';
import 'package:flutter_mvvm_showcase/src/viewmodel/joke_viewmodel/joke_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ChangeNotifierProvider(
        create: (BuildContext context) =>
            JokeViewModel(JokeService())..fetchJokes(),
        child: Consumer<JokeViewModel>(
          builder: (BuildContext context, JokeViewModel value, Widget? child) {
            if (value.isError) {
              return CustomErrorWidget(errorMsg: value.errorMsg);
            } else if (value.isLoading) {
              return const LoadingWidget();
            } else if (value.jokesList.isEmpty) {
              return const JokeNotFoundWidget();
            } else {
              return JokeListWidget(jokeList: value.jokesList);
            }
          },
        ),
      ),
    );
  }
}
