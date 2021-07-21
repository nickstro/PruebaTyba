import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prueba_tyba/User/screens/home_user.dart';
import 'package:prueba_tyba/User/screens/record_user.dart';


class NavCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  label: ""
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeUser(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => RecordUser(),
              );
              break;
            default:
              return CupertinoTabView(
                  builder: (BuildContext context) => HomeUser(),
              );
          }
        },
      ),
    );
  }

}