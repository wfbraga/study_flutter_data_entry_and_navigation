import 'package:flutter/material.dart';

class DadosTexto extends StatefulWidget {

  String name;
  String birthdate;

  DadosTexto(this.name, this.birthdate);

  @override
  _DadosTextoState createState() => _DadosTextoState();
}

class _DadosTextoState extends State<DadosTexto> {

  TextEditingController _nameTextEditingController = TextEditingController();
  TextEditingController _birthEditingCOntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confira os Dados"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Os dados passado são:',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                "Nome: ${widget.name}"
              ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                "Nascimento: ${widget.birthdate}"
            ),
          ),
          Padding(

            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite nome."
              ),
              //enabled: true,
              //maxLength: 2,
              //maxLengthEnforced: false,
              /*style: TextStyle(
                fontSize: 25,
                color: Colors.green
              ),
              obscureText: true, // é a forma de colocar a senha
              onChanged: (String textoDigitado){
                print("valor digitado: " + textoDigitado);
              },*/

              onSubmitted: (String textoEnviado){
                print('Pego no onSubmited: ' + textoEnviado);
              },
              controller: _nameTextEditingController,

            )
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Fecha de Nascimiento"
              ),
              controller: _birthEditingCOntroller,
            ),
          ),

          RaisedButton(
            child: Text('Salvar'),
            color: Colors.lightGreen,
            onPressed: (){
              print("Nome do Membro: " + _nameTextEditingController.text);
              print("Data de Nascimento: " + _birthEditingCOntroller.text);
            },
          )
        ],
      ),
    );
  }
}
