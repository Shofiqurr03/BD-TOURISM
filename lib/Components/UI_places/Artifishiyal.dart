


import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

int index = -1;


class AList_1 extends StatefulWidget {

  @override
  _AList_1State createState() => _AList_1State();
}

class _AList_1State extends State<AList_1> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        data1: 'জাম্বুরি পার্ক ',
        data2: 'বাংলাদেশের বাণিজ্যিক নগরী চট্টগ্রামের আগ্রাবাদের এস এম মোরশেদ সড়কে গড়ে তোলা হয়েছে আধুনিক জাম্বুরি পার্ক (Jamburi Park)। ২০১৮ সালের আগে প্রায় সাড়ে ৮ একর আয়তনের এই জায়গাটি পরিত্যক্ত অবস্থায় ছিল। সোনালু, নাগেশ্বর, চাঁপা, রাধাচূড়া, চাঁপা, বকুল, শিউলি, সাইকাস, টগর, জারুল ইত্যাদি গাছ ছাড়াও জাম্বুরি পার্কে প্রায় ৬৫ প্রজাতির ১০ হাজার গাছের চারা রোপন করা হয়েছে। আর দর্শনার্থীদের হাঁটার জন্য সবুজ ঘাসে মোড়া এই পার্কে রয়েছে ৮ হাজার ফুট রাস্তা।',
        data3: 'কিভাবে যাবেন',
        data4: 'জাম্বুরি পার্ক যাওয়ার জন্য প্রথমে চট্টগ্রাম আসতে হবে। ঢাকা থেকে বাস, ট্রেন বা গাড়িতে চট্টগ্রাম যেতে পারবেন। ঢাকার সায়দাবাদ, গাবতলি বা মহাখালি থেকে দেশ ট্র্যাভেলস, তুবা লাইন, সোহাগ পরিবহন, গ্রিন লাইন, এনা, ইউনিক, শ্যামলী, ঈগল, রয়েল কোচ সহ বিভিন্ন বাস প্রতিদিন ঢাকা-চট্টগ্রাম রুটে যাতায়াত করে।',
        data5: 'কোথায় থাকবেন',
        data6: 'চট্টগ্রাম শহরে থাকার জন্য প্রায় সকল ধরণ ও মানের আবাসিক হোটেল রয়েছে। শহরের যেকোন জায়গাতেই আপনার বাজেট এবং পছন্দমত হোটেল পাবেন। স্টেশন রোড, জিএসসি মোড় কিংবা আগ্রাবাদ এলাকায় থাকার জন্যে ১০০০-৫০০০ টাকা ভাড়ার বিভিন্ন মানের হোটেল আছে। এছাড়া সরকারি কর্মকর্তাদের কম খরচে থাকার জন্য আছে সার্কিট হাউজ, জেলা পরিষদের রেস্ট হাউজ ও বন বিভাগের রেস্ট হাউজ।',
        data7: 'কোথায় খাবেন',
        data8: 'চট্টগ্রামের ঐতিহ্যবাহী খাবারের জন্য হোটেল জামানের বেশ সুনাম রয়েছে। আর মেজবানি খাবারের জন্য চকবাজারের মেজবান হাইলে আইয়্যুন রেস্তোরাঁ প্রসিদ্ধ। এছাড়া চট্টগ্রাম শহরে অসংখ্য ভালমানের খাবার হোটেল ও রেস্টুরেন্ট ছড়িয়ে আছে। এদের মধ্যে বারকোড ক্যাফে, ক্যাফে ৮৮, গ্রিডি গাটস, সেভেন ডেইজ, গলফ গার্ডেন রেস্টুরেন্ট, কোষ্টাল মারমেইড রেস্টুরেন্ট এন্ড লাউঞ্জ, বোনানজা পোর্ট রেস্টুরেন্ট প্রভৃতি অন্যতম।'
    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/1 jamburi park.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}




class AList_2 extends StatefulWidget {

  @override
  _AList_2State createState() => _AList_2State();
}

class _AList_2State extends State<AList_2> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'ফয়েজ লেক',
        data2:'ফয়েজ লেক (Foys Lake) একটি কৃত্রিম হ্রদ। চট্টগ্রামের পাহাড়তলী রেলওয়ে স্টেশন সংলগ্ন খুলশি এলাকায় প্রায় ৩৩৬ একর জায়গা জুড়ে ফয়েজ লেকের অবস্থান। চট্টগ্রামের জিরো পয়েন্ট থেকে এই লেকের দূরত্ব মাত্র ৮ কিলোমিটার। ১৯২৪ সালে আসাম বেঙ্গল রেলওয়ে কতৃপক্ষ এই লেকটি খনন করেন। তৎকালীন সময়ে লেকটি পাহারতলী লেক নামে পরিচিতি পেলেও পরবর্তীতে ব্রিটিশ প্রকৌশলীর নামানুসারে লেকটির নামকরণ করা হয় ফয়েজ লেক। আর এই ব্রিটিশ প্রকৌশলী ফয়েজ লেকের নকশা তৈরি করেছিলেন। চারিদিকে ছোটবড় পাহাড় ঘেরা ফয়েস লেকের কাছে আছে চট্টগ্রাম শহরের সবচেয়ে উঁচু পাহাড় বাটালি হিল। এছাড়া এখানে গোধূলী, অরুনাময়ী, মন্দাকিনী, আকাশমনি, অলকানন্দা এবং দক্ষিনী নামের হৃদ রয়েছে। আর হ্রদের পানির শোভা বাড়িয়েছে সারি সারি ভাসমান নৌকা। ২০০৫ সালে ফয়’স লেকে একটি আধুনিক অ্যামিউজমেন্ট পার্ক এবং বেশকিছু রিসোর্ট তৈরি করা হয়েছে। ফয়’স লেক অ্যামিউজমেন্ট পার্কে রয়েছে মিনি চিড়িয়াখানা, সার্কাস সুইং, রোলার কোষ্টার, বাম্পার কার, জায়ান্ট ফেরিস হুইল, ড্রাই স্লাইড, ফ্যামিলি ট্রেন, প্যাডেল বোট, ফ্লোটিং ওয়াটার প্লে, পাইরেট শিপ, বোট রাইডিং, ল্যান্ডস্কেপিং সহ বেশকিছু আকর্ষনীয় রাইড। আরও আছে পিকনিক স্পট, পর্যবেক্ষণ টাওয়ার এবং ‘সী ওয়ার্ল্ড’ নামের একটি ওয়াটার থিম পার্ক। যেখানে সী ওয়ার্ল্ডে স্প্লাশ পুল, ওয়াটার কোষ্টার রাইডারসহ আরো কিছু রোমাঞ্চকর রাইড উপভোগ করার সুযোগ রয়েছে। ফয়েজ লেকের অপূর্ব প্রাকৃতিক পরিবেশের আহ্বানে প্রতি বছর অসংখ্য পর্যটক এখানে ছুটে আসেন।',
        data3:'ফয়েজ লেক যাওয়ার উপায়',
        data4:'ঢাকা থেকে সড়ক, রেল এবং আকাশপথে চট্টগ্রাম যাওয়া যায়। ঢাকার সায়দাবাদ বাস টার্মিনাল থেকে সৌদিয়া, ইউনিক, টি আর ট্রাভেলস, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী, সোহাগ, এস. আলম, মডার্ন লাইন ইত্যাদি বিভিন্ন পরিবহনের এসি-নন এসি বাস চট্টগ্রামের উদ্দেশ্যে ছেড়ে যায়। শ্রেণী ভেদে বাসগুলোর প্রতি সীটের ভাড়া ৫০০ টাকা থেকে ১২০০ টাকার পর্যন্ত হয়ে থাকে। ঢাকা থেকে ট্রেনে চট্টগ্রাম ভ্রমণ করতে চাইলে কমলাপুর কিংবা বিমানবন্দর রেলস্টেশান হতে সোনার বাংলা, সুবর্ন এক্সপ্রেস, তূর্ণা-নিশীথা, মহানগর প্রভাতী/গোধূলী, চট্রগ্রাম মেইলে যাত্রা করতে পারেন। এছাড়া ঢাকা থেকে বেশকিছু এয়ারলাইন্স সরাসরি চট্টগ্রামগামী ফ্লাইট পরিচালনা করে থাকে।',
        data5:'কোথায় থাকবেন',
        data6:'রাত্রিযাপনের জন্য ফয়েজ লেক কতৃপক্ষের ব্যবস্থাপনায় বেশকিছু বিলাসবহুল কটেজ ও রিসোর্ট নির্মাণ করা হয়েছে। নবদম্পতিদের মধুচন্দ্রিমা উপভোগের জন্য আছে আলাদা হানিমুন কটেজের ব্যবস্থা। পাহাড় কিংবা হ্রদমুখী রিসোর্ট অথবা কটেজে একরাত থাকতে হলে ৪০০০ টাকা থেকে ১০,০০০ টাকা পর্যন্ত খরচ করতে হবে। এছাড়া থাকতে পারবেন চট্টগ্রাম শহরে। চট্টগ্রামে বিভিন্ন মানের আবাসিক হোটেল রয়েছে। আপনার বাজেটের মধ্যে পেয়ে যাবেন অনেক হোটেল। বুকিং করে নিন আপনার পছন্দমত।',
        data7:'ফয়েজ লেকে প্রবেশ টিকেটের মূল্য',
        data8:'ফয়েজ লেকের প্রবেশের টিকেটের মূল্য জনপ্রতি ৩০০ টাকা। আর সকল রাইড এবং আইসক্রিমসহ প্রবেশ টিকেটের মূল্য জনপ্রতি ৩৫০ টাকা (বোট রাইড ও বাম্পার কার ব্যতীত)। সী ওয়ার্ল্ডে প্রবেশের জন্য ৪০০, ৫০০ এবং ৬০০ টাকার ৩ টি প্যাকেজ রয়েছে।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/2 foys lake.JPG"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}



