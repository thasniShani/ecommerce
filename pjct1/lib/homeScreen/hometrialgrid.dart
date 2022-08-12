import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeTiles extends StatelessWidget {
  const HomeTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 15,
        mainAxisSpacing: 2,
        childAspectRatio: 2 / 4,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Image(
                  image: AssetImage(
                    'assets/images/blue.jpeg',
                  ),
                  fit: BoxFit.fill,
                ),
                const Text(
                  'Nyka fashion',
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'Benetton Solid Blue Dresses',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.currency_rupee,
                      size: 10,
                    ),
                    Text(
                      '384  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.grey,
                      size: 10,
                    ),
                    Text(
                      '549',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 10,
                          color: Colors.grey),
                    ),
                    Text(
                      '  30%off',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_offer,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      'Offer Price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      '275',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/pinkandwhite.jpeg'),
                  fit: BoxFit.fill,
                ),
                const Text(
                  'FirstCry',
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'UCB half sleeves cotton striped tshirt-pink&white',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.currency_rupee,
                      size: 10,
                    ),
                    Text(
                      '396  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.grey,
                      size: 10,
                    ),
                    Text(
                      '699',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 10,
                          color: Colors.grey),
                    ),
                    Text(
                      '  49%off',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_offer,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      'Offer Price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      '350',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/multicolor.jpeg'),
                  fit: BoxFit.fill,
                ),
                const Text(
                  'BabyHug',
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'Half sleeves Cotton striped polo tshirt-multicolor',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.currency_rupee,
                      size: 10,
                    ),
                    Text(
                      '274  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.grey,
                      size: 10,
                    ),
                    Text(
                      '499',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 10,
                          color: Colors.grey),
                    ),
                    Text(
                      '  45%off',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_offer,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      'Offer Price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      '250',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/disney.jpeg'),
                  fit: BoxFit.fill,
                ),
                const Text(
                  'Disney Collections',
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'Mickey mouse kids tshirt-yellow',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.currency_rupee,
                      size: 10,
                    ),
                    Text(
                      '686 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.grey,
                      size: 10,
                    ),
                    Text(
                      '1399',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 10,
                          color: Colors.grey),
                    ),
                    Text(
                      '  51%off',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_offer,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      'Offer Price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.green,
                      size: 10,
                    ),
                    Text(
                      '560',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.green),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
