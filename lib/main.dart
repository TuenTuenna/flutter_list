import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("리스트 입니다!"),
        ),
        drawer: Drawer(
          child: MyDrawer(),
        ),
        body: Center(
          child: _buildList(),
        ),
      ),
    );
  }
}



// 상태를 가지는 StatefulWidget
class MyDrawer extends StatefulWidget{
  @override
  _MyDrawer createState() {
    print("MyDrawer - createState() called");
    return _MyDrawer();
  }
}

// 상태
class _MyDrawer extends State<MyDrawer> {
  int _myColorIndex = 0;
  final colors = [Colors.orange, Colors.pink, Colors.lightGreenAccent, Colors.indigoAccent];

  void _updateColorIndex(int updatedValue){
    print("_MyDrawer - _updateColorIndex() called / updatedValue: $updatedValue");
    setState(() {
      _myColorIndex = updatedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("MyDrawer - build() called");
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child: Text("헤더 입니다!!"),
            decoration: BoxDecoration(
                color: colors[_myColorIndex]
            ),
          ),
          ListTile(
            title: Text("프로필"),
            onTap: (){
              print("프로필이 선택되었다");
              _updateColorIndex(1);
            },
          ),
          ListTile(
            title: Text("설정"),
            onTap: (){
              print("설정이 선택되었다");
              _updateColorIndex(2);
            },
          ),
          ListTile(
            title: Text("로그아웃"),
            onTap: (){
              print("로그아웃이 선택되었다");
              _updateColorIndex(3);
            },
          ),
          ListTile(
            title: Text("닫기"),
            onTap: (){
              print("닫기가 선택되었다");
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}


Widget _buildList() => ListView(
  children: [
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
    _tile("안녕하세요?!", "반가워요!!!"),
  ]
);

ListTile _tile(String title, String subtitle) => ListTile(
  title: Text(title),
  subtitle: Text(subtitle),
  leading: _userImage(images[Random().nextInt(images.length)])
);

ClipRRect _userImage(String url) => ClipRRect(
  borderRadius: BorderRadius.circular(100),
  child: Image.network(url),
);

final images = [
  "https://randomuser.me/api/portraits/men/88.jpg",
  "https://randomuser.me/api/portraits/women/66.jpg",
  "https://randomuser.me/api/portraits/women/26.jpg",
  "https://randomuser.me/api/portraits/men/64.jpg",
  "https://randomuser.me/api/portraits/women/52.jpg",
  "https://randomuser.me/api/portraits/women/22.jpg",
  "https://randomuser.me/api/portraits/women/12.jpg",
  "https://randomuser.me/api/portraits/women/80.jpg",
  "https://randomuser.me/api/portraits/women/20.jpg",
];














