import 'package:flutter/material.dart';
import 'package:prueba_tyba/widgets/gradient_back.dart';
import 'package:prueba_tyba/widgets/button_green.dart';
import 'package:prueba_tyba/nav_cupertino.dart';


class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterScreen();
  }

}

class _RegisterScreen extends State<RegisterScreen>{


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
    final userNameController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      key: _globalKey,
      body: Stack(
        children: <Widget>[
          GradientBack("", 950.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("\nBienvenido \nregistrate en esta app para ver los mejores restaurantes",
                style: TextStyle(
                    fontSize: 37.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 270),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Container(
                      color: Color(0xfff5f5f5),
                      child: TextFormField(
                        controller: userNameController,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                            prefixIcon: Icon(Icons.person_outline),
                            labelStyle: TextStyle(
                                fontSize: 15
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Container(
                      color: Color(0xfff5f5f5),
                      child: TextFormField(
                        controller: userNameController,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.person_outline),
                            labelStyle: TextStyle(
                                fontSize: 15
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xfff5f5f5),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          labelStyle: TextStyle(
                              fontSize: 15
                          )
                      ),
                    ),
                  ),
                  ButtonGreen(text: "Registrar", onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NavCupertino()));
                  },
                    width: 300.0,
                    height: 50.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



