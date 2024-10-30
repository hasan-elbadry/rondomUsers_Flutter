class UserModel {
  List<dynamic> data;

  UserModel({required this.data});

  // static List<List<String>> getData(Map<String, dynamic> json) {
  //   List<List<String>> userData = [];
  //   List<String> userNames = [];
  //   List<String> userEmails = [];
  //   List<String> userPic = [];
  //
  //   userData.map((user) =>{
  //
  //   });
  //
  //
  //   for (int i = 0; i < 5; i++) {
  //     userNames.add(json['results'][i]['name']['first']);
  //     userEmails.add(json['results'][i]['location']['city']);
  //     userPic.add(json['results'][i]['picture']['medium']);
  //   }
  //   userData.addAll([userNames, userEmails, userPic]);
  //   return userData;
  // }



  factory UserModel.getData(Map<String, dynamic> json) {
    List<dynamic> fullData = [];

    for (int i = 0; i < 5; i++) {
      fullData.add(json['results'][i]);
    }

    fullData = fullData.map((user) =>
    {'name' : user['name']['first'] + user['name']['last'],
      'location' : user['location']['city'],
      'pic' : user['picture']['large']
    }).toList();
  return UserModel(data: fullData);
  }
}
