import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appTitle',
      home: MyHomePage(title: "appTitle"),
    );
  }

}
class MyHomePage extends StatelessWidget{
  final String  title;

 const MyHomePage({Key? key , required this.title}): super(key: key);
    @override
  Widget build(BuildContext context){
      return Scaffold(
      appBar: AppBar(
      title: Text("title"),
    backgroundColor: Colors.green,
      ),
        body: const Center(
          child: Text(
            "A drawer is an invisible side screen",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text(
                    "Nobel dey babu",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("nobeldeybabu@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),

                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("My Profile"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('My Course'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.workspace_premium),
                title: Text("Go premium"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.video_label),
                title: Text("Saved Videos"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit Profile"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      );
  }
  }