class AList_3 extends StatefulWidget {

  @override
  _AList_3State createState() => _AList_3State();
}

class _AList_3State extends State<AList_3> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'প্রজাপতি পার্ক',
        data2:'চট্টগ্রাম জেলার শাহ আমানত বিমানবন্দর ও পতেঙ্গা সমুদ্র সৈকত সংলগ্ন পতেঙ্গা নেভাল একাডেমির ১৫ নম্বর রোডে প্রায় ৬ একর জায়গা জুড়ে দেশের প্রথম প্রজাপতি পার্ক (Butterfly Park Bangladesh) গড়ে তোলা হয়েছে। ২০০৯ সালে স্থাপন করা হলেও ২০১২ সালের অক্টোবর মাসে প্রজাপতি পার্ক আনুষ্ঠানিকভাবে যাত্রা শুরু করে। এই পার্কে প্রায় ২০০ প্রজাতির এক হাজারেরও বেশি প্রজাপতি রয়েছে। এছাড়া এখানে বিশেষজ্ঞদের মাধ্যমে কৃত্রিম প্রজনন করানো হয়। মার্চ থেকে আগস্ট/সেপ্টেম্বর মাস প্রজাপতির স্বাভাবিক প্রজননের সময়। প্রজাপতি পার্কের সামনে বিশালাকার প্রজাপতির ছবি দেখে পার্কের বৈচিত্র্য সম্পর্কে ধারণা পাওয়া যায়। পার্কে প্রবেশ পথের পরেই আছে কৃত্রিম ঝর্ণা ও বাটারফ্লাই জোন। অসংখ্য রঙিন প্রজাপতির আবার বাটারফ্লাই জোন পেরিয়ে সামনে এগিয়ে গেলেই আছে বাটারফ্লাই মিউজিয়াম। এখানে দেশ-বিদেশের বিভিন্ন ধরণের প্রজাপতি বিশেষভাবে প্রদর্শনের জন্য সাজিয়ে রাখা হয়েছে। প্রজাপতির জাদুঘরের সামনে আছে শিশুদের খেলাধূলার জন্য কিছু আকর্ষণীয় রাইড। আর পার্কের জলাশয়ে আছে সাম্পান নৌকায় ভ্রমণের সুবিধা। প্রজাপতি উদ্যানে বনভোজন আয়োজনের সুব্যবস্থা রয়েছে, এছাড়া বিভিন্ন ধরণের অনুষ্ঠান আয়োজনের জন্য আছে কনফারেন্স রুম। আরো আছে আধুনিক রেস্ট হাউস এবং রেস্টুরেন্ট সুবিধা।',
        data3:'সময়সূচী',
        data4:'প্রজাপতি পার্কটি সপ্তাহের সাত দিন সকাল ৯ টা ৩০ মিনিট থেকে সূর্যাস্থ পর্যন্ত খোলা থাকে। আর পার্কের রেস্টুরেন্টটি প্রতিদিন সকাল ১০ টা থেকে রাত ১১ টা পর্যন্ত খোলা থাকে। প্রজাপতি পার্কের রিসোর্টের স্ট্যান্ডার্ড ক্যাটাগরির প্রতিটি কক্ষের ভাড়া ৫০০০ টাকা (প্রতি রাত), সুপার ডিলাক্স ক্যাটাগরির কক্ষের ভাড়া ৬৫০০ টাকা (প্রতি রাত), প্রজাপতি স্যুইটের ভাড়া ৮৫০০ টাকা (প্রতি রাত)। রুম ভাড়ার মূল্যের সাথে ১০% সার্ভিস ও ১৫% ভ্যাট প্রযোজ্য।',
        data5:'কিভাবে যাবেন',
        data6:'প্রজাপতি পার্ক যেতে চাইলে প্রথমে আপনাকে চট্টগ্রাম আসতেই হবে। চট্টগ্রাম থেকে বিভিন্ন উপায়ে পতেঙ্গা সমুদ্র সৈকত সংলগ্ন প্রজাপতি পার্ক যেতে পারবেন। ঢাকা থেকে চট্টগ্রাম যেতে পারবেন বাসে, ট্রেনে কিংবা বিমানে করে। ঢাকার সায়দাবাদ বাস টার্মিনাল থেকে সৌদিয়া, ইউনিক, টিআর ট্রাভেলস, গ্রিনলাইন, হানিফ, শ্যামলী, সোহাগ, এস. আলম, মডার্ন লাইন ইত্যাদি বিভিন্ন পরিবহনের এসি/নন-এসি বাস চট্টগ্রামের উদ্দেশ্যে ছেড়ে যায়। শ্রেণীভেদে বাসের টিকেটের ভাড়া ৫০০ থেকে ১২০০ টাকা। ঢাকা থেকে ট্রেনে চট্টগ্রাম ভ্রমণ করতে চাইলে কমলাপুর কিংবা বিমানবন্দর রেলওয়ে ষ্টেশন হতে সোনার বাংলা, সুবর্ন এক্সপ্রেস, তূর্ণা-নিশীথা, মহানগর প্রভাতী/গোধূলী, চট্রগ্রাম মেইলে যাত্রা করতে পারেন। এছাড়া বেশকিছু বিমান ঢাকা-চট্টগ্রাম ফ্লাইট পরিচালনা করে থাকে।',

      data7: 'খরচ',
      data8: ' প্রাপ্তবয়স্ক বাংলাদেশী নাগরিকদের জন্য প্রজাপতি পার্কের প্রবেশ টিকেটের মূল্য ১০০ টাকা (জনপ্রতি), বাচ্চাদের জন্য প্রবেশ মূল্য ৫০ টাকা (জনপ্রতি)। এছাড়া সার্ক ভুক্ত দেশের নাগরিক এবং অন্য বিদেশী পর্যটকদের জন্য প্রবেশ টিকেটের মূল্য যথাক্রমে ১৫০ ও ২০০ টাকা (জনপ্রতি)।',


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/3 projapoti park.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}



class AList_4 extends StatefulWidget {

  @override
  _AList_4State createState() => _AList_4State();
}

