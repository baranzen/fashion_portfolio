import 'package:flutter/material.dart';
import 'package:woocommerce_ui/screens/details.dart';
import 'package:woocommerce_ui/widgets/my_home_page/kalp.dart';

myCard(context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: double.infinity, //! heigt auto
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/model1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 161,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Daisy',
                        style: TextStyle(
                            fontFamily: 'El',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '34 mins ago',
                        style: TextStyle(
                          fontFamily: 'El',
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 22,
                ),
              ],
            ),
            const SizedBox(height: 15),
            yazi(),
            const SizedBox(height: 15),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Details(
                          imgPath: 'assets/images/modelgrid1.jpeg',
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: 'assets/images/modelgrid1.jpeg',
                    child: Container(
                      height: 200,
                      width: (MediaQuery.of(context).size.width - 50) / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/modelgrid1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Details(
                              imgPath: 'assets/images/modelgrid2.jpeg',
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'assets/images/modelgrid2.jpeg',
                        child: Container(
                          height: 97.5,
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/modelgrid2.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Details(
                              imgPath: 'assets/images/modelgrid3.jpeg',
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'assets/images/modelgrid3.jpeg',
                        child: Container(
                          height: 97.5,
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/modelgrid3.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.brown.withOpacity(0.2),
                  ),
                  child: const Center(
                    child: Text(
                      '# Louis Vuitton',
                      style: TextStyle(
                        fontFamily: 'El',
                        color: Colors.brown,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.brown.withOpacity(0.2),
                  ),
                  child: const Center(
                    child: Text(
                      '# Chloe',
                      style: TextStyle(
                        fontFamily: 'El',
                        color: Colors.brown,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Icon(
                        Icons.reply,
                        color: Colors.brown.withOpacity(0.4),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '1.7k',
                        style: TextStyle(
                          fontFamily: 'El',
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.brown.withOpacity(0.4),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '325',
                        style: TextStyle(
                          fontFamily: 'El',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Kalp(),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '1.7k',
                        style: TextStyle(
                          fontFamily: 'El',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Text yazi() {
  String text =
      'This offocial website features a ribbed knit zipper jacket thatis modern and stylish, It look very temparament and is reccomment to friends';
  return Text(
    text,
    style: const TextStyle(
      fontSize: 13,
      fontFamily: 'El',
    ),
  );
}
