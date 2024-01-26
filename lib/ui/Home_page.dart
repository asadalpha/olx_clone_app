import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:olx_clone/modals/widgets.dart';
import 'package:olx_clone/ui/Chat_page.dart';
import 'package:olx_clone/ui/my_account.dart';
import 'package:olx_clone/ui/product_page.dart';
import 'package:olx_clone/ui/products_list_homepage.dart';
import 'package:olx_clone/ui/sell_products.dart';
import 'package:olx_clone/ui/wishlist.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Widget> pages = [
    ProductsList(),
    ChatScreen(),
    SellProducts(),
    Wishlist(),
    MyAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentPage,
          children: pages,
        ),
        // bottom nav bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(218, 226, 235, 1),
          iconSize: 35,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          onTap: (value) {
            // here value is the index of the icon clicked in the navigation bar
            setState(() {
              currentPage = value;
            });
          },
          currentIndex: currentPage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Color.fromRGBO(154, 184, 210, 1),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                size: 30,
                color: Color.fromRGBO(154, 184, 210, 1),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 30,
                color: Color.fromRGBO(154, 184, 210, 1),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: Color.fromRGBO(154, 184, 210, 1),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
                color: Color.fromRGBO(154, 184, 210, 1),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