class _AList_4State extends State<AList_4> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'রেডিয়েন্ট ফিস ওয়ার্ল্ড',
        data2:'রেডিয়েন্ট ফিস ওয়ার্ল্ড (Radiant Fish World) বাংলাদেশ নিয়ে এসেছে প্রথম আন্তর্জাতিক মানের ফিস অ্যাকুরিয়াম দেখার সুযোগ। পর্যটন নগরী কক্সবাজার শহরের ঝাউতলায় বিনোদনের নতুন সংযোজন এই ফিশ মিউজিয়াম। এ্যাকুরিয়াম কমপ্লেক্সে এ আছে সাগর ও মিঠা পানির প্রায় ১০০ প্রজাতির মাছ। বিরল প্রজাতির মাছ সহ এখানে আছে হাঙ্গর, পিরানহা, শাপলাপাতা, পানপাতা, কাছিম, কাঁকড়া, সামুদ্রিক শৈল, পিতম্বরী, সাগর কুঁচিয়া, বোল, জেলিফিস, চেওয়া, পাঙ্গাস, আউস সহ আরও অনেক মাছ ও জলজ প্রাণী। ফুটিয়ে তোলা হয়েছে পুকুর ও সাগরের তলদেশের বৈচিত্রময় পরিবেশ। প্রায় দুই ঘন্টা সময় লাগবে এই মেরিন ফিস অ্যাকুরিয়াম পুরোটা ঘুরে দেখতে। অ্যাাকুরিয়ামে ঢুকলে মনে হবে আপনি সাগরের তলদেশে আছে, আর আপনার চারপাশে খেলা করছে বর্ণিল প্রজাতির নানা মাছ ও সামুদ্রিক প্রাণী। কক্সবাজার সমুদ্র সৈকতে বেড়াতে গেলে সমুদ্রতলের এই প্রাণীজগতের মেলা চোখের সামনে দেখার সুযোগ হাতছাড়া করা উচিত হবে না। এছাড়া ১০০ কোটি টাকা ব্যয়ে নির্মিত রেডিয়েন্ট ফিস ওয়ার্ল্ডে আছে থ্রি-নাইন ডি মুভি দেখার নান্দনিক স্পেস, লাইফ ফিশ রেস্টুরেন্ট, দেশী-বিদেশী নানা প্রজাতির পাখি, শিশুদের খেলার জায়গা, ছবি তোলার আকষর্ণীয় ডিজিটাল কালার ল্যাব, মার্কেটিং করার জন্য শপ ও ছাদে প্রাকৃতিক পরিবেশ উপভোগ করার পাশাপাশি বার-বি-কিউ করার আয়োজন করা যাবে।',
    data3:'কিভাবে যাবেন',
    data4:'এই ফিস অ্যাকুরিয়াম দেখতে আপনাকে যেতে হবে কক্সবাজার। তাই দেশের যে প্রান্তেই থাকুন প্রথমেই চলে আসুন কক্সবাজার। কক্সবাজার দর্শনী স্থান ঘুরে দেখার পাশাপাশি হাতে কয়েক ঘন্টা সময় নিয়ে চলে যেতে পারেন এই জলজ জগতে। কক্সবাজার যেখানেই থাকেন সেখান থেকে অনায়াসে সিএনজি/ইজিবাইক/অটোরিক্সা দিয়ে যেতে পারবেন। কলাতলী বীচের সড়কেই পাবেন সব যানবাহান। যেতে হবে ঝাউতলা, প্রধান সড়ক, কক্সবাজার। ইজিবাইক রিজার্ভ নিলে ভাড়া নিবে ৫০-৭০ টাকা। লোকাল ইজিবাইকে ১০-১৫ টাকা দিয়েই চলে যেতে পারবেন ঝাউতলা। পৌষী রেস্টুরেন্ট এর সামনের মোড় থেকে হাতের বাম পাশে অল্প কয়েক কদম গেলেই পেয়ে যাবেন রেডিয়েন্ট ফিশ ওয়ার্ল্ড। সকাল ৯টা থেকে রাত ১১টা পর্যন্ত দর্শনার্থীদের জন্যে খোলা থাকে।',
    data5:'থাকবেন কোথায়',
    data6:'কক্সবাজার প্রায় পাঁচ শতাধিক হোটেল, মোটেল বা কটেজ আছে। এদের মধ্যে মারমেইড বিচ রিসোর্ট, সায়মন বিচ রিসোর্ট, ওশেন প্যারাডাইজ, লং বীচ, কক্স টুডে, হেরিটেজ, সী প্যালেস, সী গাল, কোরাল রীফ, নিটোল রিসোর্ট, আইল্যান্ডিয়া, বীচ ভিউ, সী ক্রাউন, ইউনি রিসোর্ট, উর্মি গেস্ট হাউজ, কোরাল রীফ, ইকরা বিচ রিসোর্ট, অভিসার, মিডিয়া ইন, কল্লোল, হানিমুন রিসোর্ট, নীলিমা রিসোর্ট উল্লেখ্য।',
    data7:'আশেপাশের দর্শনীয় স্থান',
    data8:'কক্সবাজার সমুদ্র সৈকত বার্মিজ মার্কেট ঝাউতলা বীচ দরিয়া নগর প্যারাসেইলিং হিমছড়ি মেরিন ড্রাইভ রোড ইনানী বীচ মহেশখালী রামু বৌদ্ধ জাদি'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/4 radient fish world.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}



class AList_5 extends StatefulWidget {

  @override
  _AList_5State createState() => _AList_5State();
}

class _AList_5State extends State<AList_5> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'মেরিন ড্রাইভ রোড',
        data2:'বর্তমানে কক্সবাজার ভ্রমনের সবচেয়ে আকর্ষণীয় বিষয় হলো পৃথিবীর দীর্ঘতম মেরিন ড্রাইভ রোড (Marine Drive Road)। ৮০ কিলোমিটার দীর্ঘ এই রোড কক্সবাজারের কলাতলী থেকে শুরু হয়ে টেকনাফ পর্যন্ত বিস্তৃত। মেরিন ড্রাইভ রোডের এক দিকে রয়েছে উত্তাল সমুদ্র সৈকত আর অন্য দিকে রয়েছে সবুজের ঢাকা ছোট-বড় পাহাড়। আবার কোথাও কোথাও পাহাড়ের গা বেয়ে ঝর্ণা ধারার দেখা মিলে। মেরিন ড্রাইভ রোড দিয়ে যেতে যেতে বিস্তৃত সাগরের সমস্ত সৌন্দর্য্য আহরণ ও জেলেদের সাগরে মাছ ধরার দৃশ্য উপভোগ করা যায়। সেই সাথে সমুদ্র সৈকতে দেখা মিলবে টেকনাফ গর্জন ফরেস্ট খ্যাত চিরহরিৎ বন। কক্সবাজারের কলাতলী বা সুগন্ধা পয়েন্ট থেকে খোলা জিপ, মাইক্রোবাস, সিএনজি কিংবা অটোরিকশায় মেরিন ড্রাইভ রোড দিয়ে হিমছড়ি ও ইনানী সমুদ্র সৈকত যাওয়া যায়।',
        data3:'মেরিন ড্রাইভ রোড কিভাবে যাবেন',
        data4:'মেরিন ড্রাইভ রোডে ভ্রমণ করতে হলে আপনাকে কক্সবাজার আসতেই হবে। ঢাকা থেকে কক্সবাজার বিভিন্ন উপায়ে আসা যায়। ঢাকা থেকে সৌদিয়া, এস আলম মার্সিডিজ বেঞ্জ, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী পরিবহন, সোহাগ পরিবহন, এস.আলম পরিবহন, মডার্ন লাইন ইত্যাদি বাস প্রতিদিন কক্সবাজারের উদ্দেশ্যে ছেড়ে যায়। শ্রেণী ভেদে বাসগুলোর প্রতি সীটের ভাড়া ৯০০ টাকা থেকে ২৫০০ টাকা পর্যন্ত। ঢাকা থেকে ট্রেনে কক্সবাজার ভ্রমণ করতে চাইলে কমলাপুর কিংবা বিমানবন্দর রেলস্টেশান হতে সোনার বাংলা, সুবর্ন এক্সপ্রেস, তূর্ণা-নিশীথা, মহানগর প্রভাতী/গোধূলী ট্রেনে সুবিধানুযায়ী যাত্রা করতে পারেন। এরপর চট্টগ্রামের নতুন ব্রিজ এলাকা,  অলংকার মোড়, সিনেমা প্যালেস অথবা ধামপাড়া বাস্ট স্ট্যান্ড থেকে এস আলম, হানিফ অথবা ইউনিক পরিবহনের বাসে কক্সবাজার আসতে পারবেন। বাস ভেদে ভাড়া ৩৫০ থেকে ৮০০ টাকা নিবে।',
        data5:'কোথায় থাকবেন',
        data6:'কক্সবাজার প্রায় পাঁচ শতাধিক হোটেল, মোটেল বা কটেজ আছে। এদের মধ্যে মারমেইড বিচ রিসোর্ট, সায়মন বিচ রিসোর্ট, ওশেন প্যারাডাইজ, লং বীচ, কক্স টুডে, হেরিটেজ, সী প্যালেস, সী গাল, কোরাল রীফ, নিটোল রিসোর্ট, আইল্যান্ডিয়া, বীচ ভিউ, সী ক্রাউন, ইউনি রিসোর্ট, উর্মি গেস্ট হাউজ, কোরাল রীফ, ইকরা বিচ রিসোর্ট, অভিসার, মিডিয়া ইন, কল্লোল, হানিমুন রিসোর্ট, নীলিমা রিসোর্ট উল্লেখ্য। অফ সিজনে অগ্রিম হোটেল বুকিং না দিলেও রুম পাবার নিশ্চয়তা থাকে কিন্তু ডিসেম্বরের ১৫ থেকে জানুয়ারী ১৫ তারিখ পর্যন্ত অগ্রিম বুকিং দিয়ে যাওয়াই শ্রেয়।অফসিজনে সাধারণত হোটেলের ভাড়া অর্ধেকেরও কম থাকে। সময় থাকলে কক্সবাজার নেমেই একটু দরদাম করে হোটেল খুঁজে নিলেই ভালো। বিচ ও মেইন রোড থেকে হোটেল যত দূরে হবে থাকার ভাড়া সাধারণত কম হয়ে থাকে। হোটেল খোঁজার ক্ষেত্রে রিকশাওয়ালা বা সিএনজিওয়ালার পরামর্শ নেয়া উচিত নয়। প্রয়োজনে হোটেলের ফেইসবুক পেইজ বা ওয়েবাসাইট থেকে তথ্য সংগ্রহ করা যেতে পারে।',
        data7:'কোথায় খাবেন',
        data8:'মেরিন ড্রাইভ রোডের বিভিন্ন স্থানে বিভিন্ন মানের রেস্টুরেন্ট গড়ে উঠেছে। চাইলে এসব রেস্টুরেন্টের একটাতে উদরপূর্তি করে ফেলতে পারেন। আবার কক্সবাজারে সব ধরণ ও মানের রেস্টুরেন্ট আছে। মধ্যম মানের বাজেট রেস্টুরেন্টের মধ্যে রোদেলা, ঝাউবন, ধানসিঁড়ি, পৌষি, নিরিবিলি ইত্যাদি উল্লেখ করার মত। সিজন অনুসারে অন্য অনেক কিছুর মত এখানে খাবারের দামও কম/বেশী হতে পারে।'
    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/5 marine drive.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}




