// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:woocommerce_ui/widgets/my_home_page/follow_button.dart';

// ignore: must_be_immutable
class ListeElemani extends StatefulWidget {
  String imagePath, logoPath;
  ListeElemani(this.imagePath, this.logoPath, {Key? key}) : super(key: key);

  @override
  State<ListeElemani> createState() => _ListeElemaniState();
}

class _ListeElemaniState extends State<ListeElemani> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                    image: AssetImage(widget.imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(widget.logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const FollowButton(),
      ],
    );
  }
}
