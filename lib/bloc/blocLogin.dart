

import 'dart:async';
import 'package:first_bloc/modals/loginModal.dart';
import 'package:flutter/material.dart';
import 'package:first_bloc/bloc/blocProvider.dart';

class BlocLogin extends BlocBase{

  final dataRequest = StreamController<LoginModal>();
  final checkResponse = StreamController<bool>();



  bool checkDetails()
  {
    bool val;
    dataRequest.stream.map((value){
      if(value.username=='bloc' && value.password=="1234")
        {
          val = true;
        }
      else
        {
          val= false;
        }
    });
    return val;
  }


  @override
  void dispose() {
  }
}