class AList_6 extends StatefulWidget {

  @override
  _AList_6State createState() => _AList_6State();
}

class _AList_6State extends State<AList_6> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'রামু বৌদ্ধ বিহার',
        data2:'কক্সবাজার জেলার একটি ঐতিহ্যবাহী উপজেলা হচ্ছে রামু। পুরাকীর্তিসমৃদ্ধ রামুতে রয়েছে অনেক প্রাচীন বৌদ্ধ নিদর্শন। রামুতে সর্বমোট ৩৫টি বৌদ্ধ মন্দির ও জাদি রয়েছে। রামুর উত্তর মিঠাছড়ির পাহাড়চূড়ায় রয়েছে গৌতম বুদ্ধের ১০০ ফুট লম্বা সিংহশয্যা মূর্তি। আর মাত্র দুই কিলোমিটার অদূরেই কেন্দ্রীয় সীমাবিহার নতুন করে নির্মিত হয়েছে। কিছুটা দক্ষিণে এগিয়ে গেলেই রয়েছে নজরকাড়া লালচিং ও সাদাচিং বৌদ্ধ বিহার। এছাড়াও আশপাশে ছড়িয়ে–ছিটিয়ে আছে অসংখ্য ছোট-বড় আরো অনেক বৌদ্ধ বিহার।',
        data3:'কি দেখবেন',
        data4:'রামুতে আছে দেখার মত অনেক কিছুই। আপনি কতটুকু সময় ব্যয় করবেন বৌদ্ধ মন্দির ও বিহার গুলো দেখার জন্যে তার উপর নির্ভর করেই আপনাকে পরিকল্পনা করতে হবে। দেখার মত ঐতিহ্যবাহী ও উল্লেখযোগ্য মন্দির ও বিহার গুলো হলো উত্তর মিঠাছড়ি ১০০ ফুট বৌদ্ধ মূর্তি, রামু সীমা বিহার, লামার পাড়া বৌদ্ধ বিহার, রাংকূট বৌদ্ধ বিহার, শ্রী শ্রী রামকুট তীর্থ ধাম ও শ্রীকুল পুরাতন বৌদ্ধ বিহার ইত্যাদি। এছাড়া রামু রাবার বাগান থেকে ঘুরে আসতে পারেন।',
        data5:'কিভাবে যাবেন',
        data6:'কক্সবাজার থেকে কাছে হওয়ায় পর্যটকরা সাধারণত কক্সবাজার এসে সেখান থেকেই রামু বৌদ্ধ বিহার (Ramu Buddhist Bihar) গুলো দেখতে যায়। তাই সহজ উপায় হলো আপনাকে প্রথমেই কক্সবাজার চলে আসা। ঢাকা থেকে কক্সবাজার সড়ক, রেল এবং আকাশপথে যাওয়া যায়। ঢাকা থেকে কক্সবাজারগামী বাসগুলোর মধ্যে সৗদিয়া, এস আলম মার্সিডিজ বেঞ্জ, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী পরিবহন, সোহাগ পরিবহন, এস.আলম পরিবহন, মডার্ন লাইন, শাহ্ বাহাদুর, ইত্যাদি উল্লেখযোগ্য। শ্রেণী ভেদে বাসগুলোর প্রতি সীটের ভাড়া ৯০০ টাকা থেকে ২০০০ টাকার পর্যন্ত। ঢাকা থেকে ট্রেনে কক্সবাজার ভ্রমণ করতে চাইলে কমলাপুর কিংবা বিমানবন্দর রেলস্টেশান হতে সোনার বাংলা, সুবর্ন এক্সপ্রেস, তূর্ণা-নিশীথা, মহানগর প্রভাতী/গোধূলী, চট্রগ্রাম মেইলে যাত্রা করতে পারেন। এছাড়া বাংলাদেশ বিমান, নভোএয়ার, ইউএস বাংলা এবং রিজেন্ট এয়ারওয়েজের বেশকিছু বিমান ঢাকা থেকে কক্সবাজার ফ্লাইট পরিচালনা করে থাকে। কক্সবাজার শহর থেকে রামু ঘুরতে যাবার সহজ উপায় হলো আপনি যদি রিজার্ভ গাড়ি নিয়ে নেন। তাহলে জনপ্রিয় স্থান গুলো সহজেই ও অল্প সময়ে দেখে আসতে পারবেন। ৪-৫ ঘন্টা সময় নিয়ে গেলে মোটামুটি অনেক গুলো বৌদ্ধ বিহার ঘুরে দেখতে পারবেন। কক্সবাজার থেকে সিএনজি বা ট্যাক্সি/অটোরিক্সা নিয়ে বৌদ্ধ বিহার থেকে অনায়াসে ঘুরে আসতে পারেন। রামু যাবার ট্যাক্সি বা অটোরিক্সা সাধারণত জনপ্রতি ভাড়া নেয় ৪০ টাকা করে আর রিজার্ভ নিতে চাইলে যাওয়া আসা ও ঘুরে দেখার সময় সহ ৪০০ থেকে ৫০০ টাকা লাগবে। অটোরিক্সায় ৫-৬ জন অনায়াসে ভ্রমণ করতে পারবেন।',
        data7:'কোথায় থাকবেন',
        data8:'কক্সবাজার বীচ এর পাশে গড়ে উঠা হোটেল গুলোর বর্তমান ধারণ ক্ষমতা প্রায় ১৫০,০০০ জন। তাই থাকার জন্যে কক্সবাজারই আপনার জন্যে সুবিধাজনক। কক্সবাজারে ৩০০ থেকে ৫০,০০০ টাকা ভাড়া এমন নানা শ্রেনীর হোটেল ও রিসোর্ট রয়েছে। তাই আপনি কোথায় কেমন দামে থাকতে চান সম্পূর্নই আপনার উপর নির্ভর করবে। সাধারণত দামানুসারে কক্সবাজার হোটেল/মোটেল/রিসোর্ট গুলোকে তিন ভাগে ভাগ করা যায়। ৬০০০ থেকে ১০.০০০ টাকা: মারমেইড বিচ রিসোর্ট, সায়মন বিচ রিসোর্ট, ওশেন প্যারাডাইজ, লং বীচ, কক্স টুডে, হেরিটেজ ইত্যাদি।৩,০০০ থেকে ৬,০০০ টাকা: সী প্যালেস, সী গাল, কোরাল রীফ, নিটোল রিসোর্ট, আইল্যান্ডিয়া, বীচ ভিউ, সী ক্রাউন, ইউনি রিসোর্ট ইত্যাদি।৮০০ থেকে ৩,০০০ টাকা: উর্মি গেস্ট হাউজ, কোরাল রীফ, ইকরা বিচ রিসোর্ট, অভিসার, মিডিয়া ইন, কল্লোল, হানিমুন রিসোর্ট, নীলিমা রিসোর্ট ইত্যাদি।'
    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/6 ramu.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}




class AList_8 extends StatefulWidget {

  @override
  _AList_8State createState() => _AList_8State();
}

