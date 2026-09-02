import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق المذاكرة',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List<Widget> pages = [
    Scaffold(appBar: AppBar(title: Text('المواد')), body: Center(child: Text('هنا المواد'))),
    Scaffold(appBar: AppBar(title: Text('البيانات')), body: Center(child: Text('هنا البيانات'))),
    Scaffold(appBar: AppBar(title: Text('الجدول')), body: Center(child: Text('هنا الجدول'))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {setState(() {currentIndex = index;});},
        selectedItemColor: Colors.purple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'المواد'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'البيانات'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'الجدول'),
        ],
      ),
    );
  }
}
