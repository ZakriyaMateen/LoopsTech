import 'package:flutter/material.dart';
import 'package:loopstech/Constants/Color.dart';
import '../../Models/CategoryModels/CategoryModel.dart';
import '../../Utils/StyledText.dart';
import '../../ViewModels/CategoryViewModel/Functions.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {



  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors().backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: AppColors().backgroundColor,
        title:text('Category', AppColors().foregroundColor,FontWeight.bold, height*0.018)
      ),
      body:FutureBuilder<List<Category>>(
        future: fetchCategories(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final category = snapshot.data![index];
                return Padding(
                  padding:  EdgeInsets.only(left: index%2==0?width*0.05: width*0.025,right: index%2!=0?width*0.05: width*0.025,top: width*0.025,bottom:  width*0.025),
                  child: InkWell(
                    child: Material(
                        elevation: 7.4,
                        shadowColor: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        color: AppColors().foregroundColor,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors().foregroundColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Image.network(category.categoryPic,fit: BoxFit.cover,),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child:
                                   GridTileBar(title: text(category.categoryName, Colors.white,FontWeight.bold, height*0.017),
                                   backgroundColor: AppColors().backgroundColor,
                                   // subtitle:text(category.parentCatsId, Colors.white,FontWeight.bold, height*0.014)
                                   ),

                              )
                            ],
                          )
                        )
                    )
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Failed to fetch categories'),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}