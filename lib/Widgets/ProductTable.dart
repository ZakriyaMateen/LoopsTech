import 'package:flutter/material.dart';
import 'package:loopstech/Models/ProductModels/NavigationProductModel.dart';

import '../Constants/Color.dart';
import '../Models/ProductModels/ProductModel.dart';
import '../Utils/StyledText.dart';

Table returnTable(Product item,double width,double height, bool val){
  return      Table(
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    border: TableBorder.all(color: AppColors().borderColor,borderRadius: BorderRadius.circular(15.0),width: 1.2),
    children: [
      TableRow(

          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Item ID ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item.itemId, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ),

      TableRow(
          children:[

            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Category Id ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item.catId, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ),

      TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Category ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item.category, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ),

      TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Category Name ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .categoryName, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ),

      val ?    TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Price ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCell(child: text(item .price, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      )    : TableRow(children: <Widget>[Container() as Widget,Container()]), // Return an empty TableRow



      val ?           TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Prices ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .prices, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      )   : TableRow(children: <Widget>[Container() as Widget,Container()]),

      val ?       TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Qty. for Price ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .qtyForPrice, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      )   : TableRow(children: <Widget>[Container() as Widget,Container()]),


      val?     TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Status ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item.status , AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      )   : TableRow(children: <Widget>[Container() as Widget,Container()]),

      val ?    TableRow(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCell(child:text("Item Description ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .itemDescription, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      )   : TableRow(children: <Widget>[Container() as Widget,Container()]),

      val ?       TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Item Name ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .itemName, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      )   : TableRow(children: <Widget>[Container() as Widget,Container()]),

      val ?   TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Merchant Id  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .merchantId, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ): TableRow(children: <Widget>[Container() as Widget,Container()]),

      val ?   TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Size  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .size, AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      )   : TableRow(children: <Widget>[Container() as Widget,Container()]),

      val ?    TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Low Price ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .prices1[0], AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ): TableRow(children: <Widget>[Container() as Widget,Container()]),

      val ?      TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("High Price  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .prices2[0], AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ): TableRow(children: <Widget>[Container() as Widget,Container()]),
      val ?       TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Added as Favorite", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .addedAsFavorite.toString(), AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ): TableRow(children: <Widget>[Container() as Widget,Container()]),      val ?   TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Multiple Price  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .multiplePrice.toString() , AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ): TableRow(children: <Widget>[Container() as Widget,Container()]),    val ?     TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Discount  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .discount.toStringAsFixed(2), AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ): TableRow(children: <Widget>[Container() as Widget,Container()]),       val ?   TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Promotion Start Date  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .promotionStartDate??"Coming Soon", AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ):TableRow(children: <Widget>[Container() as Widget,Container()]),      val ?   TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Promotion End Date  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .promotionEndDate??"Coming Soon", AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ):TableRow(children: <Widget>[Container() as Widget,Container()]),      val ?   TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Dish  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .dish??"Coming Soon", AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ):TableRow(children: <Widget>[Container() as Widget,Container()]),      val ?   TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Description Translation ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item.itemDescriptionTrans??"Coming Soon", AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ):TableRow(children: <Widget>[Container() as Widget,Container()]),    val ?     TableRow(
          children:[
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child:text("Item Name Translation  ", AppColors().foregroundColor, FontWeight.bold,height*0.018)
                , ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.02),
              child: TableCell(child: text(item .itemNameTrans??"Coming Soon", AppColors().foregroundColor,FontWeight.normal, height*0.018),),
            ),
          ]
      ):TableRow(children: <Widget>[Container() as Widget,Container()]),



    ],
  );
}