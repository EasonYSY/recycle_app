class MyUser{

  final String? uid;
  final bool? is_anonymous;
  MyUser({this.uid,this.is_anonymous});

}


class UserData{
  final String uid;
  final String name;
  final int level;
  final int experiences;

  UserData({required this.uid,required this.name,required this.level,required this.experiences});
}