// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sad/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        backgroundColor: Colors.greenAccent,
        leading: Icon(Icons.home),
        // actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.home))],
      ),

      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home),
            title: Text("Message"),
          ),

          Divider(),

          ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text("Person"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/cartoon.jpg", height: 200, width: 200),

          Text(
            "Tom and Jerry",
            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 32,
              color: Colors.blueAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProfilePage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    fixedSize: Size(150, 50),
                  ),
                  child: Text("Elevated"),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Hello")),
              SizedBox(width: 20),
              OutlinedButton(onPressed: () {}, child: Text("Outlined")),
              TextButton(onPressed: () {}, child: Text("Hello")),
            ],
          ),
        ],
      ),
    );
  }
}
