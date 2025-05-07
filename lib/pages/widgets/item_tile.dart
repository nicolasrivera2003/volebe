import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showItemPage(context);
      },
      child: Container(
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
        child: Column(
          children: [
            Image.asset('assets/images/item1.png', height: 250, width: 250,),

            // Divider(color: Colors.grey),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Micrófono para celulares',
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, fontStyle: FontStyle.italic),
                        ),
                      ),
                      SizedBox(height: 3),

                      Text(
                        '\$2.99',
                        style: TextStyle(fontSize: 23),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CupertinoButton(
                      child: Icon(CupertinoIcons.heart, size: 30),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showItemPage(BuildContext context) {
    showModalBottomSheet(
      context: context,

      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/item1.png',
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  '\$210.58',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Este es un artículo de alta calidad perfecto para tus necesidades. Diseño moderno, durable y a un precio excelente.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Añadir al carrito',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Comprar ahora',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

}
