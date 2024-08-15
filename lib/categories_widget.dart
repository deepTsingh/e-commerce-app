import 'package:flutter/material.dart';
import 'package:shop_app/widgets/text_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.blue.withOpacity(0.7),
              width: 2,
            )),
        child: Column(
          children: [
            Container(
              height: _screenWidth * 0.3,
              width: _screenWidth * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/shop_images/Products/food.png'), fit: BoxFit.fill)),
            ),
            const TextWidget(text: 'Food', color: Colors.black, textSize: 20)
          ],
        ),
      ),
    );
  }
}
