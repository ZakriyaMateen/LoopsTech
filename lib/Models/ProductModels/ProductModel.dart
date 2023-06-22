class Product {
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

  Product({
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

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    itemId: json["item_id"],
    merchantId: json["merchant_id"],
    itemName: json["item_name"],
    itemDescription: json["item_description"],
    itemNameTrans: json["item_name_trans"],
    itemDescriptionTrans: json["item_description_trans"],
    status: json["status"],
    price: json["price"],
    photo: json["photo"],
    discount: json["discount"],
    dish: json["dish"],
    size: json["size"],
    qtyForPrice: json["qty_for_price"],
    promotionStartDate: json["promotion_start_date"],
    promotionEndDate: json["promotion_end_date"],
    category: json["category"],
    categoryName: json["categoryName"],
    multiplePrice: json["multiple_price"],
    prices2: List<String>.from(json["prices2"].map((x) => x)),
    addedAsFavorite: json["added_as_favorite"],
    prices: json["prices"],
    prices1: List<String>.from(json["prices1"].map((x) => x)),
    catId: json["cat_id"],
    dishImage: json["dish_image"],
  );

  Map<String, dynamic> toJson() => {
    "item_id": itemId,
    "merchant_id": merchantId,
    "item_name": itemName,
    "item_description": itemDescription,
    "item_name_trans": itemNameTrans,
    "item_description_trans": itemDescriptionTrans,
    "status": status,
    "price": price,
    "photo": photo,
    "discount": discount,
    "dish": dish,
    "size": size,
    "qty_for_price": qtyForPrice,
    "promotion_start_date": promotionStartDate,
    "promotion_end_date": promotionEndDate,
    "category": category,
    "categoryName": categoryName,
    "multiple_price": multiplePrice,
    "prices2": List<dynamic>.from(prices2.map((x) => x)),
    "added_as_favorite": addedAsFavorite,
    "prices": prices,
    "prices1": List<dynamic>.from(prices1.map((x) => x)),
    "cat_id": catId,
    "dish_image": dishImage,
  };
}