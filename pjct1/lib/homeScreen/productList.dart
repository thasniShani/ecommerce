import 'package:flutter/material.dart';
import 'package:pjct1/homeScreen/ProductDetails.dart';
import 'package:pjct1/homeScreen/listModel.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<PdtListModel> pdtList = [
    PdtListModel(
      pdtImage: 'assets/images/multicolor.jpeg',
      pdtBrand: 'BabyHug',
      pdtName: 'Half sleeves Cotton Striped polo T-shirt-multicolor',
      orgPrice: '699',
      discount: '49%',
      disPrice: '396',
      offerPrice: '350',
    ),
    PdtListModel(
      pdtImage: 'assets/images/pinkandwhite.jpeg',
      pdtBrand: 'FirstCry',
      pdtName: 'UCB half sleeves cotton striped T-shirt - pink&white ',
      orgPrice: '686',
      discount: '51%',
      disPrice: '1399',
      offerPrice: '560',
    ),
    PdtListModel(
      pdtImage: 'assets/images/pink.jpeg',
      pdtBrand: 'BabyHug',
      pdtName: ' Full Sleeves Hooded Sweat Jacket Fox Design - Pink',
      orgPrice: '1384',
      discount: '30%',
      disPrice: '1549',
      offerPrice: '1275',
    ),
    PdtListModel(
      pdtImage: 'assets/images/mck.jpeg',
      pdtBrand: 'BabyHug',
      pdtName: 'Full Sleeves Sweatshirt Mickey Mouse Print - Red',
      orgPrice: '1274',
      discount: '45%',
      disPrice: '1499',
      offerPrice: '1250',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 4,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return PdtDetails(
            pdtData: pdtList[index],
          );
        },
      ),
    );
  }
}
