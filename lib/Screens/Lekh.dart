import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tourism/Components/All_Components.dart';
import 'package:tourism/Components/UI_places/Lekh.dart';
import 'package:tourism/Models/Places_data.dart';

class Lekh extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text('লেক'),
      ),
      body: Resuable_ListView_Builder(count:  Provider.of<Place_info>(context).lekh.length, myRoute: myRoute, arrayName:  Provider.of<Place_info>(context).lekh,),
    );
  }
}



List<Route> myRoute = [
   MaterialPageRoute(builder: (_) =>  LList_1() ),
  MaterialPageRoute(builder: (_) =>  LList_2() ),
  MaterialPageRoute(builder: (_) =>  LList_3() ),

  MaterialPageRoute(builder: (_) =>  LList_4() ),


  MaterialPageRoute(builder: (_) =>  LList_5() ),


  MaterialPageRoute(builder: (_) =>  LList_6() ),


  MaterialPageRoute(builder: (_) =>  LList_7() ),


  MaterialPageRoute(builder: (_) =>  LList_8() ),




];

