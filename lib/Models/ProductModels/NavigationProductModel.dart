import 'package:flutter/material.dart';

class NavigationProductModel {
  final String itemId;
  final String merchantId;
  final String itemName;
  final String itemDescription;
  final dynamic itemNameTrans;
  final dynamic itemDescriptionTrans;
  final String status;
  final String price;
  final String photo;
  final int discount;
  final dynamic dish;
  final String size;
  final String qtyForPrice;
  final dynamic promotionStartDate;
  final dynamic promotionEndDate;
  final String category;
  final String categoryName;
  final bool multiplePrice;
  final List<String> prices2;
  final bool addedAsFavorite;
  final String prices;
  final List<String> prices1;
  final String catId;
  final String dishImage;

  NavigationProductModel({
    required this.itemId,
    required this.merchantId,
    required this.itemName,
    required this.itemDescription,
    required this.itemNameTrans,
    required this.itemDescriptionTrans,
    required this.status,
    required this.price,
    required this.photo,
    required this.discount,
    required this.dish,
    required this.size,
    required this.qtyForPrice,
    required this.promotionStartDate,
    required this.promotionEndDate,
    required this.category,
    required this.categoryName,
    required this.multiplePrice,
    required this.prices2,
    required this.addedAsFavorite,
    required this.prices,
    required this.prices1,
    required this.catId,
    required this.dishImage,
  });
}