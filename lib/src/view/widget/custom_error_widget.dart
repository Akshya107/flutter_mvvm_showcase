import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMsg;

  const CustomErrorWidget({super.key, required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          color: Colors.red,
          size: 44,
        ),
        Center(
          child: Text(errorMsg),
        ),
      ],
    );
  }
}
