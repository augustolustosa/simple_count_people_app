import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: "Primeiro App",
    debugShowCheckedModeBanner: false,
    home: Home()));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _contador=0;
  String _podeEntrar="Pode entrar";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/original.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_contador",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1"),
                    color: Colors.white,
                    textColor: Colors.deepPurple,
                    onPressed: () {
                      setState(() {
                        _contador++;
                        if(_contador<0){
                          _podeEntrar="Bugou";
                        }else if(_contador>10){
                          _podeEntrar="Lotado";
                        }else{
                          _podeEntrar="Pode entrar";
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1"),
                    color: Colors.white,
                    textColor: Colors.deepPurple,
                    onPressed: () {
                      setState(() {
                        _contador--;
                        if(_contador<0){
                          _podeEntrar="Bugou";
                        }else if(_contador>10){
                          _podeEntrar="Lotado";
                        }else{
                          _podeEntrar="Pode entrar";
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            Text(
              _podeEntrar,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            ),
          ],
        )
      ],
    );
  }
}

