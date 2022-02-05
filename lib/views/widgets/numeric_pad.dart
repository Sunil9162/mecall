import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Widget numericPad({required BuildContext context}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.4,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).shadowColor,
          offset: const Offset(0, 10),
          spreadRadius: 10,
          blurRadius: 20,
        ),
      ],
    ),
    // lets separate call logs page
    // because of material this is happenig
    // while navigating to contact page we have to set floating button icon to adds
    child: Material(
      // done
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _number(number: 1, onTap: () {}, context: context),
              _number(number: 2, onTap: () {}, context: context),
              _number(number: 3, onTap: () {}, context: context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _number(number: 4, onTap: () {}, context: context),
              _number(number: 5, onTap: () {}, context: context),
              _number(number: 6, onTap: () {}, context: context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _number(number: 7, onTap: () {}, context: context),
              _number(number: 8, onTap: () {}, context: context),
              _number(number: 9, onTap: () {}, context: context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Text(
                  "*",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _number(number: 0, onTap: () {}, context: context),
              IconButton(
                onPressed: () {},
                icon: Text(
                  "#",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                color: Theme.of(context).textTheme.bodyText1!.color,
                icon: const Icon(Icons.dialpad_rounded),
              ),
              _number(number: 0, onTap: () {}, context: context),
              IconButton(
                onPressed: () {},
                color: Theme.of(context).textTheme.bodyText1!.color,
                icon: const Icon(Feather.delete),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

// now its good
// instead of direct container we will use animated positioned
// lets design numeric pad
// i hope you can see

Widget _number({
  required int number,
  required VoidCallback onTap,
  required BuildContext context,
}) {
  return IconButton(
    onPressed: () {},
    icon: Text(
      number.toString(),
      style: TextStyle(
        color: Theme.of(context).textTheme.bodyText1!.color,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

// we have made our numeric pad
