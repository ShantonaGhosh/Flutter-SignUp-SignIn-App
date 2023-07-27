 import 'package:flutter/material.dart';

AppBar customAppbar() {
    return AppBar(
      title: TextField(
        decoration: InputDecoration(hintText: 'Search'),
      ),
      actions: [
        SizedBox(
          width: 50,
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Badge(
              label: Text('2'),
              alignment: AlignmentDirectional.topStart,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 50,
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Badge(
              label: Text('2'),
              alignment: AlignmentDirectional.topStart,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
