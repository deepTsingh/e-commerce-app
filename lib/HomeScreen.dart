import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/BottomNavBar.dart';
import 'package:shop_app/ProductsScreen.dart';
import 'package:shop_app/ProfileScreen.dart';
import 'package:shop_app/ServicesScreen.dart';
import '';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _carouselIndex = 0; // Index for the currently selected tab
  int _bottomNavBarIndex = 0; // Index for the currently selected tab

  // final List<Widget> _tabs = [
  //   // Define your screens for each tab here
  //   // For example: HomeScreen(), ShopScreen(), ProfileScreen()
  //   const Center(child: Text('Home')),
  //   const Center(child: Text('Products')),
  //   const Center(child: Text('Services')),
  //   const Center(child: Text('Profile')),
  // ];

  // List of screens corresponding to each tab
  final List<Widget> _screens = [
    HomeScreen(),
    ProductsScreen(),
    ServicesScreen(),
    ProfileScreen(),
  ];

  // PageController for managing the page navigation
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  backgroundColor: Colors.white,
      //  elevation: 0.0,

      // ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
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
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search for "Earphones" ',
                    prefixIcon: const Icon(IconlyLight.search),
                    suffixIcon: const Icon(Icons.mic),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselSlider(
                      items: [
                        ShopTemplate(
                          imageUrl: 'assets/shop_images/grocery.jpg',
                        ),
                        ShopTemplate(
                          imageUrl: 'assets/shop_images/Chinese.jpg',
                        ),
                        ShopTemplate(
                          imageUrl: 'assets/shop_images/electronics.jpg',
                        ),
                        ShopTemplate(
                          imageUrl: 'assets/shop_images/FoodandDrink.jpg',
                        ),
                        ShopTemplate(
                          imageUrl: 'assets/shop_images/beauty.jpg',
                        ),
                        ShopTemplate(
                          imageUrl: 'assets/shop_images/fastFood.jpg',
                        ),
                        ShopTemplate(
                            imageUrl:
                                'assets/shop_images/HairSalonService.jpg'),
                        ShopTemplate(
                          imageUrl: 'assets/shop_images/beauty.jpg',
                        ),
                        // Add more shop templates here
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        enlargeCenterPage: true, // Make the center item larger
                        viewportFraction: 1.0, // Fit entire width of the screen
                        enableInfiniteScroll: false, // Disable infinite scroll
                        onPageChanged: (index, reason) {
                          setState(() {
                            _carouselIndex = index;
                          });
                        },
                      ),
                    ),
                    // Indicators (circles)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        8,
                        (index) => Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _carouselIndex == index
                                ? Colors.blue
                                : Colors
                                    .grey, // Change the color of the selected indicator
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          height: MediaQuery.of(context).size.width * 0.4,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Material(
                            child: InkWell(
                              onTap: () {},
                              splashColor: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  // color: Color(0xffebedee),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffc3cfe2),
                                      Color(0xfff5f7fa),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'ORDER PRODUCTS',
                                          style: GoogleFonts.teko(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'FROM NEARBY SHOPS',
                                          style: GoogleFonts.teko(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'IN YOUR AREA !',
                                          style: GoogleFonts.teko(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.14,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.14,
                                            child: Image.asset(
                                                'assets/shop_images/Products/footwear.png'))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          height: MediaQuery.of(context).size.width * 0.4,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Material(
                            child: InkWell(
                              onTap: () {},
                              splashColor: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  // color: Color(0xffebedee),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffc3cfe2),
                                      Color(0xfff5f7fa),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'AVAIL SERVICES',
                                          style: GoogleFonts.teko(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'FROM NEARBY SERVICE',
                                          style: GoogleFonts.teko(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'PROVIDERS',
                                          style: GoogleFonts.teko(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.14,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.14,
                                            // child: Image.asset(
                                            //     'assets/shop_images/Products/food.png'),
                                            )
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 100,),
                          Row(
                            children: [
                              Text('Sleep',
                              style: GoogleFonts.outfit(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('Order',
                              style: GoogleFonts.outfit(
                                fontSize: 80,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 20,),
                              Icon(Icons.phone,size: MediaQuery.of(context).size.width*0.12,color: Colors.blue,)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('Repeat',
                              style: GoogleFonts.outfit(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(width: 20,),
                              // Icon(Icons.undo,size: MediaQuery.of(context).size.width*0.1,)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _bottomNavBarIndex = index;
    });
  }
}

class ShopTemplate extends StatelessWidget {
  final String imageUrl;

  ShopTemplate({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0), // Add padding around the image
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), // Add rounded corners
      ),
      child: AspectRatio(
        aspectRatio: 16 / 9, // Set the aspect ratio to match the carousel
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(10.0), // Add rounded corners to the image
          child: Image.asset(
            imageUrl,
            fit: BoxFit
                .cover, // Cover the entire container while maintaining aspect ratio
          ),
        ),
      ),
    );
  }
}

class SpecialEventSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can customize the special event section here
    return Container(
      color: Colors.blue, // Change the background color
      padding: const EdgeInsets.all(16.0), // Add padding
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Special Event Section',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Change the text color
            ),
          ),
          SizedBox(height: 8.0), // Add spacing
          Text(
            'Upcoming Festivals and Special Events',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white, // Change the text color
            ),
          ),
          // Add festival or event information here
        ],
      ),
    );
  }
}
