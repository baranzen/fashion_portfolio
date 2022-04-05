import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imgPath;
  Details({required this.imgPath, Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 25,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.3,
                              ),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/dress.jpg',
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'LAMINATED',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'El',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Louis Vuitton',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'El',
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: 30,
                                width: MediaQuery.of(context).size.width - 177,
                                child: const Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'El',
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(thickness: 1),
                      const SizedBox(height: 10),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                            child: Text(
                              '\$ 6500',
                              style: TextStyle(
                                fontFamily: 'El',
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                ),
                                backgroundColor: Colors.brown,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
