import 'package:flutter/material.dart';
import 'package:pjct1/homeScreen/itemDetailPage.dart';
import 'package:pjct1/homeScreen/listModel.dart';
import 'package:pjct1/homeScreen/productlist.dart';
import 'package:pjct1/homeScreen/selectedItem.dart';

class PdtDetails extends StatelessWidget {
  const PdtDetails({Key? key, required this.pdtData}) : super(key: key);
  final PdtListModel pdtData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ItemDetailPage(productDetail: pdtData)));
        }),
        child: Card(
          child: Column(
            children: [
              Container(
                child: Image.asset(pdtData.pdtImage!),
              ),
              const SizedBox(height: 10.0),
              Text(
                pdtData.pdtBrand!,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                pdtData.pdtName!,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.currency_rupee,
                    size: 12,
                  ),
                  Text(
                    pdtData.orgPrice!,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 3),
                  const Icon(
                    Icons.currency_rupee,
                    size: 12,
                  ),
                  Text(
                    pdtData.disPrice!,
                    style: const TextStyle(
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    pdtData.discount!,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.discount,
                    size: 10,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Offer price is ${pdtData.offerPrice!} ",
                    style: const TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
