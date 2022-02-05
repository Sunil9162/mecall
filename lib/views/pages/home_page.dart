import 'package:flutter/material.dart';
import 'package:mecall/constants/colors.dart';
import 'package:mecall/providers/appbar_title_provider.dart';
import 'package:mecall/providers/floating_button_provider.dart';
import 'package:mecall/views/pages/home_body.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Consumer<AppBarTitleProvider>(
              builder: (BuildContext context, value, Widget? child) => Text(
                value.getRTitle,
                style: TextStyle(
                  color: blackColors.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
              onSelected: (value) {
                // todo
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text(
                      "Block Contacts",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
      body: const HomeBody(),
    );
  }
}

// we will use function which return button position
// we dont want to change position on tap if contact page
// in this video we will see how to make numeric pad
// we wil use view pager 
// we have to do it in home body not here
// lets done this part next we will discuss and fix the button in next part

// Thanks for Watching
// we have left here in the previous video
// we will use two floating button 
// one for call and one for contact
// on second 

