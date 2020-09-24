
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
 runApp(MyApp());
}

class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      title: "Stack App",
      theme: ThemeData
      (
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHome(),
    );

  }
}
class MyHome extends StatelessWidget
{
  final fondo = Container
  (
    decoration: BoxDecoration
    (
      image: DecorationImage
      (
        image: AssetImage("asset/imagenes/fondo.jpg"),
        fit: BoxFit.cover
      )
    ),
  );


  final logo = Container
  (
    alignment: Alignment(0.10, -0.80),
    child: Container
    (
      height:225,
      decoration: BoxDecoration
      (
        image: DecorationImage
        (
          image: AssetImage("asset/imagenes/logo.png"),
        ),
      )
    ),
  );

  final email = Container
  (

    alignment: Alignment(0.10, 0.0),
    padding: EdgeInsets.all(5),
    child: TextField
    (
      decoration: InputDecoration
      (
        icon: Icon(Icons.account_circle,color: Colors.black,),
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.black)


      ),
    ),
  );
  final password = Container
  (
    alignment: Alignment(0.10, 0.20),
    padding: EdgeInsets.all(5),
    child: TextField
    (
      decoration: InputDecoration
      (
        icon: Icon(Icons.lock,color: Colors.black,),
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.black)
      ),
    ),
  );


  final Login= Container
  (
    alignment: Alignment(0.10, 0.60),
    padding: EdgeInsets.all(5),
    child: RaisedButton
    (
      color: Colors.orange,
      shape: new RoundedRectangleBorder
      (
        borderRadius: BorderRadius.circular(10.0)
      ),
      onPressed: (){},
      child: SizedBox
      (
        width: 325,
        height: 50,
        child: Center
        (
          child: Text
          (
            "Log In",
            textAlign: TextAlign.center,
            style: TextStyle
            (
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    ),
  );

  final mensaje1 = Container
    (
    alignment: Alignment(0.10, 0.80),
    padding: EdgeInsets.all(5),
    child: Text
      (
      "Forgot password",
      style: TextStyle
        (
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
    ),
  );
  final mensaje2 = Container
    (
    alignment: Alignment(0.10, 0.99),
    padding: EdgeInsets.all(5),
    child: Text
      (
      "Term & Conditions",
      style: TextStyle
        (
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
    ),
  );


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (

      body: Stack
      (
        children: <Widget>
        [
          fondo,
          logo,
          email,
          password,
          Login,
          mensaje1,
          mensaje2
        ],
      ),

    );
  }

}