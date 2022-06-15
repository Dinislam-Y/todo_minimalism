// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

class Clock extends StatelessWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Column(
          children: [
            Text(
              DateFormat('hh:mm:ss').format(DateTime.now()),
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              DateFormat('MM.dd.yyyy').format(DateTime.now()),
              style: const TextStyle(
                color: Colors.white30,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      },
    );
  }
}