class _AList_8State extends State<AList_8> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'পলওয়েল পার্ক',
        data2:'রাঙ্গামাটি জেলা পুলিশের তত্ত্বাবধানে কাপ্তাই লেকের কোল ঘেঁসে তৈরি পলওয়েল পার্ক (Polwel Park) সৃজনশীলতার ছোঁয়ায় রাঙ্গামাটির অন্যতম সেরা বিনোদন কেন্দ্র হিসাবে স্থান করে নিয়েছে। বৈচিত্রময় ল্যান্ডস্কেপ, অভিনব নির্মাণশৈলী এবং নান্দ্যনিক বসার স্থান পার্কটিকে দিয়েছে ভিন্ন এক মাত্রা। নৈসর্গিক প্রাকৃতিক পরিবেশে সময় কাটাতে ও চিত্তবিনোদনের জন্য প্রতিদিন অসংখ্য দর্শনার্থীর পদচারণার পলওয়েল পার্ক মুখর হয়ে উঠে। মেরি গো রাউন্ড, হানি সুইং, মিনি ট্রেন, প্যাডেল বোট ইত্যাদি বিভিন্ন আকর্ষণীয় রাইড ছাড়াও পলওয়েল পার্কে আছে ভুতুড়ে পাহাড়ের গুহা, পাহাড়ী কৃত্রিম ঝর্ণা ও কলসি ঝর্ণা, ক্রোকোডাইল ব্রিজ, গ্রাম বাংলার ঐতিহ্যবাহী ঢেঁকি শিল্প, লেকভিউ পয়েন্ট, হিলভিউ পয়েন্ট, লাভ লক পয়েন্ট, মিনি চিড়িয়াখানা, এক্যুরিয়াম, ফিশিং পিয়ার, ক্যাফেটেরিয়া, সুইমিংপুল, কার পার্কিং এবং পলওয়েল কটেজ। এছাড়া এখানে পিকনিক সহ বিভিন্ন ধরনের সামাজিক অনুষ্ঠান আয়োজনের সুযোগ রয়েছে।',
        data3:'কিভাবে যাবেন',
        data4:'ঢাকার ফকিরাপুল মোড় ও সায়দাবাদে রাঙ্গামাটিগামী অসংখ্য বাস কাউন্টার রয়েছে। ঢাকা টু রাঙ্গামাটি শ্যামলীর এসি বাসের প্রতি সীটের ভাড়া ৯০০ টাকা, বিআরটিসি এসি বাসের ভাড়া ৭০০ টাকা। আর অন্যান্য নন-এসি বাসের ভাড়া ৬০০ থেকে ৭০০ টাকা। এছাড়া চট্টগ্রাম শহরের অক্সিজেন মোড় থেকে রাঙ্গামাটিগামী বিভিন্ন পরিবহণের বাস পাওয়া যায়। ১৫০ টাকার মধ্যে চট্টগ্রাম হতে রাঙ্গামাটি ডাইরেক্ট বাস পেয়ে যাবেন। রাঙ্গামাটির রিজার্ভ বাজার থেকে মাত্র ১.৫ কিলোমিটার দূরে ডিসি বাংলো রোডে অবস্থিত পলওয়েল পার্কে যেতে ৫০ টাকা সিএনজি ভাড়া লাগে। আর বনরূপা থেকে যেতে সিএনজি ভাড়া লাগে ১০০ টাকা।',
        data5:'রাঙ্গামাটি কোথায় থাকবেন',
        data6:'রাত্রিযাপনের জন্য পলওয়েল পার্কে রয়েছে কটেজ সুবিধা। আর যদি অন্য কোথাও থাকতে চান রাঙ্গামাটি শহরের পুরাতন বাসস্ট্যন্ড এবং রিজার্ভ বাজার এলাকায় বেশকিছু বিভিন্ন মানের আবাসিক হোটেল পাবেন। রাঙ্গামাটির আবাসিক হোটেলের মধ্যে হোটেল গ্রিন ক্যাসেল, পর্যটন মোটেল, রংধনু গেস্ট হাউজ, হোটেল সুফিয়া, হোটেল আল-মোবা ইত্যাদি উল্লেখযোগ্য।',
        data7:'খাওয়া দাওয়া',
        data8:'পলওয়েল পার্কে ক্যাফে ও রেস্টুরেন্ট ব্যবস্থা রয়েছে। এছাড়া রাঙ্গামাটিতে বিভিন্ন মানের খাবারের হোটেল ও রেস্টুরেন্ট পাবেন। সাধ্যের সাথে মিলিয়ে যেকোন রেস্টুরেন্টে প্রতিবেলার খাবারের সাথে সাথে স্থানীয় বিভিন্ন ঐতিহ্যবাহী খাবারও চেখে দেখতে পারেন।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/7 polwel park.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}



class AList_9 extends StatefulWidget {

  @override
  _AList_9State createState() => _AList_9State();
}

class _AList_9State extends State<AList_9> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

      data1:'লেক ভিউ আইল্যান্ড',
      data2:'২০১৭ সালে বাংলাদেশ সেনাবাহিনীর তত্ত্বাবধানে রাঙ্গামাটি জেলার কাপ্তাই লেকে গড়ে তোলা হয়েছে লেক ভিউ আইল্যান্ড (Lake View Island) নামক পর্যটন কেন্দ্র। লেক ভিউ আইল্যান্ডে রয়েছে নীলকৌড়ি বজরা, দৃষ্টিনন্দন কটেজ, হিলটপ সুইমিং পুল, অ্যাডভেঞ্চার পার্ক এবং মাছ ধরার সুব্যবস্থা। কাপ্তাই লেকে ঘুরে বেড়ানো এবং রাত্রিযাপনের জন্য তৈরী করা হয়েছে নীলকৌড়ি নামের ৫০ ফুট দৈর্ঘ্যের অভিজাত বজরা নৌকা। কাপ্তাই হ্রদের নিকটের টিলায় নির্মাণ করা হয়েছে ‘হিলটপ রিসোর্ট’। শিশুদের জন্য তৈরী কিডস কর্নারের নাম রাখা হয়েছে ইয়েলো জোন এবং অরেঞ্জ জোন। গাছের উপর তৈরী করা হয়েছে মাচাংঘর বা ট্রি হাউস। আর এক মাচাং থেকে অন্য মাচাংয়ে যাওয়ার জন্য আছে ঝুলন্ত সেতু।',
      data3:'কিভাবে যাবেন',
      data4:'চট্টগ্রাম থেকে কাপ্তাইয়ের দূরত্ব ৫৮ কিলোমিটার। চট্টগ্রাম নগরের বহদ্দারহাট বাস টার্মিনাল থেকে বাসে চড়ে কাপ্তাই জেটি ঘাঁট যেতে প্রায় দুই থেকে আড়াই ঘণ্টা সময় লাগে। চাইলে সিএনজি অটোরিকশা, নিজস্ব পরিবহন, মাইক্রোবাস অথবা কাপ্তাই রুটে চলাচলকারী বাসেও যেতে পারবেন। ঢাকা থেকে চট্টগ্রাম ঢাকা থেকে সড়ক, রেল এবং আকাশপথে চট্টগ্রাম যাওয়া যায়। ঢাকার সায়দাবাদ বাস টার্মিনাল থেকে সৌদিয়া, গ্রিন লাইন, ইউনিক, টি আর ট্রাভেলস, হানিফ, শ্যামলী, সোহাগ, এস আলম ইত্যাদি বিভিন্ন পরিবহনের বাস চট্টগ্রামের উদ্দেশ্যে ছেড়ে যায়। শ্রেণী ভেদে বাসগুলোর প্রতি সীটের ভাড়া ৫৬০ টাকা থেকে ২৩০০ টাকা। ঢাকা থেকে ট্রেনে চট্টগ্রাম ভ্রমণ করতে চাইলে কমলাপুর কিংবা বিমানবন্দর রেলস্টেশান হতে সোনার বাংলা, সুবর্ন এক্সপ্রেস, তূর্ণা-নিশীথা, মহানগর প্রভাতী/গোধূলী, চট্রগ্রাম মেইলে যাত্রা করতে পারেন। এছাড়া ঢাকা থেকে বেশকিছু এয়ারলাইন্স সরাসরি চট্টগ্রামগামী ফ্লাইট পরিচালনা করে থাকে।',
    data5:'কোথায় খাবেন',
    data6:'লেক ভিউ আইল্যান্ডে সেনা সদস্যদের তৈরী বিভিন্ন খাবার পাওয়া যায়। এর মধ্যে রয়েছে সমুচা, সিঙ্গারা, স্পেশাল মিষ্টি, চটপটি, ফুচকা, ভুনা খিচুড়ি, পেটিস, নুডলস, চিকেন গ্রিল, মোগলাই, চিকেন রোল ইত্যাদি।',

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/8 lakeview.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}




class AList_11 extends StatefulWidget {

  @override
  _AList_11State createState() => _AList_11State();
}

