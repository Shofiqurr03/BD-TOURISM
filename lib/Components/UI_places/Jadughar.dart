

import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

int index = -1;


class JList_1 extends StatefulWidget {

  @override
  _JList_1State createState() => _JList_1State();
}

class _JList_1State extends State<JList_1> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        data1: ' জাতিতাত্ত্বিক জাদুঘর',
        data2: 'বাংলাদেশের বিভিন্ন ক্ষুদ্র নৃগোষ্ঠী/আদিবাসী/উপজাতি জনগোষ্ঠীর ইতিহাস ও ঐতিহ্যকে সংরক্ষণের উদ্দেশ্যে ১৯৬৫ সালে চট্টগ্রাম জেলার আগ্রাবাদ বাণিজ্যিক এলাকার বাদামতলী মোড় সংলগ্ন দেশের একমাত্র জাতিতাত্ত্বিক জাদুঘর (Ethnological Museum) প্রতিষ্ঠা করা হয়। ১.২৫ একর জমির উপর স্থাপিত চট্টগ্রামের জাতিতাত্ত্বিক জাদুঘর এশিয়া মহাদেশে অবস্থিত অন্য জাদুঘরের (জাপান) তুলনায় আকার-আয়তন ও সংগ্রহের ব্যাপকতায় বৃহত্তম।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকাস্থ সায়দাবাদ বাস টার্মিনাল থেকে সৌদিয়া, ইউনিক, টিআর ট্রাভেলস, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী, সোহাগ, এস. আলম, মডার্ন লাইন ইত্যাদি বিভিন্ন পরিবহনের এসি-নন/এসি বাসে চট্টগ্রাম যাওয়া যায়। আর ঢাকা থেকে ট্রেনে চট্টগ্রাম যেতে চাইলে কমলাপুর রেলওয়ে ষ্টেশন হতে সোনার বাংলা, সুবর্ন এক্সপ্রেস, তূর্ণা-নিশীথা, মহানগর প্রভাতী/গোধূলী, চট্রগ্রাম মেইলে যাত্রা করতে পারেন।',
        data5: 'কোথায় থাকবেন',
        data6: 'চট্টগ্রাম শহরের ষ্টেশন রোড, জেএসসি মোড় এবং আগ্রাবাদ এলাকায় বিভিন্ন মানের আবাসিক হোটেল রয়েছে। এসব আবাসিক হোটেলের মধ্যে হোটেল স্টার পার্ক, হোটেল ডায়মন্ড পার্ক, হোটেল মিসখা, হোটেল হিলটন সিটি, এশিয়ান এসআর হোটেল, হোটেল প্যারামাউন্ট, হোটেল সাফিনা প্রভৃতি উল্লেখযোগ্য।',
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
            Image.asset("images/jadughor/1 jatitattik jadughor.jpg"),
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








class JList_2 extends StatefulWidget {

  @override
  _JList_2State createState() => _JList_2State();
}

