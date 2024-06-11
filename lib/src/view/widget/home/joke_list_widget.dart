import 'package:flutter/material.dart';
import 'package:flutter_mvvm_showcase/src/model/jokes_model.dart';

class JokeListWidget extends StatelessWidget {
  final List<JokesModel> jokeList;

  const JokeListWidget({super.key, required this.jokeList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: jokeList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(jokeList[index].type),
              subtitle: Text(jokeList[index].punchline),
            ),
          );
        });
  }
}
