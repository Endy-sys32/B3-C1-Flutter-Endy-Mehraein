import 'package:flutter/material.dart';
import 'package:location/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion"),
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: [
          const SizedBox(height: 70.0),
          _buildLoginText(),
          const SizedBox(height: 12.0),
          _buildPassText(),
          const SizedBox(height: 12.0),
          _buildButtonBar(),
          const SizedBox(height: 20.0),
          _buildCreateUser(),
        ],
      ),
    );
  }

  Widget _buildLoginText(){
    return TextField(
      controller: _usernameController,
      decoration: const InputDecoration(
        filled: true,
        labelText: 'Username',
      ),
    );
  }

  Widget _buildPassText(){
    return TextField(
      controller: _passwordController,
      decoration: const InputDecoration(
        filled: true,
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }


  Widget _buildButtonBar(){
    return OverflowBar(
      alignment: MainAxisAlignment.end,
      children: <Widget>[
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            _usernameController.clear();
            _passwordController.clear();
          },
        ),
        ElevatedButton(
          child: const Text('NEXT'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp(),
                )
            );
          },
        ),
      ],
    );
  }

  Widget _buildCreateUser(){

    return OverflowBar(
      alignment: MainAxisAlignment.start,
      children: <Widget>[
        TextButton(
          child: Text('Créer un compte'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp(),
                )
            );
          },
        ),
      ],
    );
  }
}
