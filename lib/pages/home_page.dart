import 'package:ecom/components/bottom_navbar.dart';
import 'package:ecom/pages/cart_page.dart';
import 'package:ecom/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected index
  int _selectedIndex = 0;

  void navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottombar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
              color: Colors.black,
            ),
          )),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/images/nikelogo.png',
                  color: Colors.white,
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                //other pages
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                title: Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
