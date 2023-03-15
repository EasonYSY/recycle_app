import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycle_app/models/myuser.dart';
import 'package:recycle_app/service/database.dart';
import 'package:recycle_app/tools/constants.dart';

class Setting_page extends StatefulWidget {
  const Setting_page({super.key});

  @override
  State<Setting_page> createState() => _Setting_pageState();
}

class _Setting_pageState extends State<Setting_page> {

  final _formKey = GlobalKey<FormState>();
  String _currentName = "";
  final _auth = FirebaseAuth.instance;
  String? userId;

  void getCurrentUserInfo() async {
    //user = await _auth.currentUser();
    userId = _auth.currentUser?.uid; 
  }


  @override
  Widget build(BuildContext context) {
    
    //User user = Provider.of<User>(context);
    UserData userData = Provider.of<UserData>(context);
    getCurrentUserInfo();
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Update your Info.',
              
              style: TextStyle(
                fontSize: 18.0,
                
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Name',
              
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: TextFormField(
                initialValue: userData.name,
                decoration: inputTextDecoration,
                validator: (val) => val!.isEmpty ? 'Please enter a name' : null,
                onChanged: (val) => setState(() => _currentName = val),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.grey[50],
              ),
              child: const Text(
                'confirm'
              ),
              onPressed: () async {
                if(_formKey.currentState!.validate()){
                  await DatabaseService(uid: userId).updateUserData(
                    _currentName,
                    userData.level,
                    userData.experiences,
                  );
                  Navigator.pop(context);
                }
              }
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.grey[50],
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text(
                'cancel'
              ),
            )
          ],
        ),
      ),
    );
  }
}