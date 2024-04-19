
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

class Myradiozinho extends StatefulWidget {
  const Myradiozinho({super.key});

  @override
  State<Myradiozinho> createState() => _MyradiozinhoState();
}

class _MyradiozinhoState extends State<Myradiozinho> {
  String amoVida = "";
  String maisCedo = "";
  bool liberar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio botton"),centerTitle: true,backgroundColor: Colors.lime,),
      body: Center(child: Column(children: [
        SizedBox(height: 20,),
        Text("Eu amo minha vida"),
        Radio(
          value: "Sim", 
          groupValue: amoVida, 
          onChanged: (value) {
            amoVida = value!;
            setState(() {
              
            });
          },
          ),
          Text("Não"),
          Radio(value: "Não",
           groupValue: amoVida, 
           onChanged:(value) {
             amoVida = value!;
             setState(() {
               
             });
           },
           ),
           SizedBox(height: 20,),
           ElevatedButton(onPressed: () {
             print("Amo minha vidaaaaa"+amoVida);
             print("E Morreu"+maisCedo);
             print("Liberado , pode entrar"+liberar.toString());

           },
            child: Text("OK")
            ),
            RadioListTile(
              title: Text("Vou ir hoje"),
              subtitle: Text("Será?"),
              secondary: Icon(Icons.local_fire_department_outlined),
              value: "SIM",
             groupValue: maisCedo,
              onChanged:(value) {
                maisCedo = value!;
                setState(() {
                  
                });
              },),
              RadioListTile(
              title: Text("Vou ir hoje"),
              subtitle: Text("Será?"),
              secondary: Icon(Icons.local_fire_department_outlined),
              value: "NÃO",
             groupValue: maisCedo,
              onChanged:(value) {
                maisCedo = value!;
                setState(() {
                  
                });
              },),
              SwitchListTile(
              title: Text("Com certeza pode liberar"),
              secondary: Icon(Icons.add_reaction_outlined),
              value:liberar, 
              onChanged: (value) {
                liberar = value;
                setState(() {
                  
                });
              },)
      ],)
      ),
    );
  }
}