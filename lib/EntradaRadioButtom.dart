import 'package:flutter/material.dart';

class EntradaRadioButtom extends StatefulWidget {
  @override
  _EntradaRadioButtomState createState() => _EntradaRadioButtomState();
}

class _EntradaRadioButtomState extends State<EntradaRadioButtom> {
  @override
  String _escolhaUsuario = "";
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Buttom"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text("Masculino"),
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RaisedButton(
              child: Text(
                  "SAVE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              color: Colors.cyanAccent,
              onPressed: (){
                print('Opção salva foi: ' + _escolhaUsuario);
              },
            )
            /*
            Text('Masculino'),
            Radio(
                value: "M",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print('Resultado: ' + escolha);
                }
            ),

            Text("Feminino"),
            Radio(
                value: "F",
                groupValue:   _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print('Resultado: ' + escolha);
                }
            ),
*/
          ],
        ),
      ),
    );
  }
}
