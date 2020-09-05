import 'package:facebook_clone/models/all_models.dart';
import 'package:facebook_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final User user;

  CreatePost({
    @required
    this.user
  });
  @override
  Widget build(BuildContext context) {
    return Container(
            // height: 100,
            padding: EdgeInsets.fromLTRB(12.0,8.0,12.0,0.0),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    ProfileAvater(
                      imageUrl: this.user.imageUrl,
                    ),
                    SizedBox(width: 8.0,),
                    Expanded(
                      child: TextField(
                        decoration:InputDecoration(
                        hintText: "What's on your mind",
                        border: InputBorder.none
                      )
                    )
                    )
                    
                  ],
                ),
                Divider(
                  height:10.0,
                  // color: Colors.black,
                  thickness: 0.5,

                ),
                Container(
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton.icon(
                        onPressed: (){}, 
                        icon: Icon(
                          Icons.videocam,
                          color: Colors.red,
                        ), 
                        label: Text("Live")
                      ),

                      VerticalDivider(
                        width:8.0,
                      ),
                      FlatButton.icon(
                        onPressed: (){}, 
                        icon: Icon(
                          Icons.photo_library,
                          color: Colors.green,
                        ), 
                        label: Text("Photo")
                      ),

                      VerticalDivider(
                        width:8.0,
                      ),
                      FlatButton.icon(
                        onPressed: (){}, 
                        icon: Icon(
                          Icons.video_call,
                          color: Colors.purpleAccent,
                        ), 
                        label: Text("Room")
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}