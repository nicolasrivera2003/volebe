import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            title: Text('Add Item', style: TextStyle(color: Colors.white)),
            leading: CupertinoButton(
              child: Icon(CupertinoIcons.back, size: 25, color: Colors.white,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListView(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                SizedBox(height: 20),

                picHolder(),
                SizedBox(height: 10),
                nameField(),
                SizedBox(height: 10),
                descriptionField(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    priceField(),
                    stockField()
                  ],
                ),
              ],
            ),
          ),
        ),
        buttons(),
      ],
    );
  }

  Widget picHolder() {
    return Container(
      height: 300,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.camera, size: 50, color: Colors.grey),
            Text('Add Picture'),
          ],
        ),
      ),
    );
  }

  Widget nameField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Name',
      ),

    );
  }

  Widget descriptionField() {
    return TextField(
      minLines: 3,
      maxLines: 10,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Description',
      ),
    );
  }

  Widget priceField() {
    return SizedBox(
      width: 175,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Price',
        ),
      ),
    );
  }

  Widget stockField() {
    return SizedBox(
      width: 175,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Stock',
        ),
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
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
                  'Cancel',
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
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
                  'Save',
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
