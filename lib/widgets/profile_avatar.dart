import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/config/pallete.dart';
import 'package:flutter/material.dart';

class ProfileAvater extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const ProfileAvater({
    Key key, 
    @required
    this.imageUrl, 
    this.isActive = false
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
          children:[ 
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: CachedNetworkImageProvider(
                this.imageUrl
              )
            ),
            isActive ? Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 15.0,
                height:15.0,
                decoration: BoxDecoration(
                  color: Palette.online,
                  shape:BoxShape.circle,
                  border: Border.all(
                    width:2.0,
                    color: Colors.white
                  )
                )
              )
            ): const SizedBox.shrink()
          ]
    );
  }
}