class _JList_2State extends State<JList_2> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'চট্টগ্রাম ওয়ার সিমেট্রি',
        data2: 'দ্বিতীয় বিশ্বযুদ্ধে নিহত সেনাদের সমাধিস্থল (চট্টগ্রাম ওয়ার সিমেট্রি বা রণ সমাধিক্ষেত্র) চট্রগ্রামের মেহেদীবাগ গোল পাহাড় এলাকার বাদশা মিয়া রোডে অবস্থিত। দ্বিতীয় বিশ্বযুদ্ধে আজাদ হিন্দ ফৌজের আক্রমণে নিহত মিত্রবাহিনীর সৈনিকদের এখানে সমাহিত করা হয়। পাহাড়ের ভাঁজে অবস্থিত চট্টগ্রাম ওয়ার সিমেট্রির সাজানো গোছানো শান্ত পরিবেশ আপনার মনে শোকের আবহ তৈরী করবে। চট্টগ্রাম ওয়ার সিমেট্রির (Chittagong War Cemetery) প্রধান ফটক পাড় হলেই সমাধিস্থলের মাঝখানে একটি ক্রুশ চিহ্নিত বেদি দেখা যায়। বেদির পরই রয়েছে একটি ছোট্ট প্রার্থনা ঘর। সেখানে ২য় বিশ্বযুদ্ধ চলাকালীন সময়ের ইতিহাস ও মানচিত্র স্থান পেয়েছে। সমাধিস্থলের আয়তন প্রায় ৭ একর এবং এখানে ৭৫৫ জন সৈনিকের সমাধি রয়েছে। ওয়ার সিমেট্রিতে রয়েছে প্রায় ৪০ প্রজাতির বৃক্ষরাজি ও শতাধিক দেশি-বিদেশি ফুলের গাছ। প্রতি বছর ১১ নভেম্বর কমনওয়েলথভুক্ত দেশগুলোর হাইকমিশনার এবং প্রতিনিধিগণ চট্টগ্রাম ওয়ার সিমেট্রিতে শ্রদ্ধা নিবেদন করেন। এ সমাধিক্ষেত্রটি কমনওয়েলথ গ্রেইভস কমিশন রক্ষণাবেক্ষণ করে।',
        data3: 'কিভাবে যাবেন',
        data4: 'ওয়ার সিমেন্ট্রি দেখতে হলে প্রথমে চট্টগ্রাম আসতে হবে। চট্টগ্রাম শহরের যেকোন স্থান থেকে জিইসি মোড় (জেনারেল ইলেকট্রিক কোম্পানি) এসে সেখান থেকে রিক্সা নিয়ে নিজাম রোড হয়ে সহজেই চট্টগ্রাম ওয়ার সিমেট্রিতে পৌঁছাতে পারবেন।',
        data5: 'কোথায় থাকবেন',
        data6: 'রাত্রি যাপনের জন্য চট্টগ্রাম শহরে বিভিন্ন মানের আবাসিক হোটেল রয়েছে। এদের মধ্যে হোটেল প‌্যারামাউন্ট রুম ভাড়া ৮০০ টাকা থেকে ১৮০০ টাকা পর্যন্ত। হোটেল অবকাশ রুম ভাড়া ১২০০ থেকে ২০০০ টাকা। হোটেল লর্ডস ইন, সি এন্ড বি জিইসি মোড়, প্রতি রুম ভাড়া ২০০০ থেকে ৭০০০ টাকা পর্যন্ত। হোটেল সিলমুন প্রতি রুম ভাড়া ১৮০০ হতে ৪০০০ টাকা পর্যন্ত। হোটেল এশিয়ান এসআর রুম ভাড়া ১৫০০ থেকে ৪০০০ টাকা। হোটেল নাবা ইন হোটেলের রুম ভাড়া ৩০০০ থেকে শুরু। আগ্রাবাদ অবস্থিত হোটেল ল্যান্ডমার্ক এ রাত্রি যাপন করতে গেলে রুম প্রতি নূন্যতম ২৫০০ টাকা খরচ করতে হবে। আর হোটেল রেডিসন ব্লু-তে থাকতে গেলে এক রাতের জন্য গুনতে হবে ১৮০০০ টাকা।',
        data7: 'কোথায় খাবেন',
        data8: 'যদি চট্টগ্রামের ঐতিহ্যবাহী খাবার চেখে দেখতে চান তবে যেতে পারেন হোটেল জামান-এ। আর মেজবানি খাবারের জন্য যেতে পারেন চকবাজারে অবস্থিত “মেজবান হাইলে আইয়্যুন” রেস্তোরায়। এছাড়াও চট্টগ্রাম শহরে ছড়িয়ে আছে বেশকিছু ভাল মানের রেস্টুরেন্ট এদের মধ্যে বারকোড ক্যাফে, মিলেঞ্জ রেস্টুরেন্ট, গ্রিডি গাটস, ক্যাফে ৮৮, সেভেন ডেইজ, ধাবা, হান্ডি, গলফ গার্ডেন রেস্টুরেন্ট, কোষ্টাল মারমেইড রেস্টুরেন্ট এন্ড লাউঞ্জ, বোনানজা পোর্ট রেস্টুরেন্ট ইত্যাদি উল্লেখযোগ্য।'





    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/2 chottogram war.jpg"),
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



class JList_3 extends StatefulWidget {

  @override
  _JList_3State createState() => _JList_3State();
}