class _AList_11State extends State<AList_11> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'ঝুলন্ত ব্রিজ',
        data2:'পর্যটনপ্রেমী মানুষের কাছে রাঙ্গামাটি জেলার একটি বিশেষ গুরুত্ব রয়েছে। পর্যটকদের মোহিত করতে রাঙ্গামাটিতে রয়েছে বেশ কয়েকটি পর্যটন কেন্দ্র। এদের মধ্যে কাপ্তাই হ্রদের উপর নির্মিত ৩৩৫ ফুট লম্বা ঝুলন্ত ব্রিজ উল্লেখযোগ্য। রাঙ্গামাটিতে ভ্রমণে আসা সকল পর্যটকই ‘সিম্বল অফ রাঙ্গামাটি’ হিসাবে খ্যাত ঝুলন্ত সেতুটি দেখতে আসেন। কাপ্তাই লেকের বিচ্ছিন্ন দুই পাড়ের পাহাড়ের মধ্যে সম্পর্ক গড়ে দিয়েছে রঙিন এই ঝুলন্ত সেতু। এই সেতুতে দাঁড়িয়ে কাপ্তাই লেকের মনোরম দৃশ্য অবলোকন করা যায়। ব্রিজের এক পাশে পাহাড়ের উপর শিশুদের বিনোদনের জন্য রয়েছে দোলনা, স্লিপার ইত্যাদি। লেকে ভ্রমণের জন্য ব্রিজের নিচে ইঞ্জিন চালিত বোট ঘন্টা প্রতি ২০০ থেকে ৩০০ টাকায় ভাড়া পাওয়া যায়। ঝুলন্ত ব্রিজে প্রবেশের জন্য পর্যটন কর্পোরেশনকে জনপ্রতি ২০ টাকা ফি দিতে হয়।',
        data3:'কখন যাবেন ও কি দেখবেন',
        data4:'ঝুলন্ত ব্রিজ (Hanging Bridge) দেখতে বছরের যে কোন সময়ই যেতে পারেন। তবে বর্ষায় অতি বৃষ্টি হলে অনেক সময় ঝুলন্ত ব্রিজের উপর পানি উঠে যায়। সেইসময় ঝুলন্ত ব্রিজের উপরে যাওয়া না। তাই বর্ষায় গেলে আগেই খোঁজ নিয়ে যাবেন। সাধারণত শীতের আগে আগে ও শীতকালেই পর্যটকগন ঝুলন্ত সেতু ভ্রমণে যান। রাঙ্গামাটি গেলে শুধু ঝুলন্ত ব্রিজ নয় আশেপাশে আছে আরও দর্শনীয় স্থান যা আপনি একইদিনে একসাথে ঘুরে দেখতে পারবেন। সারাদিনের জন্যে ট্রলার রিজার্ভ করে নিলে ঝুলন্ত ব্রিজ, শুভলং ঝর্ণা, রাজবন বিহার, লেক ভ্রমণসহ আরও কিছু দর্শনীয় স্থান ঘুরে দেখায়। কি দেখবেন সেইভাবে পরিকল্পনা করে ট্রলার/বোট রিজার্ভ করে নিন।',
        data5:'কিভাবে যাবেন',
        data6:'ঢাকা হতে ঢাকার ফকিরাপুল মোড়, আব্দুল্লাহপুর ও সায়দাবাদে রাঙ্গামাটিগামী অসংখ্য বাস কাউন্টার রয়েছে। এই বাসগুলো সাধারণত সকাল ৮ টা থেকে ৯ টা এবং রাত ৮ টা ৩০ মিনিট থেকে রাত ১১ টার মধ্যে ঢাকা থেকে রাঙ্গামাটির উদ্দেশ্যে ছাড়ে। ঢাকা টু রাঙ্গামাটি এসি বাসের প্রতি সীট ভাড়া ১০০০ থেকে ১৬০০ টাকা। এছাড়া সকল নন-এসি বাসের ভাড়া ৭৫০ থেকে ৮০০ টাকার মধ্যে।চট্টগ্রাম হতে চট্টগ্রাম শহরের অক্সিজেন মোড় থেকে রাঙ্গামাটিগামী বিভিন্ন পরিবহণের লোকাল ও গেইটলক/ডাইরেক্ট বাস পাওয়া যায়। ভাড়া একটু বেশি হলেও গেইটলক বা ডাইরেক্ট বাসে উঠা উচিত। চট্টগ্রাম হতে রাঙ্গামাটি ডাইরেক্ট বাস ১৫০ টাকার মধ্যে পেয়ে যাবেন। চট্টগ্রামের বহাদ্দারহাট বাস টার্মিনাল থেকেও রাঙ্গামাটি যাবার বাস পাবেন।রাঙ্গামাটি শহরের তবলছড়িতে নেমে অটোরিক্সা বা সিএনজিতে করে সরাসরি ঝুলন্ত ব্রিজে যাওয়া যায়। তবলছড়ি থেকে ঝুলন্ত ব্রিজে সিএনজি ভাড়া লাগে ৫০ থেকে ৬০ টাকা। আর রাঙ্গামাটির বনরূপা থেকে সিএনজি ভাড়া লাগে ১২০ টাকা।',
    data7:'রাঙ্গামাটি থাকার ব্যবস্থা',
        data8:'রাঙ্গামাটিতে বিভিন্ন মানের গেষ্ট হাউজ ও আবাসিক হোটেল রয়েছে। রাঙ্গামাটি শহরের পুরাতন বাস স্ট্যন্ড ও রিজার্ভ বাজার এলাকায় লেকের কাছাকাছি হোটেল ঠিক করার চেষ্টা করুন। তাহলে হোটেল থেকে কাপ্তাই লেকের পরিবেশ ও শান্ত বাতাস উপভোগ করতে পারবেন। এছাড়া কম খরচে থাকতে বোডিং এ যোগযোগ করতে পারেন। বোডিংগুলোতে থাকতে খরচ কম হলেও এগুলোর অবস্থা খুব একটা ভাল নয়। উল্লেখযোগ্য কিছু আবাসিক হোটেলের নামঃহোটেল গ্রিন ক্যাসেল : রিজার্ভ বাজারে অবস্থিত এ হোটেলে নন-এসি সিঙ্গেল বেড, ডাবল বেড ও ত্রিপল বেডের রুমের ভাড়া যথাক্রমে ৮০০, ১০০০ ও ১২০০ টাকা। এসি কাপল বেড রুম পাবেন ১৬০০ টাকায় ও এসি ত্রিপল বেড রুম পাবেন ২০০০ টাকাইয়। যোগাযোগ: 01726-511532, 01815-459146 পর্যটন মোটেল : রাঙ্গামাটি ঝুলন্ত ব্রিজের পাশে অবস্থিত এ হোটেলটিতে নন-এসি ডাবল বেডের রুম পেতে ১০০০-১২০০ টাকা গুনতে হবে। আর এসি ডাবল বেড পাবেন ১৫০০-১৮০০ টাকায়। যোগাযোগঃ ০৩৫১-৬৩১২৬রংধনু গেস্ট হাউজ : এই গেস্ট হাউজে ফ্যামিলি বেড বা কাপল বেড ভাড়া নিতে খরচ পড়বে যথাক্রমে ৬৫০ ও ৫০০ টাকা। যোগাযোগ: 01816-712622, 01712-392430 হোটেল সুফিয়া : ফিসারী ঘাট, কাঁঠালতলী। যোগাযোগ: 01553-409149 হোটেল আল-মোবা : নতুন বাস স্টেশন, রিজার্ভ বাজার। যোগাযোগ: 01811-911158 রাঙ্গামাটি জেলার জনপ্রিয় সকল হোটেল, রিসোর্ট ও রেস্ট হাউজের তথ্য জানতে পড়ুন রাঙ্গামাটি হোটেল ও রিসোর্ট গাইড।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/9 julonto bridge.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}





class AList_12 extends StatefulWidget {

  @override
  _AList_12State createState() => _AList_12State();
}

