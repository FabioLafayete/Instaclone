import 'package:flutter/material.dart';
import 'package:instaclone/Adapter/circle_image.dart';

class StoriesAdapter extends StatelessWidget {

  final Map<String, dynamic> bloc;
  StoriesAdapter(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        children: <Widget>[
          Center(
            child: CircleImage.defaultImage(
                image: bloc["perfil"],
                radius: 31.5,
                height: 72,
                widht: 72,
                border: 3
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 75,
            child: Center(
              child: Text(
                bloc["story"],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          )
        ],
      ),
    );
  }
}
