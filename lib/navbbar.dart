import 'package:flutter/material.dart';
import './homescreen.dart';
import './main.dart';
class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding: EdgeInsets.zero,
        children:[
          UserAccountsDrawerHeader(
            accountName: const Text('shriya'),
            accountEmail: const Text('shriyakulkarni04@gmail.com'),
              currentAccountPicture:CircleAvatar(
                child:ClipOval(child:Image.asset('images/jeremiah.jpg')),
              ),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('upload File'),
            onTap: ()=> print('uploaded'),
          ),
          ListTile(
            leading:const Icon(Icons.account_circle),
            title:const Text('Profile'),
            onTap: ()=> print('Profile Tapped'),
          ),
          ListTile(
            leading:const Icon(Icons.message),
            title: const Text('Messages'),
            onTap: ()=> print('Messages Tapped'),
          ),
          ListTile(
            leading:const Icon(Icons.line_axis),
            title:const Text('Stats'),
            onTap: ()=> print('Stats Tapped'),
          ),
          ListTile(
            leading:const Icon(Icons.share),
            title:const Text('Share'),
            onTap: ()=> print('Share Tapped'),
          ),
          ListTile(
            leading:const Icon(Icons.notifications),
            title:const Text('Notifications'),
            onTap: ()=> print('Notifications Tapped'),
          ),
          Divider(),
          ListTile(
            leading:const Icon(Icons.logout),
            title:const Text('Logout'),
            onTap: ()=> print('Logout Tapped'),
          ),

    ],
      ),
    );
  }
}
