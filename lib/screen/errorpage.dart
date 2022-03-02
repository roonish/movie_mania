import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String text;
  const ErrorPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: const Icon(Icons.back_hand)),
        Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
