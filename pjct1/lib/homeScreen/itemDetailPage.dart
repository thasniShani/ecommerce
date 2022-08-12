import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pjct1/homeScreen/listModel.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({Key? key, required this.productDetail})
      : super(key: key);
  final PdtListModel productDetail;

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.productDetail.pdtImage!,
                ),
                Text(
                  widget.productDetail.pdtBrand!,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(widget.productDetail.pdtName!,
                    style: const TextStyle(fontSize: 12)),
                Row(
                  children: [
                    const Icon(
                      Icons.currency_rupee,
                      size: 12,
                    ),
                    Text(
                      widget.productDetail.orgPrice!,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.currency_rupee,
                      size: 12,
                    ),
                    Text(
                      widget.productDetail.disPrice!,
                      style: const TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text('${widget.productDetail.discount!} off',
                        style: const TextStyle(fontSize: 12, color: Colors.red))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Fabric choices, openings and fastenings, fit and ease, trimmings used are all major considerations when designing children  wear. Some other factors a designer designing for children  clothing should focus on are the changing shape of the growing kid and different proportions of the different parts of the body.',
                  style: TextStyle(fontSize: 12),
                ),
                listicons(
                    text: 'Delivery Details',
                    textbutton: 'Check delivery date'),
                listicons(text: 'Bank Offers', textbutton: 'more'),
                listicons(text: 'Product Details', textbutton: 'more'),
                Row(
                  children: [
                    const SizedBox(
                      width: 28,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: const Icon(
                          Icons.share,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      width: 28,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: const Icon(
                          CupertinoIcons.heart,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      width: 28,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blueGrey),
                        child: Row(
                          children: const [
                            Icon(Icons.shopping_bag),
                            Text('Add to bag')
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listicons({String? text, String? textbutton}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 20.0,
        shadowColor: Colors.white70,
        borderOnForeground: true,
        child: ListTile(
            onTap: () {},
            selected: true,
            selectedTileColor: Colors.white,
            leading: Text(
              text!,
              style: const TextStyle(color: Colors.black),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: Text(textbutton!),
            )),
      ),
    );
  }
}
