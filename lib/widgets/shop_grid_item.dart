import 'package:flutter/material.dart';

class ShopGridItem extends StatelessWidget {
  final String title;
  final List<Color> colors;
  const ShopGridItem({super.key, required this.title, required this.colors,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:MediaQuery.of(context).size.width*0.26,
          width:MediaQuery.of(context).size.width*0.26,
          child: InkWell(
            onTap:(){},
            splashColor: Colors.grey,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              padding:const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
               gradient: LinearGradient(colors: colors)
                 
                  ),
                  child: Column(
                    children: [
                    //  Image.asset('assets/shop_images/Products/fashion.png',height: 55,width: 50,),
                      SizedBox(height: 1,),
                      
                    ],
                  ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(title,
                      style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),
                      ),
                      // SizedBox(height: 1,),
        Text('Store',
                      style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),
                      ),
                      
      ],
    );
  }
}