import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Controlador de Acesso",
    home: Home()
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Liberado!";
  
  void _changePeople(int value) {
    setState(() {

      _people += value;
      _people <= 10 ? _infoText = "Liberado!" : _infoText = "Lotado!";

      if (_people < 0) {
        _people = 0;
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Image.asset("images/background.jpg", fit: BoxFit.cover, height: 1000.00),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pessoas: $_people", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: FlatButton(
                      child: Text("+1", style: TextStyle(color: Colors.white, fontSize: 40.0)),
                      onPressed: () {
                        _changePeople(1);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: FlatButton(
                      child: Text("-1", style: TextStyle(color: Colors.white, fontSize: 40.0)),
                      onPressed: () {
                        _changePeople(-1);
                      },
                    ),
                  ),
                ],
              ),
              Text("$_infoText", style: TextStyle(color:Colors.white, fontSize: 30.00, fontStyle: FontStyle.italic))
            ],
          )
        ],
      );  
  }
}