class _JList_3State extends State<JList_3> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1:'শালবন বৌদ্ধ বিহার',
        data2:'শালবন বৌদ্ধ বিহার (Shalbon Buddha Bihar) কুমিল্লা জেলার কোটবাড়িতে অবস্থিত, যা বাংলাদেশের প্রাচীন সভ্যতার অন্যতম নিদর্শন হিসাবে সুপরিচিত। তৎকালীন সময় এই অঞ্চলে শাল ও গজারির বন ছিল বলে বিহারটি শালবন বিহার নামে পরিচিতি লাভ করে। শালবন বিহারটি অনেকটা পাহাড়পুর বৌদ্ধ বিহারের মতো তবে আকারের দিক দিয়ে পাহাড়পুর বৌদ্ধ বিহার থেকে কিছুটা ছোট। কোটবাড়ি এলাকায় ১৮৭৫ সালে রাস্তা তৈরির সময় একটি ইমারতের ধ্বংশাবশেষ সকলে প্রত্যক্ষ করেন। তখন এটিকে প্রাচীন দূর্গের অংশ হিসাবে ধারণা করা হচ্ছিল। ১৯১৭ সালে ঢাকা জাদুঘরের অধ্যক্ষ নলিনী কান্ত ভট্টাশালী শালবন বৌদ্ধ বিহারটিকে পর্যবেক্ষন করে পট্টিকেরা নগর বলে মতামত পোষণ করেন। তবে ধারণা করা হয় এই বিহারটি ৭ম শতাব্দীর শেষ সময়ে দেববংশের চতুর্থ রাজা শ্রীভবদেব নির্মাণ করেন। বিভিন্ন সময় শালবন বিহারের ছয়টি স্থাপনা নির্মাণ ও পুনঃনির্মাণের কথা জানা যায়। মনে করা হয়, ৮ম শতাব্দীর মধ্যে ৩য় বারের মত কেন্দ্রীয় মন্দির নির্মাণ ও বিহারের সার্বিক সংস্কার হয়। পর্যায়ক্রমে ৮ম ও ৯ম শতাব্দীতে ৪র্থ ও ৫ম বারের মত বিহারটি সংস্কার করা হয়।',
        data3:'শালবন বিহার যাওয়ার উপায়',
        data4:'ঢাকা থেকে সড়ক পথে অর্থাৎ বাসে করে কুমিল্লা যেতে মাত্র ২ ঘন্টা ৩০ মিনিটের মত সময় লাগে। ঢাকার বিভিন্ন স্থান হতে ঢাকা কুমিল্লা রুটে অসংখ্য বাস সার্ভিস আছে। আপনার পছন্দ মত বাসে চড়ে কুমিল্লায় আসতে পারেন। ঢাকার সায়েদাবাদ বাস টার্মিনাল এবং কমলাপুর থেকে উপকূল (01981-002932, 01981-002942), তিশা (01731-217322), স্টার লাইন, বিআরটিসি (01770-493775), রয়েল, এশিয়া লাইন পরিবহনে বাসে কুমিল্লা আসতে জনপ্রতি ২২০ থেকে ৩৫০ টাকা ভাড়া লাগে।',
        data5:'কোথায় থাকবেন',
        data6:'কুমিল্লা শহরে কুমিল্লা ক্লাব, কুমিল্লা সিটি ক্লাবসহ বেশকিছু ভালো মানের আবাসিক হোটেল রয়েছে। এসব হোটেলে ১০০০ থেকে ৩০০০ টাকায় রাত্রি যাপন করতে পারবেন। এছাড়া মাঝারি মানের হোটেলের মধ্যে হোটেল চন্দ্রিমা, হোটেল শালবন, হোটেল আবেদিন, হোটেল সোনালী, হোটেল নিদ্রাবাগ, আশীক রেস্ট হাউস, হোটেল নুরজাহান উল্লেখযোগ্য। এসব হোটেলে ২০০ থেকে ৬০০ টাকা ভাড়ায় থাকতে পারবেন।',
        data7:'কোথায় খাবেন',
        data8:'কুমিল্লায় বিভিন্ন মানের হোটেল/রেস্টুরেন্ট রয়েছে তাই নিজের প্রয়োজন অনুযায়ী যেকোন রেস্টুরেন্টে ঢুকে যেতে পারেন। চেখে দেখতে পারেন মনোহরপুর কালী বাড়িস্থ মাতৃভান্ডারের আসল রসমালাইয়ের স্বাদ।'




    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/3 shalbon.jpg"),
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




class JList_4 extends StatefulWidget {

  @override
  _JList_4State createState() => _JList_4State();
}

class _JList_4State extends State<JList_4> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'ময়নামতি জাদুঘর',
        data2: 'কুমিল্লা থেকে ১৪ কিলোমিটার দূরে সালমানপুরে অবস্থিত ময়নামতি জাদুঘর (Mainamati Museum) প্রত্নতাত্ত্বিক নিদর্শন সংগ্রহশালা হিসাবে বাংলাদেশের একটি গুরত্বপূর্ণ স্থান। ময়নামতি জাদুঘরের ৪২ টি ভিন্ন ভিন্ন সংরক্ষণাগারে কুমিল্লার বিভিন্ন স্থান থেকে সপ্তম ও অষ্টম শতাব্দীর নানা নিদর্শন সংরক্ষণ করে রাখা হয়েছে। প্রাচীন নিদর্শনগুলোর মধ্যে ব্রোঞ্জ ও পাথরের ছোট-বড় মূর্তি, ব্রোঞ্জের বিশাল ঘন্টা, স্বর্ণ ও রৌপ্য মুদ্রা, পোড়ামাটির ফলক, ব্রোঞ্জ, তামা ও লোহার সামগ্রী, মাটির খেলনা, কাঠের নিদর্শন, মৃৎশিল্প নিদর্শন এবং প্রাচীন হস্তলিপির পান্ডুলিপি উল্লেখযোগ্য। এছাড়া জাদুঘরকে কেন্দ্র করে গড়ে তোলা হয়েছে বিশ্রামাগার ও মনোরম ফুলের বাগান।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকার সায়েদাবাদ বাস টার্মিনাল এবং কমলাপুর থেকে উপকূল (01981-002932, 01981-002942), তিশা (01731-217322), স্টার লাইন, বিআরটিসি (01770-493775), রয়েল, এশিয়া লাইন পরিবহনে বাসে কুমিল্লা আসতে জনপ্রতি ২২০ থেকে ৩৫০ টাকা ভাড়া লাগে। অথবা চট্টগ্রাম বা ফেনীগামী যেকোন বাসে কুমিল্লা ক্যান্টনমেন্ট পর্যন্ত এসে কুমিল্লা ক্যান্টনমেন্টের ভিতর দিয়ে বা কোটবাড়ি বিশ্বরোড থেকে সিএনজি/অটো চড়ে ময়নামতি জাদুঘরে যেতে পারবেন।',
        data5: 'কোথায় থাকবেন',
        data6: 'কুমিল্লায় রাত্রিযাপনের জন্য কান্দিরপাড়, শাসনগাছা ও ষ্টেশন রোডে বিভিন্ন মানের হোটেল রয়েছে। আবাসিক হোটেলের মধ্যে হোটেল ভিক্টোরিয়া, আমানিয়া রেস্ট হাউজ, হোটেল ড্রিম ল্যান্ড, মাসুম রেস্ট হাউজ, হোটেল মেলোডি, হোটেল নূর, হোটেল সোনালি ইত্যাদি উল্লেখযোগ্য।',
        data7: 'কোথায় কি খাবেন',
        data8: 'নিত্যদিনের খাবারের চাহিদা পূরণের জন্য কুমিল্লায় বিভিন্ন মানের হোটেল রেস্টুরেন্ট রয়েছে। এছাড়া কুমিল্লার মনোহরপুরে অবস্থিত আসল মাতৃভাণ্ডারের বিখ্যাত রসমালাই, রসগোল্লা, ভগবতীর পেড়া ও মিঠাই-এর মালাই চপ এবং মাতৃভূমির মালাইকারির স্বাদ নিতে পারেন।'




    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/4 Mainamati Museum.jpg"),
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




