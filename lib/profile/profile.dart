import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.03, right: MediaQuery.sizeOf(context).width * 0.03, top: MediaQuery.sizeOf(context).height * 0.1,  ),
      child: const  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.person,size: 100,),
          SizedBox(height: 40,),
          Text("Abdalrahman Khairy", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Text("deate : 2004 / 6/ 17",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
