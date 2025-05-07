import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volebe_market/pages/widgets/cart_item.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListView(
              children: [
                top(),
                SizedBox(height: 10),
                title(),
                SizedBox(height: 10),
                totalPrice(),
                SizedBox(height: 20),

                CartItem(),
                SizedBox(height: 20),
                CartItem(),
                SizedBox(height: 20),
                CartItem(),
                SizedBox(height: 20),
                CartItem(),
                SizedBox(height: 20),
                CartItem(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),

        buttons(),
      ],
    );
  }

  Widget top() {
    return Row(
      children: [
        CupertinoButton(
          child: Icon(CupertinoIcons.back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Widget title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        'Cart',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget totalPrice() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Total:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 10),

          Text(
            '\$210.58',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget buttons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade700,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.75),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Continue\nshopping',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),

            Container(
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff28a12c),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.75),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Pay now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
