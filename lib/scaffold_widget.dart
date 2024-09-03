import 'package:flutter/material.dart';
import 'package:flutter_application_3/image_widget.dart';
import 'package:flutter_application_3/input_widget.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  var _selectedIndex = 0;

  onTapBar(index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alamak😱😱😱'),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            )),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.wrong_location),
          Icon(Icons.add_box),
          Icon(Icons.alternate_email)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageWidget(),
            InputWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: onTapBar,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined), label: "Friends"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
      ]),
    );
  }
}
