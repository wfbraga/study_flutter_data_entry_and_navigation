import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _mealSelectionBrasil = false;
  bool _mealSelectionParaguay = false;
  bool _mealSelectionChile = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Checkbox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Comida Brasileira"),
            /*
            *Checkbox(
              value: _estaSelecionado,
              onChanged: (bool vemDoCliqueDoUsuario){
                print("Checked = " + vemDoCliqueDoUsuario.toString());
                setState(() {
                  _estaSelecionado = vemDoCliqueDoUsuario;
                });
              },
            ),*/
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do Mundo"),
              value: _mealSelectionBrasil,
              //selected: true;
              secondary: Icon(Icons.fastfood, color: Colors.lightGreen,),
              activeColor: Colors.lightGreen,
              onChanged: (bool vemDoUsuario){
                setState(() {
                  _mealSelectionBrasil = vemDoUsuario;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Paraguaya"),
              subtitle: Text("A segunda melhor comida do mundo"),
              secondary: Icon(Icons.fastfood, color: Colors.redAccent,),
              value: _mealSelectionParaguay,
              activeColor: Colors.red,
              onChanged: (bool userTouch){
                setState(() {
                  _mealSelectionParaguay = userTouch;
                });
              },
            ),
            CheckboxListTile(
              value: _mealSelectionChile,
              title: Text("Comiga Chilena"),
              subtitle: Text("Nada de mais."),
              secondary: Icon(Icons.fastfood, color: Colors.lightBlue,),
              activeColor: Colors.lightBlueAccent,
              onChanged: (bool userTouch){
                setState(() {
                  _mealSelectionChile = userTouch;
                });
              },
            ),
            RaisedButton(
              child: Text(
                  "Salvar",
              style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print("comiga Brasileira: " + _mealSelectionBrasil.toString());
                print("comiga Paraguaya: " + _mealSelectionParaguay.toString());
                print("comiga Chilena: " + _mealSelectionChile.toString());
                }
            ),
          ],
        ),
      ),
    );
  }
}
