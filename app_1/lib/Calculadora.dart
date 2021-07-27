import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
} 

class CalculadoraState extends State<Calculadora> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Calculadora - simples / Dênis", 
        style: TextStyle(
        fontSize: 32, color: Colors.yellow,),
        )
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            

            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),

            

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),

            

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),

            

            new Padding(padding: const EdgeInsets.only(top: 20)),

            

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  


                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),

                  color: Colors.yellow,
                  onPressed: somar,
                ),

                new MaterialButton(
                  


                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),

                  color: Colors.yellow,
                  onPressed: subtrair,
                ),
                new MaterialButton(
                  


                  child: new Text(
                    "*",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),

                  color: Colors.yellow,
                  onPressed: multiplicar,
                ),
                new MaterialButton(
                  


                  child: new Text(
                    "/",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),

                  color: Colors.yellow,
                  onPressed: dividir,
                ),
              ],
            )
          ],
        ),
      ),
    );
  } 

  

  var valor1;
  var valor2;
  var resultado;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");

  

  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 + valor2;
    });
  } 
  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 - valor2;
    });
  }
  void multiplicar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 * valor2;
    });
  }
  void dividir() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 / valor2;
    });
  }
  
}