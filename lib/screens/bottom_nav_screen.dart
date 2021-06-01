import 'package:flutter/material.dart';
import 'package:flutter_covid19/screens/home_screen.dart';
import 'package:flutter_covid19/screens/state_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    HomeScreen(),
    StateScreen(),
    Scaffold(),
    Scaffold(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          //type은 네비게이션 픽스드라고하면 고정되어있는 !
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 0.0,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [Icons.home, Icons.insert_chart, Icons.event_note, Icons.info]
              //asMap은 맵일경우에도 인덱스가 필요할 때 선언해줌
              .asMap()
              //맵을 선언후 key,value가 있고 맵 엔트리 첫번째 키, 그다음 실제 데이터를 선언
              //mapentry는 list,coloum등등 선언하고싶을때 편리함.
              .map((key, value) => MapEntry(
                    key,
                    BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(
                          color: _currentIndex == key
                              ? Colors.blue[600]
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(value),
                      ),
                    ),
                  ))
          //맵의 값들을
          .values
          //toList로 뽑아서 내준다.
          .toList(),
      )
    );
  }
}