class JList_5 extends StatefulWidget {

  @override
  _JList_5State createState() => _JList_5State();
}

class _JList_5State extends State<JList_5> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'ময়নামতি ওয়ার সিমেট্রি',
        data2: 'কমনওয়েলথ সমাধিক্ষেত্র বা ময়নামতি ওয়ার সিমেট্রি (Moynamoti War Cemetery) তে দ্বিতীয় বিশ্বযুদ্ধের ৭৩৭ জন সৈন্য চিরনিদ্রায় শায়িত আছেন। যার মধ্যে যুদ্ধে নিহত সৈন্য ছাড়াও ২৪ জন জাপানি যুদ্ধবন্দি এবং ১ জন বেসামরিক ব্যক্তি রয়েছে। কুমিল্লা থেকে ৫ কিলোমিটার দূরে কুমিল্লা ক্যান্টনমেন্টের টিপরা বাজার ও ময়নামতি সাহেব বাজারের মধ্যস্থলে প্রায় ৪.৫ একর পাহাড়ি ভূমির উপর অবস্থিত ময়নামতি ওয়ার সিমেট্রি বাংলাদেশের ২য় কমনওয়েলথ সমাধিক্ষেত্র। স্থানীয় মানুষের কাছে ময়নামতি ওয়ার সিমেট্রি ‘ইংরেজ কবরস্থান’ হিসেবে পরিচিত হলেও এখানে হিন্দু, বৌদ্ধ, মুসলিম, খ্রিস্টান এবং ইহুদির কবর রয়েছে। ২য় বিশ্বযুদ্ধে নিহত এবং যুদ্ধাহত হয়ে মারা যাওয়া সৈনিকদের ব্রিগেডিয়ার পদমর্যাদায় ময়নামতি ওয়ার সিমেট্রিতে সমাহিত করা হয়েছে',
        data3: 'কীভাবে যাবেন',
        data4: 'ঢাকা থেকে সড়ক পথে কুমিল্লা যেতে আড়াই থেকে ৩ ঘন্টার মত সময় লাগে। ঢাকার সায়েদাবাদ বাস টার্মিনাল এবং কমলাপুর থেকে উপকূল (01981-002932, 01981-002942), তিশা (01731-217322), স্টার লাইন, বিআরটিসি (01770-493775), রয়েল, এশিয়া লাইন পরিবহনে বাসে কুমিল্লা আসতে জনপ্রতি ২২০ থেকে ৩৫০ টাকা ভাড়া লাগে।ঢাকা থেকে ট্রেনে করে সহজে কুমিল্লা আসতে পারবেন। চট্টগ্রামগামী সুবর্ণা ও সোনার বাংলা ছাড়া প্রায় সকল ট্রেন কুমিল্লা রেলওতে স্টেশনে যাত্রা বিরতি দেয়। ঢাকা থেকে কুমিল্লা জনপ্রতি ভাড়া ১৭০-৪৬৬ টাকা।',
        data5: 'কোথায় থাকবেন',
        data6: 'কুমিল্লা শহরে কুমিল্লা ক্লাব, কুমিল্লা সিটি ক্লাবসহ বেশকিছু ভালো মানের আবাসিক হোটেল রয়েছে। এসব হোটেলে ১০০০ থেকে ৩০০০ টাকায় রাত্রি যাপন করতে পারবেন। এছাড়া মাঝারি মানের হোটেলের মধ্যে হোটেল চন্দ্রিমা, হোটেল শালবন, হোটেল আবেদিন (+88-81-76014), হোটেল সোনালী (+88-81-63188), হোটেল নিদ্রাবাগ, আশীক রেস্ট হাউস (+88-81-68781), হোটেল নুরজাহান (+88-81-68737) উল্লেখযোগ্য। এসব হোটেলে ২০০ থেকে ৬০০ টাকা ভাড়ায় থাকতে পারবেন।',
        data7: 'কোথায় খাবেন',
        data8: 'কুমিল্লায় বিভিন্ন মানের হোটেল/রেস্টুরেন্ট রয়েছে তাই নিজের প্রয়োজন অনুযায়ী যেকোন রেস্টুরেন্টে ঢুকে যেতে পারেন। চেখে দেখতে পারেন মনোহরপুর কালী বাড়িস্থ মাতৃভান্ডারের আসল রসমালাইয়ের স্বাদ'






    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/5 Moynamoti-War-Cemetery.jpg"),
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




