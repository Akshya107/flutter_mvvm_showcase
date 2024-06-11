import 'package:flutter/material.dart';

class JokeNotFoundWidget extends StatelessWidget {
  const JokeNotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          size: 44,
        ),
        Center(
          child: Text("Ops! No joke found"),
        ),
      ],
    );
  }
}
