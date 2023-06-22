import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../Models/CategoryModels/CategoryModel.dart';

Future<List<Category>> fetchCategories() async {
  try {
    final response = await http.get(Uri.parse('https://cors-anywhere.herokuapp.com/https://loopstech.com/rest/v1/categories.php'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<dynamic> categoryList = jsonData['data'];
      return categoryList.map((categoryJson) => Category.fromJson(categoryJson)).toList();
    } else {
      throw Exception('Failed to fetch categories');
    }
  }catch (e) {
    throw Exception('An error occurred: $e');
  }
}
