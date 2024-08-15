import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shop_app/categories_widget.dart';
import 'package:shop_app/widgets/category_grid_item.dart';
import 'package:shop_app/widgets/shop_grid_item.dart';
import 'package:shop_app/widgets/shop_list_widget.dart';
import 'package:shop_app/widgets/text_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'dart:async';
import 'package:shop_app/widgets/top_rated_shops.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final List<String> hintList = ["Headphones", "Jeans", "Milk", "Night Cream"];
  int currentIndex = 0;
  final TextEditingController _searchController = TextEditingController();
  late Timer timer;
  @override
  void _changeHint() {
    setState(() {
      currentIndex = (currentIndex + 1) % hintList.length;
    });
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _changeHint();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: MediaQuery.of(context).size.width * 0.1,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sector 37',
                        style: GoogleFonts.roboto(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const Icon(IconlyLight.arrowDown2),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sector 37A , Chandigarh , 160036',
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onTap: () {},
                    controller: _searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search for "${hintList[currentIndex]}" ',
                      prefixIcon: const Icon(IconlyLight.search),
                      suffixIcon: const Icon(Icons.mic),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Shop by category',
                        style: GoogleFonts.sourceSans3(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/beauty.png',
                        title: 'Beauty',
                        height: 70,
                        width: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/beverages.png',
                        title: 'Beverages',
                        height: 70,
                        width: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/electronics.png',
                        title: 'Electronics',
                        height: 70,
                        width: 80,
                      ),
                      // CategoryGridItem(onSelectCategory: (){}, image: 'assets/shop_images/Products/electronics.png', title: 'Electronics'),
                      //  SizedBox(width: 10,),
                      // CategoryGridItem(onSelectCategory: (){}, image: 'assets/shop_images/Products/fashion.png', title: 'Fashion'),
                    ],
                  ),
                  Row(
                    children: [
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/fashion.png',
                        title: 'Fashion',
                        height: 70,
                        width: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/food.png',
                        title: 'Food',
                        height: 70,
                        width: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/footwear.png',
                        title: 'Footwear',
                        height: 70,
                        width: 80,
                      ),
                      // CategoryGridItem(onSelectCategory: (){}, image: 'assets/shop_images/Products/electronics.png', title: 'Electronics'),
                      //  SizedBox(width: 10,),
                      // CategoryGridItem(onSelectCategory: (){}, image: 'assets/shop_images/Products/fashion.png', title: 'Fashion'),
                    ],
                  ),
                  Row(
                    children: [
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/groceries.png',
                        title: 'Groceries',
                        height: 70,
                        width: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/home.png',
                        title: 'Home',
                        height: 70,
                        width: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CategoryGridItem(
                        onSelectCategory: () {},
                        image: 'assets/shop_images/Products/kitchen.png',
                        title: 'Kitchen',
                        height: 70,
                        width: 80,
                      ),
                      // CategoryGridItem(onSelectCategory: (){}, image: 'assets/shop_images/Products/electronics.png', title: 'Electronics'),
                      //  SizedBox(width: 10,),
                      // CategoryGridItem(onSelectCategory: (){}, image: 'assets/shop_images/Products/fashion.png', title: 'Fashion'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Shop by Stores ',
                          style: GoogleFonts.sourceSans3(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ShopGridItem(
                          title: 'Stationary',
                          colors: [Color(0xffd4fc79), Color(0xff96e6a1)]),
                      SizedBox(
                        width: 20,
                      ),
                      ShopGridItem(
                          title: 'Health',
                          colors: [Color(0xfffccb90), Color(0xffd57eeb)]),
                      SizedBox(
                        width: 20,
                      ),
                      ShopGridItem(
                          title: 'Pet',
                          colors: [Color(0xff74ebd5), Color(0xff9face6)]),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ShopGridItem(
                          title: 'Kids',
                          colors: [Color(0xffff08449), Color(0xffffb199)]),
                      SizedBox(
                        width: 20,
                      ),
                      ShopGridItem(
                          title: 'Ice Cream',
                          colors: [Color(0xff5f72bd), Color(0xff9b23ea)]),
                      SizedBox(
                        width: 20,
                      ),
                      ShopGridItem(
                          title: 'Pooja',
                          colors: [Color(0xffff758c), Color(0xffff7eb3)]),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Top Rated Stores near you',
                        style: GoogleFonts.sourceSans3(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TopRatedShop(
                            title: 'Jhalandar Sweets',
                            subtitle: 'North Indian food,',
                            rating: '3.5',
                            time: '10'),
                        SizedBox(
                          width: 25,
                        ),
                        TopRatedShop(
                            title: 'Shop 2',
                            subtitle: 'subtitle',
                            rating: '4.4',
                            time: '24'),
                        SizedBox(
                          width: 25,
                        ),
                        TopRatedShop(
                            title: 'Shop 3',
                            subtitle: 'subtitle',
                            rating: '4.0',
                            time: '39'),
                        SizedBox(
                          width: 25,
                        ),
                        TopRatedShop(
                            title: 'Shop 4',
                            subtitle: 'subtitle',
                            rating: '3.9',
                            time: '21'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        'Explore Shops near you',
                        style: GoogleFonts.sourceSans3(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                        children: [
                          ShopListItem(title: 'Shop 1', subtitle: 'subtitle', rating: '3.9', time: '17')
                        ],
                      ),
                      SizedBox(height: 5,),
                  Row(
                        children: [
                          ShopListItem(title: 'Shop 2', subtitle: 'subtitle', rating: '3.7', time: '15')
                        ],
                      ),
                      SizedBox(height: 5,),
                  Row(
                        children: [
                          ShopListItem(title: 'Shop 3', subtitle: 'subtitle', rating: '4.1', time: '13')
                        ],
                      ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