class _AList_12State extends State<AList_12> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'স্বর্ণ মন্দির',
        data2:'স্বর্ণ মন্দির বান্দরবান জেলা সদর থেকে ৯ কিলোমিটার দূরে বালাঘ্টা এলাকায় অবস্থিত। এই স্বর্ণ মন্দিরটি মহাসুখ মন্দির বা বৌদ্ধ ধাতু জাদী নামেও সমানভাবে পরিচিত। স্বর্ণমন্দির নাম হলেও এখানে স্বর্ণ দিয়ে তৈরি কোন স্থাপনা নেই। তবুও মন্দিরে সোনালি রঙের আধিক্যের জন্য এটি স্বর্ণমন্দির হিসাবে পরিচিত। পাহাড়ের চূড়ায় তৈরী এ সুদৃশ্য প্যাগোডা বৌদ্ধ ধর্মালম্বীদের পবিত্র একটি তীর্থস্থান। দেশ বিদেশ থেকে অসংখ্য বৌদ্ধ ধর্মালম্বী এই স্বর্ণমন্দির দেখতে এবং প্রার্থনা করতে আসেন। গৌতমবুদ্ধের সমসাময়িক কালে নির্মিত বৌদ্ধ মুর্তির একটি এখানে স্থাপন করা হয়েছে। এই মন্দিরটি প্রায় ১০ কোটি টাকা ব্যয়ে নির্মাণ করা হয়েছে। এই প্যাগোডা দক্ষিন পূর্ব এশিয়ার অন্যান্য বৌদ্ধ স্থাপনার মধ্যে অন্যতম উপাশনালয়। পাহাড়ের উপর দেবতা পুকুর নামে একটি পানি সম্বলিত ছোট পুকুর আছে।',
        data3:'কিভাবে যাবেন',
        data4:'ঢাকার আব্দুল্লাহপুর, আরামবাগ, কল্যাণপুর, গাবতলী ও সায়েদাবাদ থেকে এস. আলম, সৌদিয়া, সেন্টমার্টিন পরিবহন, ইউনিক, হানিফ, শ্যামলি, ডলফিন ইত্যাদি পরিবহনের বাস বান্দারবানের উদ্দেশ্যে ছেড়ে যায়। জনপ্রতি এসব বাসের ভাড়া যথাক্রমে নন এসি ৭০০-৮০০ টাকা ও এসি ১০০০-১৬০০ টাকা। ঢাকা থেকে বাসে বান্দরবান যেতে সময় লাগে ৮-১০ ঘন্টা।ট্রেনে যেতে চাইলে ঢাকা থেকে চট্রগ্রাম গামী সোনার বাংলা, সুবর্ণ এক্সপ্রেস, তূর্ণা নিশিতা, মহানগর গোধূলি এইসব ট্রেনে করে চট্রগ্রাম যেতে পারবেন। শ্রেনীভেদে ভাড়া ৩৪৫ থেকে ১২২৯ টাকা। এছাড়া ঢাকা থেকে আকাশ পথে সরাসরি চট্রগ্রাম আসতে পারবেন।',
    data5:'কোথায় থাকবেন',
    data6:'বান্দরবানে অসংখ্য রিসোর্ট, হোটেল, মোটেল এবং রেস্টহাউজ রয়েছে। যেগুলোতে ৬০০ থেকে ৩০০০ টাকায় রাত্রিযাপন করতে পারবেন।হোটেল হিল ভিউ: বান্দরবান শহরের বাস স্ট্যান্ড এর পাশেই। ভাড়া ৮০০ থেকে ২৫০০ টাকা।হোটেল হিলটন: বান্দরবান শহরের বাস স্ট্যান্ড এর কাছেই। ভাড়া ৮০০ থেকে ৩০০০ টাকা।হোটেল প্লাজা: বাস স্ট্যান্ড থেকে ৫মিনিট হাঁটা দূরত্বে। ভাড়া ৮০০ থেকে ৩০০০ টাকা।রিভার ভিউ: শহরের সাঙ্গু নদীর তীর ঘেষে হোটেলটির অবস্থান। ভাড়া ৬০০ থেকে ২০০০ টাকা।পর্যটন মোটেল: পাহাড় ও লেকের পাশেই অবস্থিত। শহর থেকে ৪ কি:মি: দুরে মেঘলায় অবস্থিত। ভাড়া ১২০০ থেকে ২৫০০ টাকা।মনে রাখা ভালো কোন সময়ে যাচ্ছেন তার উপর ভাড়া নির্ভর করবে। সিজন (ডিসেম্বর-ফেব্রুয়ারী) ও সরকারি ছুটির দিনে পর্যটকের সমাগম বেশি হয় বলে ভাড়া কম বেশি হতে পারে। আর আপনি সিজন ও ছুটির দিনে যান তাহলে ঝামেলা এড়াতে আগে থেকেই হোটেল রুম বুকিং করে রাখতে পারেন। অফসিজনে গেলে ২০-৫০% ডিসকাউন্ট থাকে। এছাড়া অসংখ্য রিসোর্ট, হোটেল, মোটল এবং রেস্টহাউজ রয়েছে যেগুলোতে ৫০০ থেকে ৩ হাজার টাকায় সহজেই রাত্রিযাপন করতে পারবেন।',
    data7:'কোথায় খাবেন',
    data8:'পর্যটকদের খাবার জন্য বান্দরবান শহরে মাঝারি মানের বেশ কিছু হোটেল রয়েছে। সেগুলো থেকে নিজের পছন্দ মত হোটেলে তিন বেলার খাবার খেয়ে নিতে পারেন।তার মধ্যে তাজিং ডং ক্যাফে, মেঘদূত ক্যাফে, ফুড প্লেস রেস্টুরেন্ট, রুপসী বাংলা রেস্টুরেন্ট, রী সং সং, কলাপাতা রেস্টুরেন্ট ইত্যাদি।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/10 golden temple.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}




class AList_13 extends StatefulWidget {

  @override
  _AList_13State createState() => _AList_13State();
}

class _AList_13State extends State<AList_13> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'মেঘলা পর্যটন কেন্দ্র',
        data2:'মেঘলা পর্যটন কমপ্লেক্স বান্দরবান জেলার প্রবেশ পথে বান্দরবান-কেরাণীহাট সড়কের পাশে পার্বত্য জেলা পরিষদ সংলগ্ন এলাকায় অবস্থিত। বান্দরবান শহর থেকে মেঘলার দূরত্ব মাত্র ৪ কিলোমিটার। উঁচু নিচু পাহাড় পরিবেষ্টিত একটি কৃত্রিম লেককে ঘিরে সাজানো হয়েছে এই জায়গাটি। চারদিকের ঘন সবুজ, লেকের স্বচ্ছ পানি ও অপূর্ব প্রকৃতি পর্যটকদেরকে দূর্নিবার আকর্ষনে কাছে টানে। বৈচিত্র্য পিয়াসী মানুষ তাই আত্মিক ক্ষুধা মেটাতে মেঘলায় ছুটে আসে বারবার।',
        data3:'কি ভাবে যাবেন',
        data4:'ঢাকার কলাবাগান, সায়েদাবাদ, গাবতলী এবং ফকিরাপুল থেকে শ্যামলি, হানিফ, ইউনিক, এস আলম, ডলফিন ইত্যাদি পরিবহণের বাস প্রতিদিন বান্দরবানের উদ্দেশ্যে ছেড়ে যায়। রাত ১০ টা থেকে সাড়ে ১১টার মধ্যে যেকোনো একটি বাসে চড়ে সহজেই বান্দরবান আসতে পারেন। এসব নন-এসি ও এসি বাসের জনপ্রতি ভাড়া ৭০০ থেকে ১৬০০ টাকার মধ্যে। মহানগর, সোনার বাংলা, তূর্না কিংবা চট্টলা এক্সপ্রেস ট্রেনে করে প্রথমে চট্টগ্রাম তারপর সোজা বান্দরবানে চলে যেতে পারেন। চট্টগ্রাম শহরের বদ্দারহাট থেকে পূবালী ও পূর্বানী পরিবহনের নন-এসি বাস ৩০ মিনিট পরপর বান্দারবানের উদ্দেশ্যে ছেড়ে যায়। এই বাসগুলোতে জনপ্রতি ২২০ টাকা ভাড়া দিতে হয়।',
    data5:'রাত্রি যাপন',
    data6:'মেঘলা পর্যটন কমপ্লেক্সে রাতে থাকার জন্য জেলা প্রশাসনের রেস্ট হাউজ ভাড়ায় পাওয়া যায়। মেঘলা রেস্ট হাউজের মোট ৪ টি কক্ষের প্রতিটির জন্য ২০০০ টাকা লাগে। এছাড়া পর্যটন করপোরেশনের হোটেলে বুকিং দিতে ফোন করতে পারেনঃ ০৩৬১-৬২৭৪১ এবং ০৩৬১-৬২৭৪২ নম্বরে।',
    data7:'কোথায় খাবেন',
    data8:'মেঘলা পর্যটন কমপ্লেক্সে বেড়াতে আসা পর্যটকদের খাবার জন্য বান্দরবান শহরে মাঝারি মানের বেশ কিছু হোটেল রয়েছে। সেগুলো থেকে নিজের পছন্দ মত হোটেলে তিন বেলার খাবার খেয়ে নিতে পারেন।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/11 meghna.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}



class AList_14 extends StatefulWidget {

  @override
  _AList_14State createState() => _AList_14State();
}

