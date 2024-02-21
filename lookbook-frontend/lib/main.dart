import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // 각 탭에 맞는 위젯 리스트
  final List<Widget> _widgetOptions = <Widget>[
    Text('실시간 트렌드'),
    Text('운동 정보 채널'),
    Text('운동 별 정보'),
    Text('나만의 운동 룩북'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GNB 바 적용 예제'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: '실시간 트렌드',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: '운동 정보 채널',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: '운동 별 정보',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '나만의 운동 룩북',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: HomePage()));