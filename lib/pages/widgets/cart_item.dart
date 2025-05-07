import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.75),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/item1.png',
                height: 100,
                width: 100,
              ),
            ),
          ),

          SizedBox(
            width: 190,
            child: Text(
              'Micrófono para celulares',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          CupertinoButton(child: Icon(CupertinoIcons.trash, color: Colors.red,), onPressed: (){})
        ],
      ),
    );
  }
}
