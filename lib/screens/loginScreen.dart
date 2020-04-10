import 'package:first_bloc/bloc/blocLogin.dart';
import 'package:first_bloc/modals/loginModal.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

 final TextEditingController username =TextEditingController();
  TextEditingController password =TextEditingController();

  BlocLogin _bloc= BlocLogin();
  LoginModal userData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(controller:username,),
            TextField(controller: password,),
            RaisedButton(onPressed: (){
              userData = LoginModal(username: username.text,password: password.text) ;
              _bloc.dataRequest.sink.add(userData);

            },child: Text('Login'),)
          ],
        ),
      ),
    );
  }
}
