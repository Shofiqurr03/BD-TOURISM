
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/Components/All_Components.dart';
import 'package:tourism/Components/UI_places/Sea_Beach.dart';
import 'package:tourism/Models/Places_data.dart';
import 'package:tourism/Screens/All_details_two.dart';




class Sea_beach extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text('সমুদ্র সৈকত'),
      ),
      body: Resuable_ListView_Builder(count: Provider.of<Place_info>(context).shomudro.length, myRoute: myRoute, arrayName: Provider.of<Place_info>(context).shomudro,),
    );
  }
}



List<Route> myRoute = [
  MaterialPageRoute(builder: (_) => List_1() ),
  MaterialPageRoute(builder: (_) => List_2() ),
  MaterialPageRoute(builder: (_) => List_3() ),

  MaterialPageRoute(builder: (_) => List_4() ),

  MaterialPageRoute(builder: (_) => List_5() ),

  MaterialPageRoute(builder: (_) => List_6() ),

  MaterialPageRoute(builder: (_) => List_7() ),

  MaterialPageRoute(builder: (_) => List_8() ),

  MaterialPageRoute(builder: (_) => List_9() ),




];


