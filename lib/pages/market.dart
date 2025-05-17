import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volebe_market/pages/widgets/item_tile.dart';
import 'add_item.dart';
import 'cart.dart';

class Market extends StatefulWidget {

  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xff42291A),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff42291A),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black,),
              title: Text('Home', style: TextStyle(color: Colors.black),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.black,),
              title: Text('Cart', style: TextStyle(color: Colors.black),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.picture_in_picture_outlined, color: Colors.black,),
              title: Text('Add item', style: TextStyle(color: Colors.black),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddItem()
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          // shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  child: Icon(
                    CupertinoIcons.bars,
                    color: Color(0xffDBB27E),
                    size: 30,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),

                CupertinoButton(
                  child: Icon(
                    CupertinoIcons.cart,
                    color:Color(0xffDBB27E),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()
                      ),
                    );
                  },
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
              child: Image.asset('assets/images/volebe_white.png', color: Color(0xffDBB27E),),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  'Market:',
                  style: TextStyle(
                    color: Color(0xffDBB27E),
                    fontSize: 20,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            ItemTile(),
            SizedBox(height: 15),
            ItemTile(),
            SizedBox(height: 15),
            ItemTile(),
            SizedBox(height: 15),
            // ItemTile(),
          ],
        ),
      ),
    );
  }
}
