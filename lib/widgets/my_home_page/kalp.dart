import 'package:flutter/material.dart';

class Kalp extends StatefulWidget {
  const Kalp({
    Key? key,
  }) : super(key: key);

  @override
  State<Kalp> createState() => _KalpState();
}

class _KalpState extends State<Kalp> {
  int sayac = 1;
  Color renk = Colors.brown.withOpacity(0.4);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (sayac % 2 == 1) {
          setState(() {
            renk = Colors.red;
          });
        } else {
          setState(() {
            renk = Colors.brown.withOpacity(0.4);
          });
        }
        sayac++;
      },
      icon: Icon(
        Icons.favorite,
        color: renk,
        size: 30,
      ),
    );
  }
}
