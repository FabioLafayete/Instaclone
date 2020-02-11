import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/Adapter/circle_color.dart';
import 'package:instaclone/Adapter/post_adapter.dart';
import 'package:instaclone/Adapter/stories_adapter.dart';
import 'package:instaclone/Bloc/bloc.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _bloc = BlocProvider.of<Blocbase>(context);


    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          StreamBuilder<List>(
            stream: _bloc.outBloc,
            builder: (context, snapshot){
              if(!snapshot.hasData){
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container(
                  padding: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return StoriesAdapter(snapshot.data[index]);
                      }
                  ),
                );
              }
            },
          ),
          Divider(color: Colors.white, thickness: 0.2),
          SizedBox(height: 3),
          StreamBuilder<List>(
            stream: _bloc.outBloc,
            builder: (context, snapshot){
              if(!snapshot.hasData){
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return PostAdapter(snapshot.data[index]);
                    }
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
