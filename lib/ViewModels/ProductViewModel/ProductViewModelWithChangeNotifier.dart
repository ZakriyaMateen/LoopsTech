import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


import '../../Models/ProductModels/ProductModel.dart';

class ItemViewModel extends ChangeNotifier {



  List<Product> items = [];

  Future<void> fetchItems() async {
    final url = 'https://cors-anywhere.herokuapp.com/https://loopstech.com/rest/v1/products.php';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      if (jsonData['code'] == 1) {
        final List<dynamic> data = jsonData['data'];
        items = data.map((item) => Product.fromJson(item)).toList();
      }
    }

    notifyListeners();
  }
}
