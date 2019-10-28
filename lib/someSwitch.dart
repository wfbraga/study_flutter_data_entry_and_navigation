import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _recNotificacaoExames = false;
  bool _recNotificacaoBemEstar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vita.imagem"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: Text("Noificar sobre exames"),
              activeColor: Colors.teal,
              value: _recNotificacaoExames,
              onChanged: (bool simOuNao){
                setState(() {
                  _recNotificacaoExames = simOuNao;
                });
              },
            ),
            SwitchListTile(
              title: Text("Noificar Noticias de Bem Estar"),
              activeColor: Colors.teal,
              value: _recNotificacaoBemEstar,
              onChanged: (bool simOuNao){
                setState(() {
                  _recNotificacaoBemEstar = simOuNao;
                });
              },
            ),
            RaisedButton(
              child: Text(
                "SALVAR",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightGreen,
              onPressed: (){
                print("Receber notificação de exames: " + _recNotificacaoExames.toString());
                print("Receber notificação de bem estar: " + _recNotificacaoBemEstar.toString());
              },
            )
          ],
          /*mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Switch(
                value: _recNotificacao,
                onChanged: (bool simOuNao){
                  setState(() {
                    _recNotificacao = simOuNao;
                  });
                }
            ),
            Text("Receber Noticifacao"),
            RaisedButton(
              color: Colors.cyan,
              child: Text(
                  "SAVE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            )
          ],
        */),
      ),
    );
  }
}
