
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/Components/All_Components.dart';
import 'package:tourism/Components/UI_places/Pahaar.dart';
import 'package:tourism/Models/Places_data.dart';

class Pahar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text('পাহাড়'),
      ),
      body: Resuable_ListView_Builder(count:  Provider.of<Place_info>(context).pahar.length, myRoute: myRoute, arrayName: Provider.of<Place_info>(context).pahar,),
    );
  }
}



List<Route> myRoute = [
  MaterialPageRoute(builder: (_) =>  PList_1() ),

  MaterialPageRoute(builder: (_) =>  PList_2() ),

  MaterialPageRoute(builder: (_) =>  PList_3() ),

  MaterialPageRoute(builder: (_) =>  PList_4() ),

  MaterialPageRoute(builder: (_) =>  PList_5() ),

  MaterialPageRoute(builder: (_) =>  PList_6() ),

  MaterialPageRoute(builder: (_) =>  PList_7() ),

  MaterialPageRoute(builder: (_) =>  PList_8() ),

  MaterialPageRoute(builder: (_) =>  PList_9() ),

  MaterialPageRoute(builder: (_) =>  PList_10() ),

  MaterialPageRoute(builder: (_) =>  PList_11() ),


];

