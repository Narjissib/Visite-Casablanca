import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class internetprovider extends ChangeNotifier{
  bool _hasinternet=false;
  bool get hasinternet=>_hasinternet;

  internetprovider() {
    checkinternetconnection();
  }
  Future checkinternetconnection()async{
    var result= await Connectivity().checkConnectivity();
    if(result==ConnectivityResult.none){
      _hasinternet=false;
    }
    else{
      _hasinternet=true;
    }
    notifyListeners();

  }

}