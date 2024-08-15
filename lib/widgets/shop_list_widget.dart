import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rating;
  final String time;
  const ShopListItem({super.key, required this.title, required this.subtitle, required this.rating, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.4,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffa1c4fd),
                        Color(0xffc2e9fb),
                      ],
                    ),
                  ),
                  // child: Column(
                  //   children: [
                  //   //  Image.asset('assets/shop_images/Products/fashion.png',height: 55,width: 50,),
                  //     SizedBox(height: 1,),

                  //   ],
                  // ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  ' - ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '$time mins',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            )
          ],
        ),
          ],
        ),
        
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
