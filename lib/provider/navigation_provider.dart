import 'package:flutter/material.dart';
import 'package:intern_project_1/provider/provider_service.dart';

class NavigationProvider extends ChangeNotifier{
  final NavigationService navigationService = NavigationService();
  void navigateToPage(String routeName, {Object? arguments}){
    navigationService.navigateTo(routeName, arguments: arguments);

  }
  void goBack(){
    navigationService.goBack();
  }
}