class JList_6 extends StatefulWidget {

  @override
  _JList_6State createState() => _JList_6State();
}

class _JList_6State extends State<JList_6> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




      data1:'নব শালবন বিহার',
      data2:'প্রাচীন সভ্যতায় সমৃদ্ধ কুমিল্লা জেলার ঐতিহাসিক স্থাপনায় নতুন এক সংযোজন কোটবাড়ি এলাকার নব শালবন বিহার (Nobo Shalbon Bihar)। প্রায় আড়াই একর জায়গার উপর ১৯৯৫ সালের ৮ সেপ্টেম্বর নব শালবন বিহার ও বাংলাদেশ বুদ্ধিস্ট কালচারাল একাডেমী প্রতিষ্ঠা করা হয়। শৈল্পিক এই বৌদ্ধ উপাসনালয় দক্ষিন-পূর্ব এশিয়ার বৌদ্ধ ধর্মাবলম্বীদের অন্যতম “শান্তি বিহার” হিসেবে পরিচিত। ২০১৪ সালে থাইল্যান্ডের বৌদ্ধ ধর্মীয় ফাউন্ডেশনের উপহার হিসেবে পাওয়া ধাতব পদার্থে তৈরি প্রায় ৬ টন ওজনের ৩০ ফুট উচ্চতার বৌদ্ধ মূর্তি স্থাপন করা হয় বিহারে।',
      data3:'কিভাবে যাবেন',
    data4:'নব শালবন বিহারে যাওয়া জন্য প্রথমেই কুমিল্লা (Comilla) শহরে আসতে হবে। ঢাকা থেকে কুমিল্লা যেতে পারবেন ট্রেন বা বাসে। রেল পথে মহানগর গোধূলী, উপকূল এক্সপ্রেস, পাহারিকা এক্সপ্রেস ও তূর্ণা এর মতো ট্রেনে ঢাকা থেকে কুমিল্লা যাওয়া যায়।সড়কপথে রয়্যাল কোচ, এশিয়া এয়ারকন, প্রিন্স, এশিয়া লাইন, তৃষা এর মতো নন এসি বা এসি বাসে ঢাকা থেকে কুমিল্লা যেতে পারবেন। অথবা চট্টগ্রাম বা ফেনিগামী যেকোনো বাসে উঠলেও কুমিল্লা যাওয়া যাবে। বাস ভেদে ভাড়া পড়বে ১৭০ থেকে ৩০০ টাকা। বাস থেকে কুমিল্লার কোটবাড়ি বাস স্ট্যান্ডে নেমে বাস স্ট্যান্ড থেকে সি এন জি বা রিক্সায় নব শালবন বিহার যাওয়া যাবে।',
    data5:'কোথায় থাকবেন',
    data6:'কুমিল্লায় রাত্রিযাপনের জন্য কান্দিরপাড়, শাসনগাছা ও ষ্টেশন রোডে বিভিন্ন মানের হোটেল রয়েছে। যেমন- হোটেল ভিক্টোরিয়া আবাসিক, আমানিয়া রেস্ট হাউজ, হোটেল ড্রিমল্যান্ড, মাসুম রেস্ট হাউজ, হোটেল মেলোডি, হোটেল নূর, হোটেল সোনালি ইত্যাদি।  ',
        data7: 'কোথায় কি খাবেন',
        data8: 'নিত্যদিনের খাবারের চাহিদা পূরণের জন্য কুমিল্লায় বিভিন্ন মানের হোটেল রেস্টুরেন্ট রয়েছে। এছাড়া কুমিল্লার মনোহরপুরে অবস্থিত আসল মাতৃভাণ্ডারের বিখ্যাত রসমালাই, রসগোল্লা, ভগবতীর পেড়া ও মিঠাই-এর মালাই চপ এবং মাতৃভূমির মালাইকারির স্বাদ নিতে পারেন।'






    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/6 Nobo-Shalbon-Bihar-Comilla.jpg"),
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





class JList_7 extends StatefulWidget {

  @override
  _JList_7State createState() => _JList_7State();
}

