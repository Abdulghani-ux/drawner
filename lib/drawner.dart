import 'package:flutter/material.dart';

class dwner extends StatefulWidget {
  const dwner({Key? key}) : super(key: key);

  @override
  State<dwner> createState() => _dwnerState();
}

class _dwnerState extends State<dwner> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.purple,
                  Colors.red,
                ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
            accountName: Text(
              'Sameer Adde',
              style: TextStyle(),
            ),
            accountEmail: Text('sameeradde@gmail.com'),
            currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('images/sameer.jpg'),),
          otherAccountsPictures: [
            CircleAvatar(foregroundImage: AssetImage('images/sameeradde.jpg'),),
            CircleAvatar(foregroundImage: AssetImage('images/sameer.jpg'),)
          ],
            onDetailsPressed: (){},
            //arrowColor: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Shop'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text('Setting and Support',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Contacts'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help Center'),
            onTap: () {},
          ),
        ],
      ),

      //body: Column(children: [crd(),],)
    );
  }
}