class _AList_14State extends State<AList_14> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'ডাইনো পার্ক',
        data2:'কুমিল্লা জেলার কোটবাড়ির জামমূড়ায় লালমাই পাহাড়ের ১২ একর জায়গা নিয়ে ডাইনোসর পার্ক নির্মাণ করা হয়েছে। সমতল ভূমি থেকে ৪৫ ফুট উঁচুতে অবস্থিত পাখির কলকাকলিতে মুখরিত মনোমুগ্ধকর এই থিম পার্কে হাজার বছর আগে বিলুপ্ত হওয়া ডাইনোসরেরা চলাফেরা করে। ডাইনোসর পার্ক নাম হলেও ডাইনো পার্ক (Dino Park) নামটি ছড়িয়ে গেছে সর্বত্র।ডাইনো পার্কের প্রধান আকর্ষন ডাইনো জোনে যেতে চাইলে রংধনু সিঁড়ির ৪০ ধাপ বেয়ে টিলায় চড়তে হবে। ডাইনোসর গুলোর মটরাইড নড়াচড়া ও গর্জন দর্শনার্থীদের অনেক আনন্দিত করে। প্রতিটি ডাইনোসরের নিচে তাদের ইতিহাস সম্পর্কিত তথ্য দেয়া আছে। ডাইনো জোনের পাশেই একটি কৃত্রিম ঝর্ণা রয়েছে।',
        data3:'ডাইনো পার্কের প্রবেশ ফি ও সময়সূচী',
        data4:'প্রতিদিন সকাল ১০টা থেকে বিকেল ৬টা পর্যন্ত ডাইনো পার্ক খোলা থাকে। বছর জুড়ে এখানে প্রবেশ ও রাইড সহযোগে বিভিন্ন প্যাকেজ এবং অফার চালু থাকে। ডাইনো জোন সহ ডাইনো পার্কের প্রবেশ ফি জনপ্রতি ২০০ টাকা। বড়দের জন্য বিভিন্ন রাইড ফি ১০০ টাকা, ছোট বাচ্চাদের জন্য ৫০ টাকা।',
        data5:'কিভাবে যাবেন',
        data6:'ঢাকা থেকে সড়ক পথে অর্থাৎ বাসে করে কুমিল্লা যেতে মাত্র ২ ঘন্টার মত সময় লাগে। ঢাকার কমলাপুর থেকে কুমিল্লা টমছম ব্রীজগামী এশিয়া ট্রান্সপোর্ট (২০০ টাকা), তিশা প্লাস (ভাড়া ১৫০ টাকা) অথবা এশিয়া এয়ার কন/রয়েল কোচ/প্রিন্স (ভাড়া ২৫০ টাকা) দিয়ে সরাসরি কুমিল্লার কোটবাড়ি বিশ্বরোড নেমে সেখান থেকে লোকালে (২০টাকা) বা সিএনজি রিজার্ভ নিয়ে কুমিল্লা বিশ্ববিদ্যালয় পার হয়ে ডাইনো পার্ক যেতে পারবেন।এছাড়া ঢাকা থেকে ট্রেনে করে সহজেই কুমিল্লা আসতে পারবেন। চট্টগ্রামগামী (সুবর্ণা ও সোনার বাংলা বাদে) প্রায় সকল ট্রেনই কুমিল্লা স্টেশনে থামে। ঢাকা থেকে কুমিল্লা জনপ্রতি ভাড়া ৯০-২৫০ টাকা।',
    data7:'কোথায় থাকবেন',
    data8:'কুমিল্লা শহরে কুমিল্লা ক্লাব, কুমিল্লা সিটি ক্লাবসহ বেশকিছু ভালো মানের আবাসিক হোটেল রয়েছে। এসব হোটেলে ১০০০ থেকে ৩০০০ টাকায় রাত্রি যাপন করতে পারবেন। এছাড়া মাঝারি মানের হোটেলের মধ্যে হোটেল চন্দ্রিমা, হোটেল শালবন, হোটেল আবেদিন (+88-81-76014), হোটেল সোনালী (+88-81-63188), হোটেল নিদ্রাবাগ, আশীক রেস্ট হাউস (+88-81-68781), হোটেল নুরজাহান (+88-81-68737) উল্লেখযোগ্য। এসব হোটেলে ৫০০ থেকে ৮০০ টাকা ভাড়ায় থাকতে পারবেন।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/12 daino park.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}



class AList_15 extends StatefulWidget {

  @override
  _AList_15State createState() => _AList_15State();
}

class _AList_15State extends State<AList_15> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'ফান টাউন পার্ক',
        data2:'বিনোদনের নতুন আয়োজন নিয়ে কুমিল্লা জেলার ঢুলিপাড়াতে ২০১৬ সালে বেসরকারি উদ্যোগে গড়ে তোলা হয়েছে ভার্চুয়াল থীম পার্ক ফান টাউন (Fun Town)। ভিন্ন ধাঁচে নির্মিত এই পার্ক ছোট বড় সব বয়সী মানুষের নির্মল বিনোদনের জন্য একটি উপযুক্ত জায়গা। পার্কের মনোরম পরিবেশে ঘুরে বেড়ানো ছাড়াও আকর্ষণীয় রাইডের মজা নিতে ছুটির দিনে অনেকে এই পার্কে আসেন। ১৫ ডি সিনেমা ফান টাউন পার্কের প্রধান আকর্ষণ হলেও ছোট বাচ্চাদের জন্য এখানে রয়েছে নাগরদোলা, ট্রেন, বাম্পার কার, প্যাডেল বোট, সুইং চেয়ার, মেরিগো রাউন্ড, সেল্ফ কন্ট্রোল এরোপ্লেন সহ বিভিন্ন ইনডোর ও আউটডোর রাইড। আর বিশেষ দিন গুলোতে ফান টাউন পার্ক কনসার্ট, ডিজে এবং সাংস্কৃতিক অনুষ্ঠান সহ বিভিন্ন আকর্ষণীয় আয়োজনে পূর্ণ থাকে।',
        data3:'প্রবেশমূল্য,খরচ ও সময়সীমা',
        data4:'প্রতিদিন সকাল ৮ টা থেকে রাত ৮ টা ৩০ মিনিট পর্যন্ত উন্মুক্ত ফান টাউন পার্কে প্রবেশ মূল্য ৫০ টাকা। এছাড়া পার্কের বিভিন্ন রাইডের ভাড়া-রাইড                    জনপ্রতি ভাড়ানাগরদোলা (৫ মিনিটের জন্য) ৫০ টাকামেরিগো রাউন্ড       ৫০ টাকা বাম্পার কার                      ১০০ টাকাসেল্ফ কন্ট্রোল এরোপ্লেন            ১০০ টাকা প্যাডেল বোট                      ১০০ টাকা ট্রেন  ৫০ টাকা ১৫ ডি সিনেমা ১০০ টাকা ইনডোর গেমস ৫০ টাকা সুইং চেয়ার ১০০ টাকা',
    data5:'কিভাবে যাবেন',
    data6:'ফান টাউনে যাওয়ার জন্য প্রথমে কুমিল্লা শহরে আসতে হবে। ঢাকা থেকে ট্রেন বা বাসে কুমিল্লা শহর যাওয়া যায়। তবে রয়্যাল কোচ, এশিয়া এয়ারকন, প্রিন্স, এশিয়া লাইন, তৃষার মতো নন-এসি বা এসি বাসে ঢাকা থেকে কুমিল্লা যাওয়া সুবিধাজনক। বাস থেকে নেমে সিএনজি অথবা রিক্সায় কুমিল্লার ইপিজেড হয়ে ঢুলিপাড়া চৌমুহনি থেকে সামান্য দক্ষিণে এগোলেই ফান টাউনে পৌঁছে যাবেন।আবার কুমিল্লার টমটম ব্রিজ থেকে অটোরিকশায় কুমিল্লা এয়ারপোর্ট রোড থেকে সহজেই ফান টাউন যাওয়া যায়।    ',
    data7:'কোথায় থাকবেন',
    data8:'ঢাকা থেকে একদিনে ফান টাউন ঘুরে ফিরে আসা যায়। যদি রাত্রিযাপনের প্রয়োজন হয় তবে কুমিল্লা শহরে বেশকিছু ভালো মানের আবাসিক হোটেল আছে। এদের মধ্যে রয়েছে এমএন হোটেল, হোটেল আমানিয়া, হোটেল আমির, হোটেল ড্রিম ল্যান্ড, মাসুম রেস্ট হাউজ, হোটেল মেলোডি, হোটেল নূর, হোটেল সোনালি ইত্যাদি।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/Artificial/13 fun town.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ExpansionPanelList(

                  expansionCallback: (i, isOpen) {
                    setState(() {
                      if (index == i)
                        index = -1;
                      else
                        index = i;
                    });
                  },
                  animationDuration: Duration(seconds: 1),
                  dividerColor: Colors.teal,
                  elevation: 2,
                  children: [
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(
                          data2,
                        ),

                      ),
                      isExpanded: index == 0,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(

                          title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data4),
                      ),
                      isExpanded: index == 1,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      canTapOnHeader: true,
                      body: ListTile(
                        title: Text(data6),
                      ),
                      isExpanded: index == 2,
                    ),
                    ExpansionPanel(
                      backgroundColor: fcolor,

                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
                        );
                      },
                      body: ListTile(
                        title: Text(data8),
                      ),
                      isExpanded: index == 3,
                    ),

                  ],
                ),
              ),
            )],


        ),
      ),
    );
  }
}