class _JList_7State extends State<JList_7> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




      data1:'ইটাখোলা মুড়া',
      data2:'কুমিল্লা সদর উপজেলার থেকে প্রায় ৯ কিলোমিটার দূরে কোটবাড়িতে অবস্থিত ইটাখোলা মুড়া (Itakhola Mura) সপ্তম বা অষ্টম শতকে নির্মিত একটি বৌদ্ধ বিহার। রূপবান মুড়ার বিপরীত পাশে সমতল ভূমি থেকে প্রায় ৪০ ফুট উঁচুতে অবস্থিত এই প্রত্নস্থানে তিনটি স্তর পরিলক্ষিত হয়। প্রাচীনকাল থেকেই এখানে ইট পোড়ানো কারণে জায়গাটি ইটাখোলা মুড়া নামে পরিচিতি লাভ করে। ইটাখোলা মুড়ায় বিভিন্ন সময় প্রত্নতাত্ত্বিক খননের ফলে একটি বৌদ্ধ মঠ ও বৌদ্ধস্তূপের সন্ধান পাওয়া যায়। প্রায় ৫টি সাংস্কৃতিক যুগ অতিক্রম করার ফলে এই স্থানের সকল প্রত্নতাত্ত্বিক নির্দশনগুলো উদ্ধার করা বেশ জটিল হয়ে দাঁড়িয়েছে। আবিষ্কৃত স্থানের মধ্যে বিস্তীর্ণ স্তূপ কমপ্লেক্স ইটাখোলা মুড়ার মূল আকর্ষণ। প্রায় ১৩.১ বর্গমিটার ভিতের উপর অবস্থিত এই স্তূপের সম্মুখভাগের কেন্দ্রে ২.৪ মিটার দৈর্ঘ্য ও ২.১ মিটার প্রস্থ্যের একটি ক্ষুদ্র পীঠস্থান রয়েছে। ইটাখোলা মুড়ার প্রবেশ পথ ধরে উপরে উঠলে আয়তাকার ক্ষেত্রের মাঝখানে এই বিহারে মূল মন্দিরটি দেখতে পাওয়া যায়। এই মন্দিরের প্রধান উপাস্য হলেন ধ্যানী বুদ্ধ অক্ষোভ্য। এখানে ৩য় নির্মাণ যুগে নির্মিত একটি মস্তকবিহীন বৌদ্ধ মূর্তি রয়েছে। ইটাখোলা মুড়া থেকে প্রাপ্ত নিদর্শনের মধ্যে প্রায় ১৮ তোলা ওজনের স্বর্ণ, মাটির পাতিলে রক্ষিত সোনার বল, রৌপ্য মুদ্রা, তাম্রশাসন, মাটির ফলকলিপি, ধ্যাণী বুদ্ধ মূর্তির আবক্ষ অংশ, ধাতব ধ্যানীবুদ্ধ অক্ষোভ্য, ধাতব ধ্যানীবুদ্ধ অমিতাভ, গণেশ মূর্তি, অলংকৃত পোড়া মাটির ফলক, মাটির পাত্র,',
      data3:'কিভাবে যাবেন',
      data4:'ইটাখোলা মুড়া যেতে হলে কুমিল্লা জেলায় আসতে হবে। ঢাকা থেকে ট্রেন ও বাসে চরে কুমিল্লা যাওয়া যায়। কমলাপুর হতে মহানগর প্রভাতী/গোধূলী, উপকূল এক্সপ্রেস, পাহারিকা এক্সপ্রেস ও তূর্ণা সহ চট্টগ্রামগামী বিভিন্ন ট্রেনে কুমিল্লা যেতে পারবেন। সড়কপথে ঢাকার সায়েদাবাদ বা কমলাপুর বাস স্ট্যান্ড থেকে রয়্যাল কোচ, এশিয়া এয়ারকন, বিআরটিসি, প্রিন্স, এশিয়া লাইন, তৃষার মতো নন-এসি/এসি বাস ছাড়াও চট্টগ্রাম বা ফেনিগামী বাসে কুমিল্লা যাওয়া। বাস থেকে কুমিল্লার কোটবাড়ি বাস স্ট্যান্ড নেমে সিএনজি বা অটো রিকশাযোগে ইটাখোলা মুড়া যেতে পারবেন।',
      data5:'কোথায় থাকবেন',
      data6:'কুমিল্লা কান্দিরপাড়, শাসনগাছা ও ষ্টেশন রোডে বিভিন্ন মানের হোটেল রয়েছে। এদের মধ্যে হোটেল সোনালী, হোটেল ভিক্টোরিয়া আবাসিক, আমানিয়া রেস্ট হাউজ, হোটেল ড্রিম ল্যান্ড, মাসুম রেস্ট হাউজ, হোটেল মেলোডি, হোটেল নূর উল্লেখযোগ্য।',
      data7:'কোথায় খাবেন',
      data8:'ইটাখোলা মুড়া যাওয়ার পথে ইরিশ হিল হাইওয়ে হোটেল, সৌদিয়া হোটেল, ঝাল বাংলা রেস্তোরা, হোটেল ময়নামতি, উজান হাইওয়ে, আনোয়ার হোটেল, সাকিব হোটেল এবং লিজা হোটেল সহ বেশকিছু ভালমানের রেস্টুরেন্টে আপনার পছন্দের খাবার খেতে পারবেন। আর অবশ্যই কুমিল্লার মনোহরপুরের মাতৃভাণ্ডারের বিখ্যাত রসমালাই ও রসগোল্লা, ভগবতীর পেড়া, মিঠাইয়ের মালাই চপের স্বাদ নিতে ভুলবেন না।',


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/7 Itakhola-Mura.jpg"),
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





class JList_8 extends StatefulWidget {

  @override
  _JList_8State createState() => _JList_8State();
}

