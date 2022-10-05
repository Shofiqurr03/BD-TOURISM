import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

import 'package:provider/provider.dart';
import 'package:tourism/Components/UI_places/Jorna.dart';
import 'package:tourism/Models/Places_data.dart';

class Jorna extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        title: Text('ঝর্ণা'),
      ),
      body: Resuable_ListView_Builder(count: Provider.of<Place_info>(context).jorna.length, myRoute: myRoute, arrayName:  Provider.of<Place_info>(context).jorna,),
    );
  }
}



List<Route> myRoute = [
   MaterialPageRoute(builder: (_) =>  JoList_1() ),

  MaterialPageRoute(builder: (_) =>  JoList_2() ),

  MaterialPageRoute(builder: (_) =>  JoList_3() ),

  MaterialPageRoute(builder: (_) =>  JoList_4() ),

  MaterialPageRoute(builder: (_) =>  JoList_5() ),

  MaterialPageRoute(builder: (_) =>  JoList_6() ),

  MaterialPageRoute(builder: (_) =>  JoList_7() ),

  MaterialPageRoute(builder: (_) =>  JoList_8() ),

  MaterialPageRoute(builder: (_) =>  JoList_9() ),

  MaterialPageRoute(builder: (_) =>  JoList_10() ),

  MaterialPageRoute(builder: (_) =>  JoList_11() ),

  MaterialPageRoute(builder: (_) =>  JoList_12() ),

  MaterialPageRoute(builder: (_) =>  JoList_13() ),

  MaterialPageRoute(builder: (_) =>  JoList_14() ),




];

