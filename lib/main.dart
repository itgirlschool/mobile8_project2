import 'package:flutter/material.dart';
import 'main_page.dart';
import 'user_account.dart';
import 'screens/chat_page.dart';
import 'screens/search_screen.dart';
import 'signup_sreen.dart';
import 'for_registration_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[

    MainPage(),
    SignupScreen(),
    ChatPage(),
    SearchScreen(),
    UserAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.domain_verification),
            label: 'главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'чаты',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 109, 68, 191),
        onTap: _onItemTapped,
      ),
    );
  }
}
