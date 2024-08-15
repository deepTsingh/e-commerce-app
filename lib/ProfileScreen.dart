import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _addressTextController =
      TextEditingController(text: "");
  @override
  void dispose() {
    _addressTextController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                    text: 'Hi  ',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'User',
                        style: TextStyle(
                            color: Color.fromARGB(176, 0, 0, 0),
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
              const Text('myemail@email.com',
                  style: TextStyle(
                    fontSize: 22,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              _listTiles(
                  title: 'Address',
                  subtitle: 'My Address',
                  icon: IconlyLight.user2,
                  onPressed: () async {
                    await _showAddressDialog();
                  }),
              _listTiles(
                  title: 'My Orders', icon: IconlyLight.bag, onPressed: () {}),
              _listTiles(
                  title: 'Wishlist', icon: IconlyLight.heart, onPressed: () {}),
              _listTiles(
                  title: 'Forgot Password',
                  icon: IconlyLight.unlock,
                  onPressed: () {}),
              _listTiles(
                  title: 'Logout', icon: IconlyLight.logout, onPressed: () async{
                    await _showLogoutDialog();
                  }),
            ],
          ),
        ),
      ),
    ));
  }

  Future<void> _showLogoutDialog()async{
    await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Row(children: [
          Image.asset('assets/shop_images/alert.webp',height: 20,width: 20,fit: BoxFit.fill,),
          const SizedBox(width: 10,),
          const Text('Log Out'),
          
        ]),
        content: const Text('Do you want to log out?'),
        actions: [
          TextButton(onPressed: (){
            if (Navigator.canPop(context)){
              Navigator.pop(context);
            }
          }, child: const Text('Cancel'),),
          TextButton(onPressed: (){}, child: const Text('OK'),),
        ],
      );
    });
  }

  Future<void> _showAddressDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Update'),
            content: TextField(
              onChanged: (value) {
                // _addressTextController.text;
              },
              controller: _addressTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "Your Address"),
            ),
            actions: [
              TextButton(onPressed: () {}, child: const Text('Update'))
            ],
          );
        });
  }

  Widget _listTiles({
    required String title,
    String? subtitle,
    required IconData icon,
    required Function onPressed,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
      subtitle: Text(subtitle == null ? "" : subtitle),
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }
}
