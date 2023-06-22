class Category {
  final String mainCat;
  final String parentCatsId;
  final String catId;
  final String subCatId;
  final String categoryName;
  final String categoryDescription;
  final String categoryPic;

  Category({
    required this.mainCat,
    required this.parentCatsId,
    required this.catId,
    required this.subCatId,
    required this.categoryName,
    required this.categoryDescription,
    required this.categoryPic,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      mainCat: json['main_cat'],
      parentCatsId: json['parent_cats_id'],
      catId: json['cat_id'],
      subCatId: json['sub_cat_id'],
      categoryName: json['category_name'],
      categoryDescription: json['category_description'],
      categoryPic: json['category_pic'],
    );
  }
}
