import 'package:flutter/material.dart';
import 'package:woocommerce_ui/widgets/my_home_page/card.dart';

import 'package:woocommerce_ui/widgets/my_home_page/liste_elemani.dart';

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //! PROFİL LİSTESİ
        SizedBox(
          height: 153, //! 3 px hata verdi 3 px arttirdim
          width: double.infinity,
          child: ListView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: [
              ListeElemani(
                'assets/images/model1.jpeg',
                'assets/images/chanellogo.jpg',
              ),
              const SizedBox(
                width: 20,
              ),
              ListeElemani(
                'assets/images/model2.jpeg',
                'assets/images/louisvuitton.jpg',
              ),
              const SizedBox(
                width: 20,
              ),
              ListeElemani(
                'assets/images/model3.jpeg',
                'assets/images/chloelogo.png',
              ),
              const SizedBox(
                width: 30,
              ),
              ListeElemani(
                'assets/images/model1.jpeg',
                'assets/images/chanellogo.jpg',
              ),
              const SizedBox(
                width: 20,
              ),
              ListeElemani(
                'assets/images/model2.jpeg',
                'assets/images/louisvuitton.jpg',
              ),
              const SizedBox(
                width: 20,
              ),
              ListeElemani(
                'assets/images/model3.jpeg',
                'assets/images/chloelogo.png',
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        //! CARD
        myCard(context),
      ],
    );
  }
}

//!
