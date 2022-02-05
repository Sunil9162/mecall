import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

class SingleContactItem extends StatelessWidget {
  final Contact contact;
  const SingleContactItem({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: contact.photo != null
                ? MemoryImage(contact.photo ?? Uint8List(0))
                : null,
            child: contact.photo == null
                ? Text(contact.displayName.substring(0, 1))
                : null,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contact.displayName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                Text(contact.id),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// i am not going to show numbers here you can show 
// we have fetched all contacts from the phone and showed them in list
// next we will discuss in next video 
// Thanks for watching
// one more tip i am going to give you my source code if you are getting any error
// you can check the source code and see if you can find the error
// uploading on github
// commited code you can now check i will give you link in description
// Thanks for watching
 // have a good day