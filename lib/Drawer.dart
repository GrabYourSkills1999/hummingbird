import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawers extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.

      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimage.freepik.com%2Ffree-icon%2Fimportant-person_318-10744.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-icon%2Fimportant-person_696850.htm&tbnid=seOp8NzWqCxt6M&vet=12ahUKEwiG9Iiox9ntAhWKB7cAHZC2AOkQMygNegUIARD2AQ..i&docid=FIchAlQX37C_IM&w=626&h=626&q=person%20icon&ved=2ahUKEwiG9Iiox9ntAhWKB7cAHZC2AOkQMygNegUIARD2AQ"),
                ),
                Text("Name",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading:  Icon(Icons.notifications_active),
            title: Text('Set notification time'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:  Icon(FontAwesomeIcons.googlePlay,size: 20,),
            title: Text('Rate us on Play Store'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:  Icon(FontAwesomeIcons.envelopeOpenText,size: 20,),
            title: Text('Any Feedback?'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:  Icon(FontAwesomeIcons.shareAlt,size: 20,),
            title: Text('Share with a friend'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:  Icon(FontAwesomeIcons.signOutAlt,size: 20,),
            title: Text('Logout'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}