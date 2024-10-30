import 'package:flutter/cupertino.dart';
import 'package:random_user_using_api/models/user_model.dart';
import 'package:random_user_using_api/services/api_service.dart';

class HomePageProvider with ChangeNotifier {
  UserModel? users;

  Future<void> setData() async {
    users = await ApiService.getAll();
    notifyListeners();
  }
}
