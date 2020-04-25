import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Entrar",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Criar conta",
              style: TextStyle(fontSize: 15.0),
            ),
            textColor: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "E-mail"),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Senha",
              ),
              obscureText: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Esqueci minha senha",
                  textAlign: TextAlign.right,
                ),
                padding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            RaisedButton(
              child: Text(
                "Entrar",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              textColor: Colors.white,
              color: Theme.of(context).primaryColor,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
