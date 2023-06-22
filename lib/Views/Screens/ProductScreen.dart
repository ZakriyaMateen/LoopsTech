import 'package:flutter/material.dart';
import 'package:loopstech/Constants/Color.dart';
import 'package:loopstech/Utils/StyledText.dart';
import 'package:loopstech/ViewModels/ProductViewModel/ProductToggle.dart';
import 'package:provider/provider.dart';
import '../../ViewModels/ProductViewModel/ProductViewModelWithChangeNotifier.dart';
import '../../Widgets/ProductTable.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key, }) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ItemViewModel>(context, listen: false).fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors().backgroundColor,
      appBar: AppBar(
        title: text("Products",AppColors().foregroundColor,FontWeight.bold,height*0.019),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: AppColors().backgroundColor,
      ),
      body: Consumer<ItemViewModel>(
        builder: (context, itemViewModel, child) {
          if (itemViewModel.items.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          return Consumer<ProductToggle>(
            builder: (context,productToggel,child){
              return ListView.builder(
                itemCount: itemViewModel.items.length,
                itemBuilder: (context, index) {
                  final item = itemViewModel.items[index];
                  return  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width*0.05,vertical: height*0.015 ),
                    child: Material(
                        elevation: 4.2,

                        borderRadius: BorderRadius.circular(15.0),
                        child:Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: height*0.015),
                              decoration: BoxDecoration(
                                color: AppColors().cardColor,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(200),
                                    elevation: 4.4,

                                    child: ClipRRect(

                                        child: Image.network(
                                          width: height*0.07,
                                          height: height*0.07,
                                          item.photo,
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(200)

                                    ),
                                  ),
                                  SizedBox(height: height*0.015,),

                                  returnTable(item, width, height, productToggel.selectedIndices.contains(index)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          productToggel.selectedIndices.contains(index) ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                                        ),
                                        onPressed: () {
                                          productToggel.toggleSelection(index);
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          
                          ],
                        )
                    ),
                  );

                },
              );
            },
          );
        },
      ),
    );
  }


}
