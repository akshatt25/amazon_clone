import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: GlobalVariables.categoryImages.length,
          itemExtent: 80,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariables.categoryImages[index]['image']!,
                      fit: BoxFit.cover,
                      width: 50,
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    GlobalVariables.categoryImages[index]['title']!,
                    style: TextStyle(fontSize: 13),
                  ),
                )
              ],
            );
          }),
    );
  }
}
