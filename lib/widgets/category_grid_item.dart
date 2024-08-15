import 'package:flutter/material.dart';
// import 'package:nav_app/models/category.dart';

class CategoryGridItem extends StatelessWidget{
  const CategoryGridItem({super.key,  required this.onSelectCategory,required this.image,required this.title,required this.height,required this.width});

  // final Category category;
  final String image;
  final String title;
  final double height;
  final double width;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:MediaQuery.of(context).size.width*0.26,
          width:MediaQuery.of(context).size.width*0.26,
          child: InkWell(
            onTap:onSelectCategory,
            splashColor: Colors.grey,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              padding:const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [
                  Color(0xffa1c4fd),
                  Color(0xffc2e9fb),
                ])
                 
                  ),
                  child: Column(
                    children: [
                      Image.asset(image,height:height ,width:width,)
                      
                    ],
                  ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Text(title,
                      style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),
                      ),
                       SizedBox(height: 10,),
      ],
    );
  }
}