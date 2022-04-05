import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({Key? key}) : super(key: key);

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  String yazi = 'Follow';

  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint('bas');

        if (sayac % 2 == 1) {
          setState(() {
            yazi = 'Follow';
          });
        } else {
          setState(() {
            yazi = 'Un Follow';
          });
        }
        sayac++;
        debugPrint(sayac.toString());
        debugPrint(yazi);
      },
      child: Container(
        height: 28,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.brown),
        child: Center(
          child: Text(
            yazi,
            style: const TextStyle(
              fontFamily: 'El',
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
