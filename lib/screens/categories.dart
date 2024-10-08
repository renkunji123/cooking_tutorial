import 'package:cooking_guide/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';
import '../data/data_dummy.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Pick Category'),
     ),
     body: GridView(
       padding: const EdgeInsets.all(10),
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
         childAspectRatio: 3/2,
         crossAxisSpacing: 20,
         mainAxisSpacing: 20,),
       children: [
         for (
            final category in availableCategories
         )
           CategoryGridItem(category: category)
       ],
     )
   );
  }

}