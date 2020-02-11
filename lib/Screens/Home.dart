import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/Bloc/bloc.dart';
import 'package:instaclone/Screens/inicio_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController _pageController;
  int page = 0;
  String font = "Billabong";
  Blocbase _bloc;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _bloc = Blocbase();
  }


  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.photo_camera),
            SizedBox(width: 15),
            Container(
              width: 100,
              height: 40,
              child: Image.asset(
                  "lib/Images/icons/instagram_letters.png",
                  fit: BoxFit.fill,
                color: Colors.white,
              ),
            )
          ],
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Color(0xFF323232),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 5),
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
      backgroundColor: Colors.grey[850],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF323232),
            primaryColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                    color: Colors.white54
                )
            )
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          currentIndex: page,
          onTap: (p){
            _pageController.animateToPage(
                p,
                duration: Duration(milliseconds: 300),
                curve: Curves.ease
            );
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30),
                title: Padding(padding: EdgeInsets.all(0))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30),
                title: Padding(padding: EdgeInsets.all(0))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box, size: 30),
                title: Padding(padding: EdgeInsets.all(0))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border, size: 30),
                title: Padding(padding: EdgeInsets.all(0))
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 30),
                title: Padding(padding: EdgeInsets.all(0))
            )
          ],
        ),
      ),
      body: SafeArea(
        child: BlocProvider<Blocbase>(
          bloc: _bloc,
          child: PageView(
                //physics: NeverScrollableScrollPhysics(),
                onPageChanged: (p){
                  setState(() {
                    page = p;
                  });
                },
                controller: _pageController,
                children: <Widget>[
                  InicioScreen(),
                  Container(color: Colors.redAccent),
                  Container(color: Colors.white),
                  Container(color: Colors.pinkAccent),
                  Container(color: Colors.grey)
                ],
              ),
        )
      ),
    );
  }
}
