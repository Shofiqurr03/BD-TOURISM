import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

import 'package:provider/provider.dart';
import 'package:tourism/Components/UI_places/Jadughar.dart';
import 'package:tourism/Models/Places_data.dart';

class Jadughar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text('জাদুঘর'),
      ),
      body: Resuable_ListView_Builder(count:  Provider.of<Place_info>(context).jadughar.length, myRoute: myRoute, arrayName:  Provider.of<Place_info>(context).jadughar,),
    );
  }
}


List<Route> myRoute = [
   MaterialPageRoute(builder: (_) =>  JList_1() ),
  MaterialPageRoute(builder: (_) =>  JList_2() ),
  MaterialPageRoute(builder: (_) =>  JList_3() ),
  MaterialPageRoute(builder: (_) =>  JList_4() ),

  MaterialPageRoute(builder: (_) =>  JList_5() ),

  MaterialPageRoute(builder: (_) =>  JList_6() ),

  MaterialPageRoute(builder: (_) =>  JList_7() ),

  MaterialPageRoute(builder: (_) =>  JList_8() ),

  MaterialPageRoute(builder: (_) =>  JList_9() ),

  MaterialPageRoute(builder: (_) =>  JList_10() ),








];

