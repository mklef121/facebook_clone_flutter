import 'package:facebook_clone/config/pallete.dart';
import 'package:facebook_clone/models/user.dart';
import 'package:facebook_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  Rooms({
    Key key,
    this.onlineUsers
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal:4.0),
        itemCount: 1+ this.onlineUsers.length,
        itemBuilder: (context, int index){
          if(index == 0){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child:_CreateRoom()
            );
          }
          final User user = onlineUsers[index - 1];
          return Padding(
            // child: ,
            padding: EdgeInsets.symmetric(horizontal:8.0), 
            child: ProfileAvater(imageUrl: user.imageUrl, isActive:true),
          );
        }
      ),
    );
  }
}

class _CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: (){},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      borderSide: BorderSide(
          width:3.0,
          color:Colors.blueAccent[400]
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
             shaderCallback: (Rect bounds) {
               return Palette.createRoomGradient.createShader(bounds);
             },
              child: Icon(
              Icons.video_call,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            "Create\nRoom",
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}