class _JList_8State extends State<JList_8> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1: 'হাসন রাজার জাদুঘর',
        data2: 'হাসন রাজার বাড়ি ও জাদুঘর দেখতে যেতে হবে সুরমা নদীর ঘেঁষা শহর সুনামগঞ্জ (Sunamganj) জেলায়। ১৮৫৪ সালে হাসন রাজা জন্মগ্রহন করেন। এখান থেকেই হাসন রাজা তার অনন্য সব গান রচনা করেন। বর্তমানে এই বাড়িতে গড়ে তোলা হয়েছে মিউজিয়াম যা বাড়িটিকে হাসন রাজার জাদুঘর (Hason Raja Museum) হিসাবে পরিচিত করে তুলেছে। হাসন রাজার জাদুঘরের প্রবেশ পথে প্রথমেই চোখে পরে লালন শাহের ছবি। এরপর ১৯৬২ সালে কলকাতার একটি স্টুডিও থেকে সংগ্রহ করা হাসন রাজার একমাত্র আলোকচিত্র দেখতে পাওয়া যায়। যদিও বিভিন্ন শিল্পীর আঁকা প্রায় ৮-৯ টি ছবি জাদুঘরে রক্ষিত আছে। হাসন',
        data3: 'হাসন রাজার জাদুঘরে যা আছে',
        data4: 'হাসন রাজা যেসব চেয়ার টেবিলে বসে গান রচনা করতেন, হাসন রাজার রঙিন আলখাল্লা, যা তিনি কোনো রাজা বা ইংরেজ সাহেবদের সাথে দেখা করার সময় পড়তেন। ১৯০২ সালে উইলিয়াম লিটলের কাছে থেকে উপহার পাওয়া পানি পরিশোধন পাত্র, তলোয়ার, মাটির হাঁড়ি ইত্যাদি। এছাড়াও হাসন রাজা জাদুঘরে রয়েছে চায়ের টেবিল, দুধ খাওয়া ও দোহনের পাত্র, বাটি, পিতলের কলস, পানদানি, কাঠের খড়ম, বৃদ্ধ বয়সের লাঠি, মোমদানি, হাতে লেখা গানের কপি, ঢোল, মন্দিরা, করতাল এবং জমিদারির কাজে ব্যবহৃত ক্যাশবাক্স।',
    data5: 'কিভাবে যাবেন',
        data6: 'রাজধানী ঢাকার সায়দাবাদ থেকে এনা পরিবহন, হানিফ এন্টারপ্রাইজ, মামুন পরিবহন এবং শ্যামলী পরিবহনের বাসে করে ৬৫০ টাকা থেকে ৭৫০ টাকা ভাড়ায় সুনামগঞ্জ যেতে পারবেন। সুনামগঞ্জ বাস স্ট্যান্ড থেকে সহজেই রিকশায় চড়ে সাহেব বাজার ঘাটের পাশে অবস্থিত হাসন রাজার জাদুঘর দেখতে যেতে পারবেন পাবেন।',
        data7: 'কোথায় থাকবেন',
        data8: 'সুনামগঞ্জ শহরে ২০০ থেকে ১০০০ টাকা ভাড়ায় বিভিন্ন মানের হোটেলে রাতে থাকতে পারবেন। উল্লেখযোগ্য হোটেলের মধ্যে রয়েছে হোটেল নূর, হোটেল সারপিনিয়া, হোটেল নূরানী, হোটেল মিজান, হোটেল প্যালেস এবং সুরমা ভ্যালী আবাসিক রিসোর্ট।'




    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/8 hason-raja-museum.jpg"),
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







class JList_9 extends StatefulWidget {

  @override
  _JList_9State createState() => _JList_9State();
}

