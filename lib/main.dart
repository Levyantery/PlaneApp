import 'package:flutter/material.dart';
import 'package:planeapp/attraction_list_view.dart';
import 'package:planeapp/bottom_bar_widget.dart';
import 'package:planeapp/header_widget.dart';

final Color mainYellow = Color.fromARGB(255, 18, 255, 2);
final Color primaryGray = Color(0xFF313131);
final Color secondaryGray = Color(0xFF1C1C1C);
final Color lightGray = Color(0xFF3B3B3B);

void main() {
  runApp(
    MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false
    )
  );
}

class SplashPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LandingPage())
      );
    });

    return Stack(
      children: [
        Container(
          color: mainYellow,
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.airplanemode_on, color: const Color.fromARGB(255, 255, 255, 255), size: 80),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(0.2)),
              strokeWidth: 10,
            ),
          )
        )
      ],
    );
  }
}

class LandingPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: IconThemeData(color: mainYellow),
        title: Center(
          child: Icon(Icons.airplanemode_on, color: mainYellow)
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.notifications_on_outlined, color: Colors.grey),
              onPressed: () {}
            )
          )
        ]
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20),
          child: Icon(Icons.airplanemode_on, size: 80, color: const Color.fromARGB(255, 255, 255, 255))
        )
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryGray,
              secondaryGray
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidget(),
            AttractionListView(),
            BottomBarWidget()
          ]
        )
      )
    );
  }
}


