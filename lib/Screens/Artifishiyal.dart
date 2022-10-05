import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

import 'package:provider/provider.dart';
import 'package:tourism/Models/Places_data.dart';

import '../Components/UI_places/Artifishiyal.dart';

class Artifi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text('আর্টিফিসিয়াল'),
      ),
      body: Resuable_ListView_Builder(count:  Provider.of<Place_info>(context).artifi.length, myRoute: myRoute, arrayName:  Provider.of<Place_info>(context).artifi,),
    );
  }
}


List<Route> myRoute = [
   MaterialPageRoute(builder: (_) =>  AList_1() ),

  MaterialPageRoute(builder: (_) =>  AList_2() ),

  MaterialPageRoute(builder: (_) =>  AList_3() ),


  MaterialPageRoute(builder: (_) =>  AList_4() ),


  MaterialPageRoute(builder: (_) =>  AList_5() ),


  MaterialPageRoute(builder: (_) =>  AList_6() ),




  MaterialPageRoute(builder: (_) =>  AList_8() ),


  MaterialPageRoute(builder: (_) =>  AList_9() ),




  MaterialPageRoute(builder: (_) =>  AList_11() ),


  MaterialPageRoute(builder: (_) =>  AList_12() ),

  MaterialPageRoute(builder: (_) =>  AList_13() ),


  MaterialPageRoute(builder: (_) =>  AList_14() ),


  MaterialPageRoute(builder: (_) =>  AList_15() ),







];

