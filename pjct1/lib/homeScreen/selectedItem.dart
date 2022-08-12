import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pjct1/homeScreen/listModel.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({Key? key, required this.itemDetails}) : super(key: key);
  final PdtListModel itemDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_back),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(CupertinoIcons.heart),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(
                  itemDetails.pdtImage!,
                ),
                Text(
                  itemDetails.pdtBrand!,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(itemDetails.pdtName!,
                    style: const TextStyle(fontSize: 12)),
                Row(
                  children: [
                    const Icon(Icons.currency_rupee),
                    Text(
                      itemDetails.orgPrice!,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(Icons.currency_rupee),
                    Text(
                      itemDetails.disPrice!,
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      itemDetails.discount!,
                      style: const TextStyle(fontSize: 10, color: Colors.red),
                    ),
                  ],
                ),
                const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            ListTile(
              leading: const Text(
                'Delivery Details',
                style: TextStyle(fontSize: 12),
              ),
              trailing: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Check deliver date',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: const Text(
                'Bank Offers',
                style: TextStyle(fontSize: 12),
              ),
              trailing: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'more',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: const Text(
                'Product Details',
                style: TextStyle(fontSize: 12),
              ),
              trailing: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'more',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.share)),
                const SizedBox(width: 3),
                ElevatedButton(
                    onPressed: () {}, child: const Icon(CupertinoIcons.heart)),
                const SizedBox(width: 3),
                ElevatedButton(
                    onPressed: () {},
                    // style:ButtonStyle(
                    //   backgroundColor: Colors.grey,
                    // ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.shopping_bag,
                        ), //color: Colors.white,),
                        Text(
                          'Add to bag',
                        ), //style:TextStyle(color: Colors.white) ,)
                      ],
                    )),
                const SizedBox(width: 3),
              ],
            )
          ],
        ),
      ),
    );
  }
}
