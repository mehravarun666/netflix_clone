import 'package:flutter/material.dart';
import 'package:netflix/presentation/screens/screen_core/widget/widget_lists.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 0, 0, 0),
        automaticallyImplyLeading: false,
        title: WidgetList(context).appbarTitle[_currentIndex],
        actions: WidgetList(context).appbarActions[_currentIndex],
       
      ),
      body: PopScope(
        canPop: false,
        child: WidgetList(context).mainScreens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_lesson_outlined),
            label: 'New & Hot',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My Netflix')
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}