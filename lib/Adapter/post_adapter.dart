import 'package:flutter/material.dart';

import 'circle_image.dart';

class PostAdapter extends StatelessWidget {

  final Map<String, dynamic> bloc;
  PostAdapter(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleImage.defaultImage(
                      image: bloc["perfil"],
                      radius: 18,
                      widht: 40,
                      height: 40,
                      border: 1.5
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 180,
                    child: Text(
                      bloc["name"],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )
                ],
              ),
              Container(
                height: 45,
                width: 45,
                child: IconButton(
                  icon: Image.asset(
                      "lib/Images/icons/instagram_ellipses.png",
                      color: Colors.white
                  ),
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
        Container(
          child: Image.asset(bloc["image"], fit: BoxFit.fill),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 30,
                      ),
                    onPressed: (){},
                  ),
                  Container(
                    height: 43,
                    width: 43,
                    child: IconButton(
                      icon: Image.asset(
                          "lib/Images/icons/instagram_comment.png",
                          color: Colors.white
                      ),
                      onPressed: (){},
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    child: IconButton(
                      icon: Image.asset(
                          "lib/Images/icons/instagram_send.png",
                          color: Colors.white
                      ),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
              Container(
                height: 49,
                width: 49,
                child: IconButton(
                  icon: Image.asset(
                      "lib/Images/icons/instagram_saved.png",
                      color: Colors.white
                  ),
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30, left: 15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("Liked by ",style: TextStyle(color: Colors.white)),
                  Text(bloc["like"],
                      style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)
                  ),
                  Text(" and ",style: TextStyle(color: Colors.white)),
                  Text(bloc["count"] + " others",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold)
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bloc["name"],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold, fontSize: 14
                      )
                  ),
                  Expanded(
                    child: Text(
                        " ${bloc["text"]}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white, fontSize: 16)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Container(
                alignment: Alignment.centerLeft,
                  child: Text(bloc["countComments"],style: TextStyle(color: Colors.white54))
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleImage.defaultImage(
                          image: "lib/Images/perfil/lafayete.jpeg",
                          radius: 15,
                          widht: 35,
                          height: 35,
                          border: 1.5
                      ),
                      SizedBox(width: 10),
                      Text("Add a comment...",style: TextStyle(color: Colors.white54))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: <Widget>[
                        Text("👊"),
                        SizedBox(width: 10),
                        Text("😂"),
                        SizedBox(width: 10),
                        Icon(Icons.add_circle_outline, size: 15, color: Colors.white)
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                      bloc["ago"],
                      style: TextStyle(color: Colors.white54,
                        fontSize: 11
                      )
                  )
              ),
            ],
          ),
        )
      ],
    );
  }
}
