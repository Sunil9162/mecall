import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:mecall/providers/contacts_provider.dart';
import 'package:mecall/views/widgets/single_contact_item.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: implement
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<ContactProvider>(
        builder: (BuildContext context, _contactProvider, Widget? child) {
          if (_contactProvider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (_contactProvider.isPermissionDenied) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Permission Denied"),
                  ElevatedButton(
                    onPressed: () async {
                      Permission _permission = Permission.contacts;
                      await _permission.request();
                      // permission granted
                      // lets fetch contatcs
                      final _contactProvider = Provider.of<ContactProvider>(
                        context,
                        listen: false,
                      );
                      _contactProvider.getContacts();
                    },
                    child: const Text("Grant Permission"),
                  ),
                ],
              ),
            );
          }
          return ListView.builder(
            itemCount: _contactProvider.contacts.length,
            itemBuilder: (_, i) {
              final Contact _contact = _contactProvider.contacts[i];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleContactItem(
                  contact: _contact,
                ),
              );
            },
          );
        },
      ),
    );
  }
}


// today we will fetch all the contacts from phone and display them in a list
// lets save some contacts on my emulator.
// i have saved contacts
// lets start this video now
// we have to make another providerclass for fetching all contacts
// lets build signle contact item
// we have called function to get contacts
// let do that
// now its good