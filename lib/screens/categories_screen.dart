import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      //For recyclerview use grid builder
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(catData.id, catData.title, catData.color),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //Scrollable area in the screen // Structruing the grid
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2, //if 200 width we get 300 height
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
