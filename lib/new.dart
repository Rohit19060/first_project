import 'package:flutter/material.dart';
void main () => runApp(const TabBarDemo()) ;
// void main() 
  // {
  //   runApp(const TapBarDemo());}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);
 
// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.music_video)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ), // TabBar
            title: const Text('The King Tech School'),
            backgroundColor: Color.fromARGB(255, 37, 103, 119),
          ), // AppBar
          body: TabBarView(
            children: [
              Icon(Icons.notes,
              size: 100),
              Icon(Icons.video_call,
              size: 100),
              Icon(Icons.quickreply,
              size: 100),
              Icon(Icons.grade,
              size: 300,
              semanticLabel: 'Star',),
              Icon(Icons.email),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}

class MyApp extends StatelessWidget {
  final appTitle = 'The King Tech School';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

    @override
    Widget build(BuildContext context) {
                    
      return Scaffold(
        appBar: AppBar(
          title: const Text("The King Tech School"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
          backgroundColor: Color.fromARGB(255, 105, 181, 243),
        ),
        body: const Center(
          child: Text(
            'Welcome to the King Tech School.',
            style: TextStyle(
            fontFamily: 'Montserrat',
                fontSize: 40.0,
                color: Color.fromARGB(255, 11, 95, 77),
                fontWeight: FontWeight.bold,
            ),
          )),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Color.fromARGB(255, 107, 205, 235)),
                    accountName: Text(
                      "Rohit Jain",
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: Text("rohitjain19060@gmail.com"),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 106, 194, 245),
                      child: Text(
                        "R",
                        style: TextStyle(fontSize: 30.0, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text(' My Profile '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text(' My Course '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.workspace_premium),
                  title: const Text(' Go Premium '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.video_label),
                  title: const Text(' Saved Videos '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text(' Edit Profile '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

              ],
            ),
          ),
        );
        // debugShowCheckedModeBanner: false, 
    }
}



