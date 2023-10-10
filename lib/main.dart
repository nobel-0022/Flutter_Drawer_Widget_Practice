import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  return MaterialApp(
      home: HomeScreen(),
      );
}
  }

  class HomeScreen extends StatefulWidget{
  HomeScreen({Key? key}) : super(key: key);

  @override
    State<HomeScreen> createState() => _HomeScreenState();
  }
  class _HomeScreenState extends State<HomeScreen>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize:30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions =<Widget>[
    Text(
      'Home Page',
      style: optionStyle,
    ),
    Text(
      'Course Page',
      style: optionStyle,
    ),
    Text(
      'Email Page',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksForGeeks'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(Icons.home),
         label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),
          label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.email),
              label: 'Mail'),

        ],
        currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
  }