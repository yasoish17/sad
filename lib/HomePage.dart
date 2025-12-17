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
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
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
            Card(child: Text("Hello")),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: Colors.deepOrangeAccent,
                child: Center(
                  child: Text("Card", style: TextStyle(color: Colors.white)),
                ),
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
            Container(
              height: 300,
              width: 300,
              padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
              margin: EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(color: Colors.yellow, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                //shape: BoxShape.circle,
              ),
              child: Text("Container"),
            ),
          ],
        ),
      ),
    );
  }
}

