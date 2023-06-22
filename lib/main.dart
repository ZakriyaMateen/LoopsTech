import 'package:flutter/material.dart';
import 'package:loopstech/Utils/BottomNavBar.dart';
import 'package:loopstech/ViewModels/ProductViewModel/ProductToggle.dart';
import 'package:loopstech/Views/Screens/CategoryScreen.dart';
import 'package:loopstech/Views/Screens/ProductScreen.dart';
import 'package:provider/provider.dart';

import 'ViewModels/ProductViewModel/ProductViewModelWithChangeNotifier.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ItemViewModel>(create: (_) => ItemViewModel()),
      ChangeNotifierProvider<ProductToggle>(create: (_) => ProductToggle()),

    ],child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BottomNavBar(),
    ),);
  }
}


