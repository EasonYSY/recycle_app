/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycle_app/models/myuser.dart';
import 'package:recycle_app/screen/authenticate/forget_password.dart';
import 'package:recycle_app/screen/camera/take_picture_screen.dart';
import 'package:recycle_app/screen/home_page/3friend_page.dart';
import 'package:recycle_app/screen/home_page/setting_page.dart';
import 'package:recycle_app/screen/home_page/userinfo_widget.dart';
import 'package:recycle_app/service/auth.dart';
import 'package:recycle_app/service/database.dart';
import 'package:recycle_app/screen/camera/take_picture_screen.dart';
import 'package:google_fonts/google_fonts.dart';

//import '/flutter_flow/flutter_flow_icon_button.dart';
//import '/flutter_flow/flutter_flow_theme.dart';
//import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:recycle_app/screen/home_page/articles_links.dart';

import 'package:recycle_app/tools/experience_system.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    UserData userData = Provider.of<UserData>(context);

    return Scaffold(
      backgroundColor:Colors.transparent,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: AppBar(
          backgroundColor:Color.fromRGBO(31, 64, 92, 1),
          automaticallyImplyLeading: false,
          title: Text(
            'Rethink, Recycle!',
            style:TextStyle(
                  fontFamily: 'Rubik',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          child: Stack(
            children: [
              Image.asset(
                'Background.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Welcome ,\nto our recycle app!\n\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto Condensed',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Text(
                                'Recycling is an essential activity that helps us reduce waste and protect the environment.',
                               style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                              ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Our app is designed to make recycling easier and more accessible by helping you identify the different types of waste and showing you how to recycle them properly. \n\n\n\nNow you may take a picture of your waste  and let this app tell you what that is!',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                        ),
                       /* Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color:Colors.transparent,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Now you may take a picture of your waste  and let this app tell you what that is!',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                        ),*/
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => Provider(
                                  create: (context) => userData,
                                  builder: (context, child) => TakePictureScreen(),
                                ),
                              ),
                            );
                          },
                          backgroundColor: Color.fromRGBO(31, 64, 92, 1),
                          tooltip: 'Take a photo',
                          child: const Icon(Icons.camera_alt_rounded),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Text(
                            'Tap here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.6, -1),
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                      ),
                      alignment: AlignmentDirectional(0, -1),
                      child: Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                          IconButton(
                            icon: const Icon(Icons.home),
                            tooltip: 'Home',
                            onPressed: () {

                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.article),
                            tooltip: 'Articles',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Provider(
                                    create: (context) => userData,
                                    builder: (context, child) => Articals_links(),
                                  ),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.people),
                            tooltip: 'Friends',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Provider(
                                    create: (context) => userData,
                                    builder: (context, child) => const FriendPage(),
                                  ),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.settings),
                            tooltip: 'Settings',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Provider(
                                    create: (context) => userData,
                                    builder: (context, child) => const Setting_page(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
    
    






      




*/
 
