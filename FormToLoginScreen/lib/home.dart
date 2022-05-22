import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Account'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings),)],
      ),
      drawer: Drawer(
        child: Column(
          children:const <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Nasreldin Abdelaziz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),), 
                accountEmail: Text('Abdalaziznasr5@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://meaningnames.net/write/7/%D9%86%D8%B5%D8%B1%D8%A7%D9%84%D8%AF%D9%8A%D9%86.png'),
            ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('https://www.meaning-names.net/write/1/%D9%86%D8%B5%D8%B1%D8%A7%D9%84%D8%AF%D9%8A%D9%86-Nsraldyn.png'),
                ),
              ],
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Stared'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text('Chat'),
              leading: Icon(Icons.chat),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chat'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueAccent,onPressed: (){

      },
      ),
    );
  }
}
