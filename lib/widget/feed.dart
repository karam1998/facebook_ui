import 'package:flutter/material.dart';

import 'button.dart';
Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                    SizedBox(height: 3,),
                    Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                  ],
                )
              ],
            ),
            IconButton(
              icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
              onPressed: () {},
            )
          ],
        ),
        SizedBox(height: 20,),
        Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
        SizedBox(height: 20,),
        feedImage != '' ?
        Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(feedImage),
                  fit: BoxFit.cover
              )
          ),
        ) : Container(),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                makeLike(),
                Transform.translate(
                    offset: Offset(-5, 0),
                    child: makeLove()
                ),
                SizedBox(width: 5,),
                Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
              ],
            ),
            Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            makeLikeButton(isActive: true),
            makeCommentButton(),
            makeShareButton(),
          ],
        )
      ],
    ),
  );
}
