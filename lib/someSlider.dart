import 'package:flutter/material.dart';
import 'someSwitch.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  @override
  double _valorSlide = 5;
  String _label = "Indiferente";

    _corAtiva(corAtiva){
      return corAtiva;
    }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vita.imagem - Sliter"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Slider(
                value: _valorSlide,
                min: 0,
                max: 10,
                divisions: 4,
                label: _label,
                onChanged: (double valor){
                  print("valor selecionado: " + valor.toString());
                  setState(() {
                    _valorSlide = valor;
                  });
                  if(_valorSlide == 0 || _valorSlide < 0.5){
                    setState(() {
                      _label = "Péssimo!";
                    });
                  }
                  else if(_valorSlide > 2 && _valorSlide < 3.0){
                    setState(() {
                      _label = "Ruim";
                    });
                  }
                  else if(_valorSlide > 4.5 && _valorSlide < 5.5){
                    setState(() {
                      _label = "Indiferente";
                    });
                  }
                  else if(_valorSlide > 7 && _valorSlide < 8.5){
                    setState(() {
                      _label = "Bom";
                    });
                  }
                  else if(_valorSlide > 9){
                    setState(() {
                      _label = "ötimo";
                    });
                  }
                }
            ),
            Slider(
                value: _valorSlide,
                min: 0,
                max: 10,
                divisions: 4,
                label: _label,
                activeColor: Colors.lightBlue,
                inactiveColor: Colors.redAccent,
                onChanged: (double valor){
                  print("valor selecionado: " + valor.toString());
                  setState(() {
                    _valorSlide = valor;
                  });
                  if(_valorSlide == 0 || _valorSlide < 0.5){
                    setState(() {
                      _label = "Péssimo!";

                    });
                  }
                  else if(_valorSlide > 2 && _valorSlide < 3.0){
                    setState(() {
                      _label = "Ruim";
                    });
                  }
                  else if(_valorSlide > 4.5 && _valorSlide < 5.5){
                    setState(() {
                      _label = "Indiferente";
                    });
                  }
                  else if(_valorSlide > 7 && _valorSlide < 8.5){
                    setState(() {
                      _label = "Bom";
                    });
                  }
                  else if(_valorSlide > 9){
                    setState(() {
                      _label = "ötimo";
                    });
                  }
                }
            ),
            RaisedButton(
              child: Text("SALVAR"),
              onPressed: (){
                print('Valor Salvo = ' + _valorSlide.toString());
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
        ),
      ),
    );
  }
}
