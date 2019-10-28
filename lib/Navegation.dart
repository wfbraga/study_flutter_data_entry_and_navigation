import 'package:entrada_de_dados/TelaSecundaria.dart';
import 'package:flutter/material.dart';
import 'TelaSecundaria.dart';
import 'CampoTexto.dart';
import 'EntradaCheckBox.dart';
import 'EntradaRadioButtom.dart';
import 'someSwitch.dart';
import 'someSlider.dart';

void maind(){
  runApp((MaterialApp(
    home: TelaPrincipal(),
  )));
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  child: Text("Próxima tela"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaSecundaria()
                        )
                    );
                  },
                ),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  child: Text("Entrada Texto"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CampoTexto()
                        )
                    );
                  },
                )
              ],
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  child: Text("Chechbox"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EntradaCheckBox()
                        )
                    );
                  },
                ),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  child: Text("Botão Radio"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EntradaRadioButtom()
                        )
                    );
                  },
                )
              ],
            ),
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  child: Text("Slider"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EntradaSlider()
                        )
                    );
                  },
                ),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  child: Text("Switch"),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EntradaSwitch()
                        )
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