class _JList_9State extends State<JList_9> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1: 'রেলওয়ে কারখানা',
        data2: 'বাংলাদেশের প্রাচীন শহরগুলোর মধ্যে নীলফামারী জেলার সৈয়দপুর অন্যতম। ব্যবসা-বাণিজ্যের জন্য প্রসিদ্ধ হলেও বাংলাদেশের বৃহত্তম রেলওয়ে কারখানা (Railway Workshop) অবস্থিত হওয়ায় সৈয়দপুর অনেকের কাছে ‘রেলের শহর’ হিসাবে পরিচিতি লাভ করেছে। ১৮৭০ সালে প্রায় ১১০ একর জমির উপর নির্মিত এই রেলওয়ে কারখানায় নাট-বল্টু থেকে শুরু করে রেলওয়ের ব্রডগেজ ও মিটারগেজ লাইনের বগি মেরামতসহ সব ধরণের কাজ করা হয়। রেলওয়ে কারখানার অফিসের সামনে সবুজ চত্বরে সর্বশেষ ৭২ সালে বাগেরহাট-রূপসা সেকশনে ব্যবহৃত ব্রিটিশ আমলের ন্যারোগেজ ইঞ্জিন রাখা আছে। ১৯০১ সালে ইংল্যান্ডের ভলকান কোম্পানি কতৃক তৈরি ইঞ্জিন ব্যতীত আরও কয়েকটি ইঞ্জিন সৈয়দপুর রেলওয়ে কারখানার লোকো ট্রান্সপোর্ট মিউজিয়ামে প্রদর্শনের জন্য রাখা আছে। বিভিন্ন প্রতিষ্ঠান হতে সৈয়দপুর রেলওয়ে কারখানায় শিক্ষা সফরের বাস্তব জ্ঞানার্জনের জন্য প্রচুর শিক্ষার্থীদের আগমন ঘটে।',
        data3: 'কিভাবে যাবেন',                                                data4: 'কমলাপুর রেলওয়ে ষ্টেশন থেকে নীল সাগর এক্সপ্রেস ট্রেনে সৈয়দপুর যেতে পারবেন। আসনভেদে ট্রেনের টিকেটের মূল্য ৪৫৫-১০৪১ টাকা। এছাড়া গাবতলী ও মহাখালি থেকে সৈয়দপুরের পথে বেশকিছু বাস চলাচল করে। এসি/নন-এসি বাসের জনপ্রতি ভাড়া লাগবে ৭৫০-১৪৫০ টাকা। আর অল্প সময়ে সৈয়দপুর যেতে চাইলে আকাশ পথকে বেছে নিতে পারবেন। ঢাকার শাহজালাল আন্তর্জাতিক বিমানবন্দর থেকে হতে সৈয়দপুরগামী ফ্লাইট পরিচালনাকারী বিমান সংস্থার মধ্যে রয়েছে- বিমান বাংলাদেশ এয়ারলাইন্স, নভোএয়ার এবং ইউএস বাংলা এয়ারলাইন্স।',
        data5: 'কোথায় থাকবেন',
        data6: 'সৈয়দপুরে থাকতে চাইলে উত্তরা ইপিজেডে অবস্থিত দিয়াজ হোটেল এন্ড রিসোর্টস এ যোগাযোগ করতে পারেন। কিংবা নীলফামারীর সৈয়দপুর রোডে অবস্থিত বনফুল, এবাদত প্লাজায় অবস্থিত অবকাশ কিংবা নাভানা আবাসিক হোটেলে রাত্রি যাপন করতে পারেন।'




    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/9 Saidpur-Railway.jpg"),
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






class JList_10 extends StatefulWidget {

  @override
  _JList_10State createState() => _JList_10State();
}

class _JList_10State extends State<JList_10> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


      data1: 'রকস মিউজিয়াম',
      data2: 'বাংলাদেশের একমাত্র পাথরের জাদুঘর বা রকস মিউজিয়াম (Panchagarh Rocks Museum) পঞ্চগড় সরকারি মহিলা কলেজ ক্যাম্পাসে স্থাপন করা হয়েছে। ১৯৯৭ সালে সম্পূর্ন ব্যক্তিগত উদ্যোগে অধ্যক্ষ নাজমুল হক এই পাথরের জাদুঘর গড়ে তোলেন। জাদুঘরে বিভিন্ন রং, আকৃতি এবং বৈশিষ্ট্যের ভিত্তিতে পাথর সংরক্ষিত আছে। হাজার বছরের পুরনো পাথর ছাড়াও এখানে প্রাচীন ইমারতের ইট এবং পোড়ামাটির বিভিন্ন মূর্তি দেখতে পাওয়া যায়।',
      data3: 'কিভাবে যাবেন',                                                data4: 'ঢাকা থেকে সরাসরি পঞ্চগড় যাবার জন্য বিভিন্ন ডে-নাইট বাস সার্ভিস চালু আছে। ঢাকার শ্যামলী, গাবতলী বাস টার্মিনাল ও মিরপুর থেকে নাবিল পরিবহন, হানিফ এন্টারপ্রাইস, তানযিলা ট্রাভেল, বরকত ট্রাভেল এ পঞ্চগড় যেতে পারবেন। ঢাকা থেকে পঞ্চগড় নন এসি বাস ভাড়া ৮০০-৯৫০ টাকা এবং এসি বাস ভাড়া ১১০০-১৭০০ টাকা। ট্রেনে যেতে চাইলে ঢাকার কমলাপুর থেকে পঞ্চগড় এক্সপ্রেস, একতা ও দ্রুতযান এক্সপ্রেস ট্রেনে পঞ্চগড় আসতে পারেন। শ্রেণী অনুযায়ী ট্রেন টিকেটের ভাড়া জনপ্রতি ৫৫০ থেকে ১৯৪২ টাকা পর্যন্ত।',
      data5: 'কোথায় থাকবেন',
      data6: 'রাত্রি যাপনের জন্য পঞ্চগড়ে বিভিন্ন মানের আবাসিক হোটেল পাবেন। এই সব হোটেলের ধরণ অনুযায়ী ৫০০ থেকে ১৫০০ টাকা ভাড়ায় থাকতে পারবেন।',                                              data7: 'কোথায় খাবেন',
      data8: 'পঞ্চগড় শহরে খাবার জন্য বিভিন্ন মানের হোটেল পাবেন তবে মৌচাক হোটেলের খাবার খেয়ে দেখতে পারেন।',



    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jadughor/10 rocks-museum-panchagar.jpg"),
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


