// To parse this JSON data, do
//
//     final pdtListModel = pdtListModelFromJson(jsonString);

import 'dart:convert';

PdtListModel pdtListModelFromJson(String str) => PdtListModel.fromJson(json.decode(str));

String pdtListModelToJson(PdtListModel data) => json.encode(data.toJson());

class PdtListModel {
    PdtListModel({
        this.pdtImage,
        this.pdtBrand,
        this.pdtName,
        this.orgPrice,
        this.disPrice,
        this.discount,
        this.offerPrice,
    });

    String? pdtImage;
    String? pdtBrand;
    String? pdtName;
    String? orgPrice;
    String? disPrice;
    String? discount;
    String? offerPrice;

    factory PdtListModel.fromJson(Map<String, dynamic> json) => PdtListModel(
        pdtImage: json["pdtImage"],
        pdtBrand: json["pdtBrand"],
        pdtName: json["pdtName"],
        orgPrice: json["orgPrice"],
        disPrice: json["disPrice"],
        discount: json["discount"],
        offerPrice: json["offerPrice"],
    );

    Map<String, dynamic> toJson() => {
        "pdtImage": pdtImage,
        "pdtBrand": pdtBrand,
        "pdtName": pdtName,
        "orgPrice": orgPrice,
        "disPrice": disPrice,
        "discount": discount,
        "offerPrice": offerPrice,
    };
}
