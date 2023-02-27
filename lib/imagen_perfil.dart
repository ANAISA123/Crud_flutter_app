import 'dart:ui';
import 'package:flutter/material.dart';

class imagen_perfil extends StatelessWidget {
  const imagen_perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Perfil Usuario',),
        ),
        body: cuerpo());
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1605478185737-99ae313e940c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
           _buildStack(),
          nombre(),
          campoUsuario(), 
          campoContrasena(),
          SizedBox(height: 10,),
          botonEntrar()
        ],
      )
    ),
  );
}
 
 Widget _buildStack() => Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      CircleAvatar(
        backgroundImage: AssetImage('assets/perfil.png'),
        radius: 100,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        child: Text(
          '',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );

Widget nombre(){
  return Text("Sing in ", style: TextStyle(color: Colors.white, fontSize:35.0,fontWeight: FontWeight.bold ) ,);
}

Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User Name",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar(){
  return MaterialButton(
    minWidth: 80.0,
    height: 40.0,
    onPressed: () {},
    color: Colors.lightBlue,
    child: Text('Enter', style: TextStyle(color: Colors.white, fontSize: 20.0)),
  );
}