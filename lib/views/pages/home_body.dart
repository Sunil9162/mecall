import 'package:flutter/material.dart';
import 'package:mecall/providers/appbar_title_provider.dart';
import 'package:mecall/providers/floating_button_provider.dart';
import 'package:mecall/views/pages/call_logs_page.dart';
import 'package:mecall/views/pages/contact_page.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            indicator: UnderlineTabIndicator(
              insets: const EdgeInsets.symmetric(horizontal: 80),
              // its looking good
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                child: Icon(
                  Icons.call,
                ),
              ),
              Tab(
                child: Icon(Icons.person),
              ),
            ],
            onTap: (int page) {
              setState(() {
                final floatingbtnprovider = Provider.of<FloatingButtonProvider>(
                  context,
                  listen: false,
                );
                if (page == 1) {
                  floatingbtnprovider.setContactPage(true);
                } else {
                  floatingbtnprovider.setContactPage(false);
                }
              });
              final titleprovider = Provider.of<AppBarTitleProvider>(
                context,
                listen: false,
              );
              titleprovider.setTitle(page);
            },
          ),
          const Expanded(
            child: TabBarView(
              children: [
                CallLogsPage(),
                ContactsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// now its good
// if we use positioned we ccant set border radius i think so

// done
// lets check why the background color of numeric pad is blue
// now we have to set one floating button on contact page also