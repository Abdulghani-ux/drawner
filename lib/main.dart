import 'package:flutter/material.dart';
import 'package:test2/drawner.dart';


void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeP()));

class HomeP extends StatefulWidget {
  const HomeP({Key? key}) : super(key: key);

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sameer Adde'),
          // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.purple,
              Colors.red,
            ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Food',
              ),
              Tab(
                icon: Icon(Icons.face),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
            ],
          ),
        ),
        drawer:dwner()

        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       DrawerHeader(padding: EdgeInsets.all(0),
        //           child: Container(
        //             color: Colors.blue,
        //             child: Column(
        //               children: [
        //                 Text('Hi')
        //               ],
        //             ),
        //           )),
        //       ListTile(leading: Icon(Icons.home),title: Text('Home'),onTap: (){},),
        //       ListTile(leading: Icon(Icons.shopping_cart),title: Text('shop'),onTap: (){},),
        //       ListTile(leading: Icon(Icons.favorite),title: Text('favorite'),onTap: (){},),
        //       Padding(
        //         padding: const EdgeInsets.all(14.0),
        //         child: Text('Labels'),
        //       ),
        //       ListTile(leading: Icon(Icons.home),title: Text('Home'),onTap: (){},),
        //       ListTile(leading: Icon(Icons.shopping_cart),title: Text('shop'),onTap: (){},),
        //       ListTile(leading: Icon(Icons.favorite),title: Text('favorite'),onTap: (){},),
        //     ],
        //   ),
        // ),

        //body: Column(children: [crd(),],)
      ));
}
