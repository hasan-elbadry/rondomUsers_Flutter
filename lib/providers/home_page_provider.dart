import 'package:flutter/cupertino.dart';
import 'package:random_user_using_api/services/api_service.dart';

class HomePageProvider with ChangeNotifier {
  List<List<String?>>? users;

  Future<void> setData() async {
    users = await ApiService.getAll();
    notifyListeners();
  }
}
