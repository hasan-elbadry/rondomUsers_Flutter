import 'package:flutter/cupertino.dart';
import 'package:random_user_using_api/services/api_service.dart';

class UserModel {
  Map<String, dynamic> data;

  UserModel({required this.data});

  static List<List<String>> getData(Map<String, dynamic> json) {
    List<List<String>> userData = [];
    List<String> userNames = [];
    List<String> userEmails = [];
    List<String> userPic = [];

    for (int i = 0; i < 5; i++) {
      userNames.add(json['results'][i]['name']['first']);
      userEmails.add(json['results'][i]['location']['city']);
      userPic.add(json['results'][i]['picture']['medium']);
    }
    userData.addAll([userNames, userEmails, userPic]);
    return userData;
  }
}
