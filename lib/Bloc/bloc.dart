import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class Blocbase extends BlocBase{

  final _blocController = BehaviorSubject<List>();

  Stream<List> get outBloc => _blocController.stream;

  Map<String, Map<String, dynamic>> _bloc = {};

  Blocbase(){
    addBlocListenersStores();
  }

  void addBlocListenersStores(){

    _bloc.addAll({
      "0": {
        "name": "_lafayete",
        "story": "Your Story",
        "like": "neymarjr",
        "count": "9.5K",
        "text": "👨‍💻",
        "countComments": "View all 1,345 comments",
        "ago": "3 days ago",
        "image": "lib/Images/photo/lafayete.jpeg",
        "perfil": "lib/Images/perfil/lafayete.jpeg",
      },
      "1": {
        "name": "neymarjr",
        "story": "neymarjr",
        "like": "cristiano",
        "count": "2.7M",
        "text": "I just play football 🤷🏽‍♂️⚽️",
        "countComments": "View all 9,345 comments",
        "ago": "December 21, 2019",
        "image": "lib/Images/photo/neymarjr.jpeg",
        "perfil": "lib/Images/perfil/neymarjr.jpg",
      },
      "2": {
        "name": "cristiano",
        "story": "cristiano",
        "like": "neymarjr",
        "count": "3.2M",
        "text": "💥👌",
        "countComments": "View all 345 comments",
        "ago": "2 hours ago",
        "image": "lib/Images/photo/cristiano.jpeg",
        "perfil": "lib/Images/perfil/cristiano.jpg",
      },
      "3": {
        "name": "therock",
        "story": "therock",
        "like": "flutterando",
        "count": "1.4M",
        "text": "Goosebumps.",
        "countComments": "View all 10,245 comments",
        "ago": "1 day ago",
        "image": "lib/Images/photo/therock.jpeg",
        "perfil": "lib/Images/perfil/therock.jpg",
      },
      "4": {
        "name": "flutterando",
        "story": "flutterando",
        "like": "neymarjr",
        "count": "200.2M",
        "text": "Agora a Flutterando tem o selo Lucas MontanDo de Qualidade. PODE CONFIAR!",
        "countComments": "View all 445 comments",
        "ago": "2 days ago",
        "image": "lib/Images/photo/flutterando.jpeg",
        "perfil": "lib/Images/perfil/flutterando.jpg",
      },
      "5": {
        "name": "codigofontetv",
        "story": "codigofontetv",
        "like": "_lafayete",
        "count": "35.2K",
        "text": "Pra quem nos pergunta qual terminal utilizamos no Windows aí vai a dica.",
        "countComments": "View all 135 comments",
        "ago": "5 hours ago",
        "image": "lib/Images/photo/codigofontetv.jpeg",
        "perfil": "lib/Images/perfil/codigofontetv.jpg",
      },
      "6": {
        "name": "spacex",
        "story": "spacex",
        "like": "therock",
        "count": "23.7K",
        "text": "Tomorrow’s test will demonstrate Crew Dragon’s ability to separate from Falcon 9 and carry astronauts to safety in the unlikely event of an emergency on ascent",
        "countComments": "View all 3,245 comments",
        "ago": "10 hours ago",
        "image": "lib/Images/photo/spacex.jpeg",
        "perfil": "lib/Images/perfil/spacex.jpg",
      },
      "7": {
        "name": "facebook",
        "story": "facebook",
        "like": "flutterando",
        "count": "16.7K",
        "text": "The best 👌",
        "countComments": "View all 40,245 comments",
        "ago": "8 hours ago",
        "image": "lib/Images/photo/facebook.jpeg",
        "perfil": "lib/Images/perfil/facebook.jpg",
      },
      "8": {
        "name": "oracle",
        "story": "oracle",
        "like": "facebook",
        "count": "57.7K",
        "text": "Happy #NationalUmbrellaDay! ☔️ Rain or shine, #OracleCloud has you covered, so you’ll have more time for the things that matter most. ☁️",
        "countComments": "View all 6,456 comments",
        "ago": "December 31, 2019",
        "image": "lib/Images/photo/oracle.jpeg",
        "perfil": "lib/Images/perfil/oracle.jpg",
      }

    });

    outBloc.listen((List a){
      //print(a);
      return a;
    });

    _blocController.add(_bloc.values.toList());

  }

  @override
  void dispose() {
    _blocController.close();
  }

}