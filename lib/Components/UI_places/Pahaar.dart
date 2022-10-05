
import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

int index = -1;


class PList_1 extends StatefulWidget {

  @override
  _PList_1State createState() => _PList_1State();
}

class _PList_1State extends State<PList_1> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1: ' চন্দ্রনাথ পাহাড় ও মন্দির',
        data2: 'চন্দ্রনাথ পাহাড় (Chandranath Hill) হিন্দু ধর্মালম্বীদের তীর্থস্থান আর সুবিশাল সমুদ্র অপরূপ প্রাকৃতিক সৌর্ন্দয্যের লীলাভূমি সীতাকুণ্ডকে করেছে অনন্য। চন্দ্রনাথ পাহাড়ের অবস্থান সীতাকুণ্ড বাজার থেকে মাত্র ৪ কিলোমিটার পূর্বে দিকে। সীতাকুণ্ড বাজার থেকে পায়ে হেঁটে কিংবা রিক্সায় করে চন্দ্রনাথ পাহাড়ে নিচের গেটের কাছে যাওয়া যায়। তবে পায়ে হেঁ‌টে চন্দ্রনাথ পাহাড়ে যাবার পথে হিন্দুদের বেশ কিছু ধর্মীয় স্থাপনা ও অধিবাসীদের জীবন যাত্রার চিত্র দেখে যেতে পারবেন। এছাড়াও পাহাড়ের একটু গভীরে গেলে চোখে পড়বে জুমক্ষেত এবং বাণিজ্যিক উদ্দেশ্যে চাষ করা ফুলের বাগান। চন্দ্রনাথ পাহাড় চূড়াতেই চন্দ্রনাথ মন্দির (Chandranath Temple) অবস্থিত।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকা থেকে বাসে সীতাকুন্ড : ঢাকার সায়েদাবাদ, ফকিরাপুল, মহাখালি যে কোন বাস স্ট্যান্ড থেকে চট্রগ্রাম গামী যে কোন বাসে করেই যেতে পারবেন সীতাকুন্ড। এস আলম, শ্যামলি, সৌদিয়া, ইউনিক, হানিফ, ঈগল, এনা প্রভৃতি পরিবহনের নন এসি বাস ভাড়া ৪২০- ৪৮০ টাকা। এসি বাসের মধ্যে গ্রিনলাইন, সৌদিয়া, সোহাগ, টি আর এইসব বাস ভাড়া ৮০০-১১০০ টাকা।',
        data5: 'কোথায় থাকবেন',
        data6: 'সীতাকুণ্ডে থাকার জন্য হোটেল সৌদিয়া, সাইমুন আবাসিক সহ সীতাকুণ্ড বাজারে কয়েকটি মাঝারি মানের আবাসিক হোটেল আছে। হোটেল সৌদিয়ায় বুকিং দিতে ফোন করতে পারেন',
        data7: 'কোথায় খাবেন',
        data8: 'সীতাকুণ্ডে সাধারণ মানের হোটেলের মধ্যে সৌদিয়া রেস্টুরেন্ট, আপন রেস্টুরেন্ট এবং আল আমিন উল্লেখ্যযোগ্য। তবে ভাল খাবার পরিবেশনায় এখানে আল আমিনের বেশ সুনাম রয়েছে।'



    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/1 condronath pahar.jpg"),
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




class PList_2 extends StatefulWidget {

  @override
  _PList_2State createState() => _PList_2State();
}

class _PList_2State extends State<PList_2> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'চেরাগি পাহাড়',
        data2:'চট্টগ্রাম জেলার শিল্প, সংস্কৃতি ও সাহিত্য চর্চার বিচরণক্ষেত্র হিসেবে চেরাগি পাহাড় (Cheragi Pahar) একটি প্রসিদ্ধ জায়গা। ডিসি হিল (বর্তমান নজরুল স্কয়ার) সংলগ্ন মোমিন রোড ও জামাল খান রোডের সংযোগ স্থলে চেরাগি পাহাড় চত্বরের (Cheragi Square) অবস্থান। চেরাগি মোড় নামে সুপরিচিত এ স্থানটি প্রতিদিন কবি, সাহিত্যিক, শিল্পী, সংবাদিক, পাঠক, সংগঠক, রাজনৈতিক কর্মী ইত্যাদি নানান শ্রেণী পেশার সৃজনশীল মানুষের আনাগোনা ও আড্ডায় সরগরম হয়ে ওঠে।প্রচলিত আছে, সুফি সাধক হযরত বদর আউলিয়া (র.) ইসলাম ধর্ম প্রচারের উদ্দেশ্যে আরব থেকে সমুদ্রে ভাসমান একটি পাথরে আরোহন করে চট্টগ্রাম এসে উপস্থিত হন। হযরত বদর আউলিয়া (র.) একটি অলৌকিক চেরাগ হাতে জন-মানবহীন পাহাড় পর্বতে পূর্ণ চটগ্রামের একটি পাহাড়ের উপর উঠলে জ্বীন-পরীরা তাকে বাধা দেয়। কিন্তু জ্বীন পরীরা তাকে এই স্থান ত্যাগের জন্য বলে। হযরত বদর আউলিয়া (র.) জ্বীন পরীদেরকে শুধু তার চেরাগ রাখার বিনিময়ে পাহাড় ত্যাগ করেন। অতঃপর তাঁর অলৌকিক চেরাগের তীব্র বিকিরণের তেজ জ্বীনপরীরা সহ্য করতে না পেরে চট্টগ্রাম ছেড়ে চলে যায়। এরপর ধীরে ধীরে এখানে মানুষের বসতি গড়ে উঠে এবং এই পাহাড়টি চেরাগি পাহাড় নামে পরিচিতি লাভ করে।',
    data3:'কিভাবে যাবেন',
    data4:'চট্টগ্রাম শহরের আন্দরকিল্লা বাস স্টপের কাছে চেরাগি চত্বরের অবস্থান। চট্টগ্রাম শহরের যেকোন স্থান থেকে বাস, সিএনজি ও রিকশায় চড়ে চেরাগি পাহাড় যেতে পারবেন।ঢাকা থেকে চট্টগ্রাম: ঢাকাস্থ সায়দাবাদ বাস টার্মিনাল থেকে সৌদিয়া, ইউনিক, টিআর ট্রাভেলস, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী, সোহাগ, এস. আলম, মডার্ন লাইন ইত্যাদি বিভিন্ন পরিবহনের এসি-নন/এসি বাসে চট্টগ্রাম যাওয়া যায়। আর ঢাকা থেকে ট্রেনে চট্টগ্রাম যেতে চাইলে কমলাপুর রেলওয়ে ষ্টেশন হতে সোনার বাংলা, সুবর্ন এক্সপ্রেস, তূর্ণা-নিশীথা, মহানগর প্রভাতী/গোধূলী, চট্রগ্রাম মেইলে যাত্রা করতে পারেন।',
    data5:'কোথায় থাকবেন',
    data6:'চট্টগ্রাম শহরের ষ্টেশন রোড, জেএসসি মোড় এবং আগ্রাবাদ এলাকায় বিভিন্ন মানের আবাসিক হোটেল রয়েছে। এসব আবাসিক হোটেলের মধ্যে হোটেল স্টার পার্ক, হোটেল ডায়মন্ড পার্ক, হোটেল মিসখা, হোটেল হিলটন সিটি, এশিয়ান এসআর হোটেল, হোটেল প্যারামাউন্ট, হোটেল সাফিনা প্রভৃতি উল্লেখযোগ্য।',
    data7:'কোথায় খাবেন',
    data8:'চট্টগ্রামের ঐতিহ্যবাহী খাবারের জন্য হোটেল জামানের বেশ সুনাম রয়েছে। আর মেজবানি খাবারের জন্য চকবাজারের মেজবান হাইলে আইয়্যুন রেস্তোরাঁ প্রসিদ্ধ। এছাড়া চট্টগ্রাম শহরে অসংখ্য ভালমানের খাবার হোটেল ও রেস্টুরেন্ট ছড়িয়ে আছে। এদের মধ্যে বারকোড ক্যাফে, ক্যাফে ৮৮, গ্রিডি গাটস, সেভেন ডেইজ, গলফ গার্ডেন রেস্টুরেন্ট, কোষ্টাল মারমেইড রেস্টুরেন্ট এন্ড লাউঞ্জ, বোনানজা পোর্ট রেস্টুরেন্ট প্রভৃতি অন্যতম'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/2 ceragi pahar.jpg"),
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



class PList_3 extends StatefulWidget {

  @override
  _PList_3State createState() => _PList_3State();
}

class _PList_3State extends State<PList_3> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'বাটালি হিল',
        data2:'পার্বত্য জেলা চট্টগ্রামের জিরো পয়েন্ট থেকে মাত্র ১ কিলোমিটার দূরে টাইগারপাস এলাকায় অবস্থিত শহরের সবচেয়ে উঁচু পাহাড়ের নাম বাটালি হিল (Batali Hill)। বাটালি হিলের রাস্তা প্যাঁচালো হবার কারণে এটি জিলাপি পাহাড় নামেও পরিচিত। পাহাড়ের সর্বোচ্চ চূড়ার নাম শতায়ু অঙ্গন। ২৮০ ফুট উচ্চতার বাটালি হিলের চূড়া থেকে চট্টগ্রাম শহর এবং বঙ্গোপসাগর দেখা যায়। পাহাড়ের উপর থেকে বঙ্গোপসাগরের মনোমুগ্ধকর সূর্যাস্তের দৃশ্য উপভোগ করার পাশাপাশি বিশ্রাম নেওয়ার সুব্যবস্থা রয়েছে। একসময় বাটালি হিলের উপর বাতিঘর এবং বিমান বিধ্বংসী কামান স্থাপন করা হয়েছিল। ২০০৩ থেকে ২০০৫ সাল পর্যন্ত বাটালী পাহাড়ে জলপাই, কাঁঠাল, কালোজাম, লিচু, কমলা, আম, জাফরান, চন্দন, কফি, অর্জুনের মতো বিভিন্ন প্রজাতির প্রায় সাড়ে ১২ হাজার গাছ রোপণ করা হয়েছে। বর্তমানে এই পাহাড় বাংলাদেশ গণপূর্ত বিভাগের অন্তর্ভুক্ত হওয়ায় পাহাড়ের চূড়ায় গণপূর্ত মন্ত্রণালয়ের অফিস ও বাংলো রয়েছে। পাহাড়-পর্বতের প্রতি দুর্নিবার আকর্ষণের কারণে দেশের বিভিন্ন প্রান্ত থেকে এডভেঞ্চারপ্রেমীরা চট্টগ্রামের বাটালি হিলের সৌন্দর্যে মুগ্ধ হতে ছুটে আসেন।',
        data3:'কিভাবে যাবেন',
        data4:'রাজধানীর গাবতলী, সায়েদাবাদ এবং মহাখালী বাস টার্মিনাল থেকে চট্টগ্রামে যাওয়ার হানিফ, এস আলম, ইউনিক, শ্যামলী, সেন্টমার্টিন, টিআর ট্রাভেলস ইত্যাদি বিভিন্ন বাস সার্ভিস রয়েছে। রেলপথে, কমলাপুর রেলওয়ে ষ্টেশন বা বিমানবন্দর রেলওয়ে ষ্টেশন থেকে সুবর্ন এক্সপ্রেস, মহানগর প্রভাতি বা সোনার বাংলা এক্সপ্রেসের মতো আন্তঃনগর ট্রেনে চট্টগ্রাম যেতে পারবেন। এছাড়া আরো কম সময়ে চট্টগ্রাম যেতে চাইলে আকাশপথকে বেছে নিতে পারেন। চট্টগ্রাম শহরের যেকোন স্থান থেকে বাস, অটোরিকশা বা সিএনজির মতো স্থানীয় পরিবহণে ইস্পাহানী মোড় সংলগ্ন বাটালি হিল যেতে পারবেন।',
        data5:'কোথায় থাকবেন',
        data6:'চট্টগ্রামের আগ্রাবাদ, ষ্টেশন রোড ও জিএসসি মোড়ে হোটেল প্যারামাউন্ট, হোটেল স্টার পার্ক, হোটেল হিল টন সিটি, হোটেল ডায়মন্ড পার্ক, হোটেল সাফিনা, এশিয়ান এসআর হোটেল এবং হোটেল মিসকা ছাড়াও অসংখ্য আবাসিক হোটেল রয়েছে।',
        data7:'কোথায় খাবেন',
        data8:'চট্টগ্রাম শহরে বাংলা, চাইনিজ, ফাস্টফুড সহ বিভিন্ন দেশি বিদেশি খাবারের অসংখ্য রেস্টুরেন্ট আছে। চট্টগ্রামের জনপ্রিয় ঐতিহ্যবাহী খাবারের মধ্যে মেজবান এবং গরুর কালাভুনা অন্যতম।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/3 batali hill.JPG"),
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



class PList_4 extends StatefulWidget {

  @override
  _PList_4State createState() => _PList_4State();
}

class _PList_4State extends State<PList_4> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'আদিনাথ মন্দির',
        data2:'কক্সবাজার জেলার মহেশখালী উপজেলার গোরকঘাটা ইউনিয়নের ঠাকুরতলা গ্রামের মৈনাক পাহাড়ের চূড়ায় আদিনাথ মন্দির (Adinath Temple) অবস্থিত। সনাতন ধর্মালম্বিদের কাছে এই মন্দিরের রয়েছে আধ্যাত্মিক গুরুত্ব। হিন্দু সম্প্রদায়ের দেবতা মহাদেবের নামানুসারে মন্দিরের নামকরন করা হয়েছে আদিনাথ। আবার আদিনাথের অন্য নাম মহেশ, যা থেকে মহেশখালি নামের সৃষ্টি। মন্দিরটি সমুদ্রপৃষ্ট থেকে ৮৫.৩ মিটার উঁচুতে অবস্থিত। বর্তমানে এই মন্দির কমপ্লেক্সের ভেতরে রাখাইন বৌদ্ধ বিহার ও মসজিদ আছে এজন্য অনেকে মন্দিরটিকে অসাম্প্রদায়িক চেতনার প্রতীক হিসাবে আখ্যায়িত করেন। প্রতিবছর ফাল্গুন মাসে শিব চতুর্দশী উপলক্ষে ১০/১৫ দিন ব্যাপী মেলা বসে তখন হাজার হাজার দর্শনার্থীর সমাগম ঘটে।',
        data3:'কিভাবে যাবেন',
        data4:'কক্সবাজার থেকে যেতে হবে কাস্তুরী ঘাট বা ৬ নং জেটি। কক্সবাজারের যে কোন জায়গা থেকে অটো রিক্সা অথবা সিএনজি নিয়ে চলে যান ঘাটে। কক্সবাজারের কস্তুরী ঘাট বা ৬ নং জেটি ঘাট থেকে জনপ্রতি ৮০ টাকা ভাড়ায় স্পিডবোট করে মহেশখালী যাওয়ার জন্যে স্পীড বোট পাবেন, মহেশখালী পৌঁছাতে সময় লাগবে ২০-২৫ মিনিট। এছাড়া ইঞ্জিন নৌকা দিয়েও যাওয়া যায়। চাইলে স্পিডবোট বা ইঞ্জিন নৌকা রিজার্ভ করে নিতে পাড়বেন।',
        data5:'কি খাবেন',
        data6:'মহেশখালিতে খাবার জন্য ইদানিং বেশ কিছু রেস্টুরেন্ট গড়ে উঠেছে। সেখান থেকে পছন্দের খাবার খেতে পারেন। তবে খাওয়ার আগে দাম ভালো করে যাচাই করে নিবেন।',
        data7:'কোথায় থাকবেন',
        data8:'এখানে পর্যটকদের জন্য কোন আবাসন গড়ে উঠেনি তাই মহেশখালিতে রাত্রি যাপন তেমন নিরাপদ নয়। রাতে কক্সবাজার কিংবা সুবিধাজনক স্থানে ফিরে যাওয়াই উত্তম।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/4 adinath mondir.jpg"),
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


class PList_5 extends StatefulWidget {

  @override
  _PList_5State createState() => _PList_5State();
}

class _PList_5State extends State<PList_5> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'সাজেক ভ্যালি',
        data2:'সাজেক ভ্যালি (Sajek Valley), বর্তমান সময়ে ভ্রমণ পিপাসু মানুষের সবচেয়ে জনপ্রিয় গন্তব্য সাজেক। রাঙামাটি জেলার বাঘাইছড়ি উপজেলায় অবস্থিত সাজেক বাংলাদেশের সবচেয়ে বড় ইউনিয়ন হিসাবে খ্যাত। সমুদ্রপৃষ্ঠ থেকে যার উচ্চতা ১৮০০ ফুট। সাজেকের অবস্থান রাঙামাটি জেলায় হলেও ভৌগলিক কারণে খাগড়াছড়ির দীঘিনালা থেকে সাজেক যাতায়াত অনেক সহজ। খাগড়াছড়ি জেলা থেকে সাজেকের দূরত্ব ৭০ কিলোমিটার আর দীঘিনালা থেকে ৪০ কিলোমিটার।',
        data3:'কি দেখবেন',
        data4:'চারপাশে মনোরম পাহাড় সারি, সাদা তুলোর মত মেঘের ভ্যালি আপনাকে মুগ্ধ করবেই। সাজেক এমনই আশ্চর্য্যজনক জায়গা যেখানে একই দিনে প্রকৃতির তিন রকম রূপের সান্নিধ্যে আপনি হতে পারেন চমৎকৃত। কখনো বা খুব গরম অনুভূত হবে তারপর হয়তো হটাৎ বৃষ্টিতে ভিজে যাবেন কিংবা চোখের পলকেই মেঘের ঘন কুয়াশার চাদরে ঢেকে যাবে আপনার চারপাশ। প্রাকৃতিক নিসর্গ আর তুলোর মত মেঘের পাহাড় থেকে পাহাড়ে উড়াউড়ির খেলা দেখতে সাজেক আদর্শ জায়গা। কংলাক পাহাড় হচ্ছে সাজেক ভ্রমণে আসা পর্যটকদের কাছে প্রধান আকর্ষণ। আর সাজেক ভ্যালির শেষ গ্রাম কংলক পাড়া লুসাই জনগোষ্ঠী অধ্যুষিত এলাকা। কংলাক পাড়া থেকেই কর্ণফুলী নদী উৎপত্তিস্থল ভারতের লুসাই পাহাড় দেখা যায়। চাইলে রুইলুই পাড়া থেকে দুই ঘন্টা ট্রেকিং করে কমলক ঝর্ণা দেখে আসতে পারবেন। সুন্দর এই ঝর্ণাটি অনেকের কাছে পিদাম তৈসা ঝর্ণা বা সিকাম তৈসা ঝর্ণা নামেও পরিচিত।',
        data5:'সাজেক যাবার উপায়',
        data6:'সাজেকের অবস্থান রাঙামাটি জেলায় হলেও খাগড়াছড়ি জেলার দীঘিনালা হয়ে সাজেক যাতায়াত অনেক সহজ। তাই প্রথমেই আপনাকে খাগড়াছড়ি আসতে হবে। ঢাকা থেকে খাগড়াছড়ি যেতে চাইলে হানিফ এন্টারপ্রাইজ, সৌদিয়া, শ্যামলি, শান্তি পরিবহন, এস আলম, ঈগল ইত্যাদি বাসে করে যেতে পারবেন। নন এসি এইসব বাস ভাড়া ৬২০ টাকা। এসি বাসে যেতে চাইলে সেন্টমার্টিন হুন্দাই রবি এক্সপ্রেস, হানিফ এন্টারপ্রাইজ, রিলাক্স ট্রান্সপোর্ট, শ্যামলী, দেশ ট্র্যাভেলস, ইকোনো সার্ভিস ১০০০ থেকে ১৫০০ টাকা ভাড়ায় যেতে পারবেন। আর বাসগুলো সাধারণত রাত ১০ টার মধ্যে খাগড়াছড়ির উদ্দেশ্যে ছেড়ে যায়। এছাড়া শান্তি পরিবহন বাস সরাসরি দীঘিনালা যায়, ভাড়া ৬৮০ টাকা। ঢাকায় গাবতলী, কলাবাগানসহ শহরের বিভিন্ন প্রান্তে রয়েছে এইসব পরিবহণের কাউন্টার। ছুটির দিন গুলোতে যেতে চাইলে আগে থেকেই টিকেট কেটে রাখা ভালো নয়তো পড়ে টিকেট পেতে ঝামেলা পোহাতে হতে পারে। খাগড়াছড়ি থেকে সাজেক এর দূরত্ব প্রায় ৭০ কিলোমিটার। খাগড়াছড়ি শহরের শাপলা চত্বরের কাছ থেকে জীপগাড়ি/চাঁন্দের গাড়ি রিজার্ভ নিয়ে সাজেক ভ্যালি ঘুরে আসতে পারবেন। যাওয়া আসা সহ দুইদিনের জন্যে ভাড়া নিবে ৯,০০০-১০,৫০০ টাকা। এক গাড়িতে করে ১২-১৫ জন যেতে পারবেন। তবে লোক কম থাকলে অন্য কোন ছোট গ্রুপের সাথে কথা বলে শেয়ার করে গাড়ি নিলে খরচ কম হবে। যদি তা সম্ভব না হয় তাহলে সিএনজি দিয়ে সাজেক যেতে পারবেন। রিজার্ভ ভাড়া লাগবে ৪০০০-৫০০০ টাকা। তবে পাহাড়ি উঁচু নিচু রাস্তা বলে সিএনজি দিয়ে ভ্রমণ না করাই ভালো।',
        data7:'সাজেকের রিসোর্ট ও কটেজ & খাওয়া দাওয়া',
        data8:'রিসোর্ট রুংরাং (Resort RungRang) : সাজেকের বেস্ট রিসোর্ট গুলোর একটি রিসোর্ট রুংরাং। রিসোর্টে বসেই দিগন্তজোড়া সারি সারি পাহাড় এবং মেঘের উড়োউড়ি দেখার জন্য আদর্শ। নান্দ্যনিক ইন্টেরিওর ডিজাইনে সাজানো এই রিসোর্টে আছে ৪টি ডাবল এবং ৪টি কাপল রুম। ছুটির দিনে ডাবল বেড রুম ভাড়া ৩৫০০ টাকা এবং কাপল ২৮০০ টাকা। অন্য সকল দিনে ডাবল বেড রুম ভাড়া ২৮০০ এবং কাপল ২০০০ টাকা। রুংরাং রিসোর্ট ভ্রমণ গাইড ব্যবহারকারীদের জন্যে দিচ্ছে রুম বুকিং এ ৫-১০% ডিসকাউন্ট সুবিধা। বুকিং এর সময় রেফারেন্স হিসেবে আপনি ভ্রমণ গাইড ব্যবহারকারী বলুন আর উপভোগ করুন এই স্পেশাল অফার। বুকিং এর জন্যে যোগাযোগ নাম্বার: 01884-710 723, 01869-649 817 সাজেক রিসোর্ট (Sajek Resort) : বাংলাদেশ সেনাবাহিনী পরিচালিত রিসোর্ট সাজেক রিসোর্ট। নন এসি রুম গুলোর ভাড়া ১০,০০০ – ১৫,০০০ টাকা। আছে খাবারে ব্যবস্থা। সেনাবাহিনিতে কর্মরত বা প্রথম শ্রেনীর সরকারি কর্মকর্তাদের জন্যে ডিসকাউন্ট রয়েছে। যোগাযোগ করতে পারেন এই নাম্বারেঃ 01859-025694 / 01847-070395 / 01769-302370রুন্ময় রিসোর্ট (Runmoy Resort) : মোট ৫ টি রুম আছে। প্রতিটি কক্ষে ২ জন থাকতে পারবেন। নিচ তলার রুম ভাড়া ৪৪৫০ টাকা। প্রতিটি কক্ষে ২ জন থাকতে পারবেন। ৬০০ টাকা দিয়ে অতিরিক্ত বেড নিতে পারবেন। উপরের তলায় দুইটি কক্ষ আছে ভাড়া ৪৯৫০ টাকা। প্রতিটি কক্ষে দুই জন থাকতে পারবেন। এটাতেও ৬০০ টাকা দিয়ে অতিরিক্ত বেড নিতে পারবেন। যোগাযোগ: 0186547688মেঘপুঞ্জি রিসোর্ট (Meghpunji Resort) : সুন্দর ইকো ডেকোরেশনের ও আকর্ষণীয় ল্যান্ডস্কেপিক ভিউ সহ মেঘপুঞ্জিতে আছে ৪টি কটেজ, প্রতিটি কটেজে সর্বোচ্চ ৪ জন থাকা যাবে। ভাড়া ৪০০০-৪৫০০ টাকা। যোগাযোগঃ 01815-761065, ফেসবুক পেইজ। ম্যাডভেঞ্চার রিসোর্ট (Madventure Resort) : রিসোর্টের প্রতি তলায় আছে প্রশস্ত বারান্দা। ২৪ ঘন্টা ইলেকট্রিসিটি ও পানির ব্যবস্থা আছে। ম্যাডভেঞ্চার রিসোর্টে প্রিমিয়াম কাপল রুম ভাড়া ৪০০০ টাকা, কাপল ক্লাসিক রুম ভাড়া ৩৫০০ টাকা এবং ডাবল ক্লাসিক রুম ভাড়া ৩৫০০ টাকা।  যোগাযোগঃ 01885-424242, ফেসবুক পেইজ।মেঘ মাচাং (Megh Machang) : সুন্দর ভিউ ও তুলনামূলক কম খরচে থাকার জন্যে মেঘ মাচাং রিসোর্ট অনেকের পছন্দ। আছে খাওয়া দাওয়ার ব্যবস্থা। মেঘ মাচাং-এ পাঁচটি কটেজ আছে । ভাড়া ৩৫০০-৪৫০০ টাকা। যোগাযোগঃ 01822-168877, ফেসবুক পেইজ।জুমঘর ইকো রিসোর্ট (Jumghor Eco Resort) : থাকার জন্যে এই রিসোর্টে পৃথক কটেজে মোট ৬টি কাপল রুম রয়েছে। প্রতিটি রুমে সর্বোচ্চ ৪ থাকার ব্যবস্থা আছে। কটেজ প্রতি ভাড়া ৪০০০ টাকা। যোগাযোগঃ 01884-208060, ফেসবুক পেইজ।লুসাই কটেজ (TGB Lushai Cottage) :সুন্দর ডেকোরেশন ও ভালো ল্যান্ডস্কেপিক ভিউয়ের টিজিবি লুসাই কটেজে কাপল, ফ্যামিলি কিংবা গ্রুপের জন্য বিভিন্ন ক্যাটাগরির কক্ষ রয়েছে। এসব রুমের ভাড়া ২৫০০ টাকা থেকে ৪৫০০ টাকা। যোগাযোগঃ 01634-198005, ফেসবুক পেইজ।আলো রিসোর্ট (Alo Resort) : সাজেকের একটু আগে রুইলুই পাড়ায়। ৬ টি রুমের মধ্যে ডাবল রুম ৪ টি (২টি বেড)। ভাড়া ১০০০-১৫০০ টাকা। যোগাযোগঃ 01841-000645, ফেসবুক পেইজ।আদিবাসী ঘর: এ ছাড়া আরও কম খরচে থাকতে চাইলে আদিবাসিদের ঘরেও থাকতে পারবেন। জনপ্রতি ১৫০-৩০০ টাকায় থাকা যাবে। ফ্যামিলি বা কাপল থাকার জন্যে আদর্শ না হলেও বন্ধু বান্ধব মিলে একসাথে থাকা যাবে।     সব রিসোর্টে খাবার ব্যবস্থা আছে তাই আগেই রিসোর্টগুলোতে বলে রাখলে পছন্দমত রান্না করে দিবে সেক্ষেত্রে প্রতিবেলা প্রতিজন ১০০-২৫০ টাকা পর্যন্ত খরচ হতে পারে আর মেনু হিসেবে পাবেন ভাত আলুভর্তা, মুরগীর মাংস ইত্যাদি। চাইলে রাতে বার বি কিউও করতে পারবেন। এছাড়া আদিবাসী ঘরেও খাওয়া যায়, আগে থেকেই বলে রাখতে হবে কি খাবেন, তাহলে রান্না করে দিবে। সাজেকে খুব সস্তায় পেঁপে, আনারস, কলা ইত্যাদি ফল পাবেন চেখে দেখতে ভুল করবেন না।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/5 sajek.jpg"),
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





class PList_6 extends StatefulWidget {

  @override
  _PList_6State createState() => _PList_6State();
}

class _PList_6State extends State<PList_6> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'নীলগিরি',
        data2:'নীলগিরি (Nilgiri) কে বলা হয় বাংলার দার্জিলিং। দীগন্ত জুড়ে সবুজ পাহাড় আর মেঘের লুকোচুরি যে কাউকে এর রূপ দিয়ে বিমোহিত করে রাখবে। যদি সমুদ্র পৃষ্ট থেকে ২২০০ ফুট উচ্চতায় মেঘ ছোঁয়ার ইচ্ছে থাকে তাহলে নীলগিরি আপনার সেই ইচ্ছে পূরণ করবে। নীলগিরি পাহাড় চূড়াতেই রয়েছে সেনাবাহিনী পরিচালিত বাংলাদেশের সবচেয়ে সুন্দর পর্যটক কেন্দ্র গুলোর একটি নীলগিরি পর্যটক কেন্দ্র। বান্দরবান জেলা সদর থেকে প্রায় ৫০ কিলোমিটার দূরে ২২০০ ফুট উঁচু পাহাড়ের নাম নীলগিরি। নীলগিরি থেকে চারপাশে চোখ মেলে তাকালে সারি সারি মেঘের পাহাড়ে আছড়ে পড়া ও প্রকৃতির অপার সৌন্দর্য্য আপনাকে বিমোহিত করবে। নীলগিরির চূড়া থেকে পাহাড়ের সারির পাশাপাশি আকাশ পরিস্কার থাকলে আপনার চোখে পড়বে বগালেক, বাংলাদেশের পঞ্চম সর্বোচ্চ পাহাড় চূড়া কেওক্রাডং, কক্সবাজারের সমুদ্র সৈকত এবং চট্টগ্রাম বন্দর ও সাঙ্গু নদী। এছাড়াও নীলগিরির কাছের আদিবাসী গ্রাম থেকে পরিচিত হতে পারেন তাদের কৃষ্টি ও সংস্কৃতির সাথে। নীলগিরিতে সেনাবাহিনীর ক্যাম্প থাকায় নিরাপত্তা নিয়ে কোন বিভ্রান্তির কারণ নেই তাই পরিবার নিয়ে অনায়াসেই ঘুরে আসতে পারেন বাংলার দার্জিলিং খ্যাত নীলগিরি। আপনার ঘুরে বেড়ানোকে সহজ ও আনন্দময় করে তোলার জন্যেই পড়ুন নীলগিরি নিয়ে সকল তথ্যের এই ভ্রমণ গাইড।',
        data3:'কখন যাবেন',
        data4:'নীলগিরি তার রূপের পসরা সারাবছরই মেলে ধরে রাখে। একেক সময়ে একেক রূপের আঁধার নীলগিরি। সকালে মেঘের ভেলার খেলা, সূর্যোদয়ের আলোর খেলা। বিকেলের সূর্যাস্ত কিংবা জ্যোৎস্না রাতের মায়াময় চারপাশ আপনাকে মুগ্ধ হতে বাধ্য করবেই। সাধারণত বর্ষা, শরৎ ও হেমন্তে মেঘের ভেলার লুকোচুরি খেলা প্রত্যক্ষ করা যায় সুন্দর করে। আর এই জন্যে নীলগিরিতে খুব সকালে যেতে হবে। শরৎ আর হেমন্তের মেঘ আর নীল আকাশ মিলেমিশে একাকার হয়ে থাকে। শীতে কুয়াশার চাদরে মুড়ে থাকে চারপাশ। সে এক দেখার মত দৃশ্য। তাই নীলগিরি যেতে পারবেন যে কোন সময়ই। তবে বর্ষায় অতি বৃষ্টি হলে পাহাড় ধ্বসের আশংকা থাকে তখন অনেক সময় নীলগিরি যাবার রাস্তা বন্ধ থাকে।',
        data5:'নীলগিরি যাবার উপায়',
        data6:'দেশের যে প্রান্তেই থাকেন আপনাকে প্রথমে বান্দরবান আসতে হবে নীলগিরি যাবার জন্যে। ঢাকার আব্দুল্লাহপুর, আরামবাগ, কল্যাণপুর, গাবতলী ও সায়েদাবাদ থেকে থেকে এস. আলম, সৌদিয়া, সেন্টমার্টিন পরিবহন, ইউনিক, হানিফ, শ্যামলি, ডলফিন ইত্যাদি পরিবহনের বাস বান্দারবানের উদ্দেশ্যে ছেড়ে যায়। জনপ্রতি এসব বাসের ভাড়া যথাক্রমে নন এসি ৭০০-৮০০ টাকা ও এসি ১০০০-১৬০০ টাকা। ঢাকা থেকে বাসে বান্দরবান যেতে সময় লাগে ৮-১০ ঘন্টা। ট্রেনে যেতে চাইলে ঢাকা থেকে চট্রগ্রাম গামী সোনার বাংলা, সুবর্ণ এক্সপ্রেস, তূর্ণা নিশিতা, মহানগর গোধূলি এইসব ট্রেনে করে চট্রগ্রাম যেতে পারবেন। শ্রেনীভেদে ভাড়া ৩৪৫ থেকে ১২২৯টাকা। এছাড়া ঢাকা থেকে আকাশ পথে সরাসরি চট্রগ্রাম আসতে পারবেন। চট্টগ্রামের বদ্দারহাট থেকে পূবালী ও পূর্বানী নামের দুটি বাস বান্দারবানের উদ্দেশ্যে যাত্রা করে। এ দুটি বাসে জনপ্রতি ২২০ টাকা ভাড়া লাগে। চট্রগ্রামের দামপাড়া বাস স্ট্যান্ড থেকে ২০০-৩০০ টাকা ভাড়ায় বাসে করে বান্দরবান আসতে পারবেন।',
        data7:'কোথায় খাবেন',
        data8:'নীলগিরিতে একটি রেস্টুরেন্ট রয়েছে, খিদে পেলে পেট ভরে সেখান থেকে খেয়ে নিতে পারেন। তবে সেখানে খেতে হলে আগে থেকে অর্ডার করে রাখতে হবে, জনপ্রতি ৩০০-৬০০ টাকায় খেতে পারবেন। অথবা ফিরে এসে বান্দরবান শহরে খেয়ে নিতে হবে। যাবার সময় কিছু শুকনো খাবার সাথে নিয়ে নিতে পারেন। বান্দরবান শহরে খাওয়ার জন্যে রয়েছে বেশি কিছু রেস্তোরা, তার মধ্যে তাজিং ডং ক্যাফে, মেঘদূত ক্যাফে, ফুড প্লেস রেস্টুরেন্ট, রুপসী বাংলা রেস্টুরেন্ট, রী সং সং, কলাপাতা রেস্টুরেন্ট ইত্যাদি।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/6 nilgiri.jpg"),
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





class PList_7 extends StatefulWidget {

  @override
  _PList_7State createState() => _PList_7State();
}

class _PList_7State extends State<PList_7> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'নীলাচল',
        data2:'নীলাচল (Nilachal) পর্যটন কেন্দ্র বান্দরবান শহর থেকে মাত্র ৫ কিলোমিটার দূরে সমুদ্রপৃষ্ট থেকে প্রায় দুই হাজার ফুট উচ্চতায় টাইগার পাড়ায় পাহাড়ের উপর অবস্থিত। নীলাচলে রয়েছে আকাশ, পাহাড় আর মেঘের অপূর্ব মিতালী আর তুলনাহীন প্রাকৃতিক সৌন্দর্য্য। সকালে মেঘের ভেলার খেলা আর বিকেলের সূর্যাস্ত এই দুইটি সময়ই নীলাচল তার পূর্ণ রূপ ধারণ করে। নীলাচল থেকে পুরো বান্দরবান শহরকে দেখা যায় আবার মেঘমুক্ত আকাশ থাকলে দূরের কক্সবাজার সাগর সৈকত হাতছানী দেয় পর্যটকদের। পাহাড়ের আঁকাবাঁকা রাস্তা সমানভাবে বিমোহিত করে পর্যটকদের। নীলাচলে বর্ষা, শরৎ আর হেমন্তকালে হাতের কাছে মেঘ খেলা করে। নীলাচলের একেক স্থান থেকে একেক রকম প্রাকৃতিক সৌন্দর্য্য উপভোগ করা যায়। আগত পর্যটকদের নীলাচলের রূপ অবলোকন করার সুবিধার জন্য এখানে রয়েছে কয়েকটি বিশ্রামাগার ও রিসোর্ট। নীলাচলে পর্যটকরা সাধারণত সূর্যোদয় থেকে সূর্যাস্ত পর্যন্ত থাকতে পারেন। পরবর্তীতে শুধুমাত্র যারা রিসোর্টে রাত্রি যাপন করেন তাদেরই থাকার অনুমতি মিলে। যদি মেঘের দেখা পেতে চান তবে খুব সকালে যেতে হবে নীলাচল।',
        data3:'নীলাচল যাবার উপায়',
        data4:'ঢাকা থেকে সরাসরি বাসে করে বান্দরবান যাওয়া যায়। ঢাকার বিভিন্ন জায়গা থেকে শ্যামলি, সৌদিয়া, এস. আলম, ইউনিক, সেন্ট মার্টিন পরিবহন ও হানিফ ইত্যাদি পরিবহনের বাস বান্দারবানের উদ্দেশ্যে ছেড়ে যায়। জনপ্রতি এসব বাসের ভাড়া যথাক্রমে নন এসি ৭০০-৮০০ টাকা ও এসি ১০০০-১৬০০ টাকা। রাত ৯-১০টায় রওনা দিলে সকাল ৭টার মধ্যে পৌঁছে যাবেন বান্দরবান। এছাড়া ট্রেন বা এয়ারে ঢাকা থেকে চট্টগ্রাম গিয়ে সেখান থেকে বান্দরবান যেতে পারবেন। চট্টগ্রামের বদ্দারহাট থেকে পূবালী ও পূর্বানী নামের দুটি বাস বান্দারবানের উদ্দেশ্যে যাত্রা করে। এ দুটি বাসে জনপ্রতি ২২০ টাকা ভাড়া লাগে। বান্দরবান শহর থেকে নীলাচল যাওয়ার জন্য সিএনজি, চাঁদের গাড়ি ও জীপ পাওয়া যায়। নীলাচলে অবস্থানের সময় অনুযায়ী অটো রিকশায় যাওয়া আসার জন্য ভাড়া লাগে ৫০০ টাকা থেকে ১০০০ টাকা আর, জীপ ৮০০-১২০০ টাকা আর চাঁদের গাড়ি ভাড়া করতে ১০০০ টাকা থেকে ২০০০ টাকা লাগে। যে পরিবহনেই যান একটু দরদাম করে নিবেন ঠিকমতো।',
        data5:'কোথায় থাকবেন',
        data6:'নীলাচলে থাকতে চাইলে নীলাচল স্কেপ রিসোর্টের তিনটি কটেজের একটি থেকে বেছে নিতে পারেন আপনার জন্য। প্রতিটি কটেজে দুইটি করে রুম আছে, প্রতি রুমের ভাড়া পড়বে ৩০০০ টাকা। নীলাচলে থাকতে চাইলে আগে থেকেই যোগাযোগ করে বুকিং দিয়ে রাখা ভালো। এছাড়া নীলাচল বান্দরবান শহরের কাছে বলেই আপনি বান্দরবান শহরের হোটেল ও রিসোর্ট গুলোতে থাকতে পারবেন। বান্দরবান থাকার জন্যে যে সকল হোটেল ও রিসোর্ট রয়েছে তার মধ্যে: হোটেল হিল ভিউ বান্দরবান শহরের বাস স্ট্যান্ড এর পাশেই। ভাড়া ১২০০ থেকে ২৫০০ টাকা। হোটেল হিলটন বান্দরবান শহরের বাস স্ট্যান্ড এর কাছেই। ভাড়া ১২০০ থেকে ৩০০০ টাকা। হোটেল প্লাজা বাস স্ট্যান্ড থেকে ৫মিনিট হাঁটা দূরত্বে। ভাড়া ১০০০ থেকে ৩০০০ টাকা। রিভার ভিউ শহরের সাঙ্গু নদীর তীর ঘেষে হোটেলটির অবস্থান। ভাড়া ১০০০ থেকে ২০০০ টাকা। পর্যটন মোটেল পাহাড় ও লেকের পাশেই অবস্থিত। শহর থেকে ৪ কি:মি: দুরে মেঘলায় অবস্থিত। ভাড়া ১২০০ থেকে ২৫০০ টাকা। * কোন সময়ে যাচ্ছেন তার উপর ভাড়া নির্ভর করবে। সিজন (ডিসেম্বর-ফেব্রুয়ারী) ও সরকারি ছুটির দিনে পর্যটকের সমাগম বেশি হয় বলে ভাড়া কম বেশি হতে পারে। আর আপনি সিজন ও ছুটির দিনে যান তাহলে ঝামেলা এড়াতে আগে থেকেই হোটেল রুম বুকিং করে রাখতে পারেন। এছাড়া অসংখ্য রিসোর্ট, হোটেল, মোটল এবং রেস্টহাউজ রয়েছে যেগুলোতে ৫০০ থেকে ৩ হাজার টাকায় সহজেই রাত্রিযাপন করতে পারবেন।',
    data7:'কোথায় খাবেন',
    data8:'নীলাচল স্কেপ রিসোর্টে রাত্রি যাপন করলে কতৃপক্ষ খাবারের ব্যবস্থা করে। ফরেস্ট হিল নামে শুধুমাত্র একটি রেস্টুরেন্ট রয়েছে, এছাড়া খাবারের তেমন ভাল ব্যবস্থা নেই। প্রয়োজনে বান্দরবান থেকে হালকা খাবার সাথে নিয়ে ভ্রমণ করতে পারেন কিংবা নীলাচল থেকে বান্দরবান শহরে ফিরে খাবারের ব্যবস্থা করতে পারেন। বান্দরবান শহরে খাওয়ার জন্যে রয়েছে বেশি কিছু রেস্তোরা, তার মধ্যে তাজিং ডং ক্যাফে, মেঘদূত ক্যাফে, ফুড প্লেস রেস্টুরেন্ট, রুপসী বাংলা রেস্টুরেন্ট, রী সং সং, কলাপাতা রেস্টুরেন্ট ইত্যাদি।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/7 nilacol.jpg"),
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





class PList_8 extends StatefulWidget {

  @override
  _PList_8State createState() => _PList_8State();
}

class _PList_8State extends State<PList_8> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'নীল দিগন্ত',
        data2:'নীল দিগন্ত পর্যটন কেন্দ্র বান্দরবান জেলা থেকে ৫০ কিলোমিটার দূরে থানচি উপজেলার জীবন নগর এলাকায় অবস্থিত। প্রায় সাড়ে ৩ একর জায়গা নিয়ে পাহাড়চূড়ায় গড়ে উঠা পর্যটন কেন্দ্র থেকে হাত বাড়িয়ে মেঘ ছোঁয়ার অপার্থিব আনন্দ উপভোগ করা যায়। সারি সারি সবুজ পাহাড়ের সাথে সাদা মেঘের খেলা নীল দিগন্তকে করেছে মোহনীয়। নীলগিরি থেকে নীল দিগন্ত পর্যটন কেন্দ্রটি মাত্র ৫ কিলোমিটার দূরত্বে অবস্থিত। দৃষ্টিনন্দন প্রবেশদ্বার দিয়ে প্রবেশ করলে একে একে ভিউ পয়েন্ট, গোলঘর ও ক্যান্টিন পাবেন। ভিউ পয়েন্ট থেকে কেউক্রাডং ও তাজিংডং পর্বত দেখা যায়। মেঘ আর নজরকাড়া সবুজের মিতালী ছাড়াও এখানকার স্থানীয় পাহাড়ি আদিবাসীদের জীবনযাত্রা সমানভাবে নজর কাড়বে।',
        data3:'নীল দিগন্ত যাবার উপায়',
        data4:'যেখানেই থাকুন নীল দিগন্ত যেতে হলে আপনাকে প্রথমে বান্দরবান আসতে হবে। ঢাকা থেকে এস. আলম, সৌদিয়া, সেন্টমার্টিন পরিবহন, ইউনিক, হানিফ, শ্যামলি, ডলফিন ইত্যাদি পরিবহনের বাস নিয়মিত ভাবে বান্দরবানের উদ্দেশ্যে যাত্রা করে। ঢাকা থেকে বান্দরবান যেতে ৮ থেকে ১০ ঘন্টা সময় লাগে। বান্দরবানগামী নন-এসি বাসের ভাড়া ৫৫০-৬৫০ টাকা এবং এসি বাসের মানভেদে জনপ্রতি ভাড়া ৯৫০ থেকে ১৫০০ টাকা। ঢাকা থেকে ট্রেনে করে যেতে চাইলে আগে চট্রগ্রাম গিয়ে সেখান থেকে বান্দরবান যেতে হবে। সোনার বাংলা, সুবর্ণ এক্সপ্রেস, তূর্ণা নিশিতা, মহানগর গোধূলি এইসব ট্রেন চট্রগ্রামের উদ্দেশ্যে যাতায়াত করে। শ্রেনীভেদে ট্রেনের টিকেটের মূল্য ৩৫০ থেকে ১২০০টাকা। কিংবা ঢাকা থেকে আকাশ পথে সরাসরি চট্রগ্রাম আসতে পারবেন। চট্টগ্রাম শহরের বদ্দারহাট থেকে পূবালী ও পূর্বানী পরিবহনের বাস জনপ্রতি ২২০ টাকা ভাড়ায় বান্দারবানের উদ্দেশ্যে যাত্রা করে। চট্রগ্রামের ধামপাড়া বাস স্ট্যান্ড থেকে ২০০ থেকে ৩০০ টাকা ভাড়ায় বান্দরবান যাওয়া যায়।',
        data5:'কোথায় থাকবেন',
        data6:'বেশীরভাগ পর্যটকরা নীল দিগন্ত, নীলগিরি ইত্যাদি জায়গায় দিনে গিয়ে দিনেই বান্দরবান ফিরে আসে। নীল দিগন্ত পর্যটন কেন্দ্রতে থাকার ব্যবস্তা নেই। বান্দরবান শহর ও তার আশেপাশেই বেশ কিছু হোটেল, রিসোর্ট ও কটেজ রয়েছে। বান্দরবান থাকার জন্যে যে সকল হোটেল ও রিসোর্ট রয়েছে তার মধ্যে: হোটেল হিলটন : বান্দরবান শহরের বাস স্ট্যান্ড সংলগ্ন এই হোটেলে ৮০০ থেকে ৩০০০ টাকায় রুম পাবেন। হোটেল হিল ভিউ : বান্দরবান শহরের বাস স্ট্যান্ড এর পাশেই। ভাড়া ৮০০ থেকে ২৫০০ টাকা। পর্যটন মোটেল : এই মোটেলটি বান্দরবান শহর থেকে ৪ কি:মি: দূরে মেঘলায় পাহাড় ও লেকের পাশে অবস্থিত। এখানে রুম ভাড়া পড়বে ১২০০ থেকে ২৫০০ টাকা। হোটেল প্লাজা : বাস স্ট্যান্ড থেকে ৫মিনিট হাঁটা দূরত্বে। ভাড়া ৬০০ থেকে ৩০০০ টাকা। রিভার ভিউ : শহরের সাঙ্গু নদীর তীর ঘেষে হোটেলটির অবস্থান। ভাড়া ৬০০ থেকে ২০০০ টাকা। সাইরু হিল রিসোর্ট : বান্দরবান থেকে ১৮ কিলোমিটার দূরে চিম্বুক পাহাড়ে অত্যাধুনিক রিসোর্ট। ভাড়া ৮,০০০ – ২৫,০০০ টাকা।',
    data7:'কোথায় খাবেন',
        data8:'নীল দিগন্ত একটি ক্যান্টিন আছে, খিদে পেলে পেট ভরে সেখান থেকে খেয়ে নিতে পারেন। অথবা বান্দরবান শহরে ফিরে এসে খেয়ে নিতে পারবেন। যাবার সময় কিছু শুকনো খাবার সাথে নিয়ে নিলে ভাল। বান্দরবান শহরে খাওয়ার জন্যে রয়েছে বেশি কিছু রেস্তোরা, তার মধ্যে তাজিং ডং ক্যাফে, মেঘদূত ক্যাফে, ফুড প্লেস রেস্টুরেন্ট, রুপসী বাংলা রেস্টুরেন্ট, রী সং সং, কলাপাতা রেস্টুরেন্ট ইত্যাদি।'
    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/8 nil digonto.jpg"),
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




class PList_9 extends StatefulWidget {

  @override
  _PList_9State createState() => _PList_9State();
}

class _PList_9State extends State<PList_9> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'চিম্বুক',
        data2:'বান্দরবান জেলা শহর থেকে প্রায় ২৩ কিলোমিটার দূরে চিম্বুক (Chimbuk Hill) পাহাড়ের অবস্থান। চম্বুক পাহাড় চূড়াতেই রয়েছে চিম্বুক পর্যটন কেন্দ্র। সমুদ্র পৃষ্ঠ থেকে ২৫০০ ফুট উঁচু চিম্বুক পাহাড়ে যাওয়ার আঁকাবাঁকা রাস্তার দুই পাশের চমৎকার প্রাকৃতিক দৃশ্য এবং সর্পিল সাঙ্গু নদীর সৌন্দর্য মনকে প্রশান্ত করে। পাহাড়ের সর্বোচ্চ উচ্চতায় দাঁড়িয়ে নৈস্বর্গিক প্রকৃতিক রূপের সুধা পান করতে করতে মেঘের ভেলা চেপে হারিয়ে যাওয়া যায় অপার্থিব জগতের গভীরে। আর বর্ষায় চিম্বুক পাহাড় থেকে সাজেকের মত দুরন্ত মেঘের উড়াউড়ি দেখা যায়, আর ভাগ্য ভাল হলে হাত বাড়িয়ে নেয়া যায় মেঘের স্পর্শ। এছাড়া চিম্বুক পাহাড়ে যাওয়ার পথে মিলনছড়ি ও শৈলপ্রপাত ঝর্ণা ঘুরে দেখতে পারবেন। আর নীলগিরি যেতে চাইলে নীলগিরি যাবার পথেই চিম্বুকের অবস্থান। চিম্বুক থেকে আরও ২০ কিলোমিটার সামনে গেলে নীলগিরি।',
        data3:'যাওয়ার উপায়',
        data4:'দেশের যে প্রান্তেই আপনার অবস্থান হোক না কেন চিম্বুক যেতে চাইলে বান্দরবান চলে আসুন। ঢাকা থেকে সরাসরি বাসে বান্দরবান (Bandarban) যাওয়া যায়। ঢাকার কলাবাগান, সায়েদাবাদ, গাবতলী এবং ফকিরাপুল থেকে শ্যামলি, হানিফ, ইউনিক, এস আলম, ডলফিন ইত্যাদি পরিবহণের বাস প্রতিদিন বান্দরবানের উদ্দেশ্যে ছেড়ে যায়। রাত ১০ টা থেকে সাড়ে ১১টার মধ্যে যেকোনো একটি বাসে চড়ে সহজেই বান্দরবান আসতে পারেন। এসব নন-এসি ও এসি বাসের জনপ্রতি ভাড়া ৭০০ থেকে ১৬০০ টাকার মধ্যে। রাত ৯-১০টায় রওনা দিলে সকাল ৭টার মধ্যে পৌঁছে যাবেন বান্দরবান। এছাড়া ট্রেন বা এয়ারে ঢাকা থেকে চট্টগ্রাম গিয়ে সেখান থেকে বান্দরবান যেতে পারবেন। চট্টগ্রামের বদ্দারহাট বাস স্ট্যান্ড থেকে পূবালী ও পূর্বানী নামের দুটি বাস বান্দারবানের উদ্দেশ্যে যাত্রা করে। এ দুটি বাসে জনপ্রতি ২২০ টাকা ভাড়া লাগে।',
        data5:'কোথায় থাকবেন',
        data6:'পাহাড়ী এলাকা ও দূর্গম হওয়ার কারণে চিম্বুকে কোন থাকার হোটেল নেই। তবে জেলা প্রশাসকের তত্ত্ববধানে একটি রেস্টহাউস পরিচালিত হয়ে আসছে। তবে চিম্বুক পর্যটন থেকে আরও দূরে নীলগিরি অথবা আগে বিলাসবহুল সাইরু রিসোর্ট আছে। কম খরচে থাকতে চিয়ালে বান্দরবান জেলা শহরে বিভিন্ন মানের বেশকিছু আবাসিক হোটেল ও রিসোর্ট আছে। এসব হোটেল ও রিসোর্টে সময়ানুপাতে ৬০০ থেকে ৩ হাজার টাকায় রাতে থাকতে পারবেন। বান্দরবানের রিসোর্ট ও হোটেল নিয়ে নিচের লিংক থেকে বিস্তারিত জেনে নিন।',
        data7:'কোথায় খাবেন',
        data8:'চিম্বুক পাহাড়ের পাশে সেনাবাহিনী কতৃক পরিচালিত একটি ক্যান্টিন চালু আছে। এই ক্যান্টিনে সকালের নাস্তা ও দুপুরের খাবার খাওয়ার সুযোগ রয়েছে। এছাড়া চিম্বুক পর্যটন কেন্দ্রের সামনে আদিবাসীদের খাবার হোটেল আছে। আগে থেকে বলে রাখলে দুপুরের খাবারের ব্যবস্থা করে দিবে।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/9 cimbuk.jpg"),
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




class PList_10 extends StatefulWidget {

  @override
  _PList_10State createState() => _PList_10State();
}

class _PList_10State extends State<PList_10> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'মিলনছড়ি',
        data2:'অ্যাডভেঞ্চার হোক কিংবা অবকাশ যাপন বান্দরবান জেলা পর্যটকদের কাছে আপন রূপের মহিমায় ব্যাপক জনপ্রিয় একটি ভ্রমণ স্থান। অপার প্রকৃতির হাতছানি ছাড়াও বান্দরবানে বসবাসকৃত ১১টি ক্ষুদ্র নৃ-গোষ্ঠির আচার-আচরন, সংষ্কৃতি এবং বিভিন্ন বৈচিত্র্যময় উৎসব পর্যটকদের পাহাড়ি কন্যা বান্দরবানে টেনে নিয়ে যায়। প্রকৃতির রঙে রাঙা বান্দরবান শহর থেকে মাত্র ৩ কিলোমিটার দূরে নয়নাভিরাম সবুজের কোলে অবস্থিত মিলনছড়ি (Milonchori) তেমনি একটি জনপ্রিয় ভ্রমণ স্থান। পাহাড়ি রাস্তা, দিগন্তজোড়া সবুজ আর সাঙ্গু নদীর মোহনীয় সৌন্দর্য যেন কল্পনায় আঁকা এক নান্দ্যনিক তৈলচিত্র।',
        data3:'কিভাবে যাবেন',
        data4:'যদি বান্দরবানের শৈলপ্রপাত, নীলগিরি অথবা চিম্বুক পাহাড় আপনার ভ্রমণ তালিকায় থাকে তবে মিলনছড়ি দেখার জন্য আলাদা ভাবে ভাবনার প্রয়োজন নেই। শৈলপ্রপাত, নীলগিরি ও চিম্বুক পাহাড় যাওয়ার পথে সাময়িক বিরতি দিয়ে উপভোগ করতে পারবেন মিলনছড়ির সৌন্দর্য। ঢাকা থেকে সরাসরি বাসে বান্দরবান যাওয়া যায়। ঢাকার বিভিন্ন জায়গা থেকে শ্যামলি, সৌদিয়া, এস. আলম, ইউনিক, সেন্টমার্টিন পরিবহন ও হানিফ ইত্যাদি পরিবহনের বাস বান্দারবানের উদ্দেশ্যে ছেড়ে যায়। জনপ্রতি এসব বাসের ভাড়া যথাক্রমে নন এসি ৫৫০ টাকা ও এসি ৯৫০ টাকা। রাত ৯-১০টায় রওনা দিলে সকাল ৭টার মধ্যে পৌঁছে যাবেন বান্দরবান। এছাড়া ট্রেন বা এয়ারে ঢাকা থেকে চট্টগ্রাম গিয়ে সেখান থেকে বান্দরবান যেতে পারবেন। চট্টগ্রামের বদ্দারহাট থেকে পূবালী ও পূর্বানী নামের দুটি বাস বান্দারবানের উদ্দেশ্যে যাত্রা করে। এ দুটি বাসে জনপ্রতি ২২০ টাকা ভাড়া লাগে। বান্দরবান জেলা শহরের রুমা বাস স্ট্যান্ড হতে স্পেশাল বাস সার্ভিস কিংবা চাঁদের গাড়ি ভাড়া করে শৈলপ্রপাত, নীলগিরি কিংবা চিম্বুক পাহাড় যাওয়ার পথে মিলনছড়ি দেখতে পারবেন।',
        data5:'কোথায় থাকবেন',
        data6:'মিলনছড়িতে হিল সাইড রিসোর্টে (01556-539022, 01730-045083) রাতে থাকতে পারবেন। এছাড়া বান্দরবান জেলা শহরে বিভিন্ন মানের বেশকিছু আবাসিক হোটেল ও রিসোর্ট রয়েছে। এসব হোটেল ও রিসোর্টে সময়ানুপাতে ৬০০ থেকে ৩ হাজার টাকায় রাতে থাকতে পারবেন। বান্দরবানের সকল হোটেল ও রিসোর্টের তথ্য জানতে এখানে ক্লিক করুন।',

        data7:'খাওয়া দাওয়া',
        data8:'থানচি, আলীকদম ও পানবাজারে বেশ কিছু দেশীয় খাবারের হোটেল আছে। খুব আহামরি না হলেও মোটামুটি মানের খাবার পাবেন। ভাত, মুরগি, মাংস ও মাছের পদ পাবেন।'



    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/10 milonchori.jpg"),
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




class PList_11 extends StatefulWidget {

  @override
  _PList_11State createState() => _PList_11State();
}

class _PList_11State extends State<PList_11> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'ডিম পাহাড়',
        data2:'বান্দরবানের আলীকদম এবং থানচি থানার মাঝখানে ডিম পাহাড়ের অবস্থান। বাংলাদেশের সবচেয়ে উচু সড়ক হিসাবে পরিচিত থানচি-আলীকদম সড়ক। এই সড়ক পথেই ডিম পাহাড় (Dim Pahar) এর অবস্থান। অ্যাডভেঞ্চার প্রিয় ভ্রমণকারীদের কাছে এই রাস্তা এবং ডিম পাহাড় বেশ জনপ্রিয়তা অর্জন করেছে। অপূর্ব প্রাকৃতিক সৌন্দর্য এবং বৈচিত্র্যময় আদিবাসী জীবনধারায় পরিপূর্ণ ডিম পাহাড় দিয়েই আলীকদম ও থানচি থানার সীমানা নির্ধারন করা হয়েছে। বাংলাদেশ সেনাবাহিনীর তত্ত্বাবধানে ৩৩ কিলোমিটার দীর্ঘ আলীকদম-থানচি সড়ক নির্মাণের ফলে বর্তমানে ডিম পাহাড়ে গমন সহজতর হয়েছে। আলীকদম হতে ক্রমশ উঁচু হতে হতে প্রায় ২৫০০ ফুট উচ্চতা পর্যন্ত বিস্তৃত এই পাহাড়ী পথ দিয়ে চলতে চলতে প্রকৃতির যে রূপ চোখে পড়ে তা ভাষায় ব্যাখ্যা করা কঠিন। ইতিহাসের সাক্ষী হোক কিংবা সৌন্দর্য দর্শন ভ্রমণকারী এখান থেকে ফিরে যান অন্যরকম আত্মতৃপ্তি নিয়ে।',
        data3:'কিভাবে যাবেন',
        data4:'রাজধানী ঢাকা হতে সরাসরি আলীকদমগামী বাস সার্ভিস রয়েছে। এছাড়া ঢাকা হতে রাতের কোন বাসে কক্সবাজার জেলার চকরিয়া নেমে সেখান থেকে লোকাল চাঁন্দের গাড়ি বা রিসার্ভ চান্দের গাড়ি অথবা লোকাল বাস দিয়ে চলে যান আলীকদম। আলীকদম থেকে চান্দের গাড়ী রিসার্ভ নিয়ে অথবা মোটরসাইকেল ভাড়া করে আলীকদম – থানচি রাস্তা ধরে চলে যান ডিম পাহাড়ে। ডিম পাহাড় ঘুরে থানচি বাজারে খাওয়া দাওয়া সেরে বান্দরবান হয়ে ফিরতে পারেন অথবা আলীকমদেও ফিরে আসতে পারেন। ঢাকা হতে বান্দরবান হয়েও ডিম পাহাড়ে যেতে পারবেন। বান্দরবান থেকে লোকাল বাস কিংবা চান্দের গাড়িতে থানচি বাজার এসে ডিম পাহাড়ে যাওয়ার চান্দের গাড়ি ও মোটরবাইক পাবেন।',
        data5:'কোথায় থাকবেন',
        data6:'রাতে থাকতে চাইলে থানচিতে বিজিবি রিসোর্টে যোগাযোগ করতে পারেন। থানচি বাজারে আরও কিছু সাধারণ মানের থাকার ব্যবস্থা রয়েছে। এছাড়া আলীকদমে নতুন চালু যাওয়া উপজেলা রোডের দ্যা দামতুয়া ইন (০১৭৪৮-৯১২১২৭) অথবা জেলা পরিষদের ডাক বাংলোতে থাকতে পারবেন। এছাড়া পান বাজারে একটি বোর্ডিং আছে যদিও মান তেমন ভাল না।',
        data7:'খাওয়া দাওয়া',
        data8:'থানচি, আলীকদম ও পানবাজারে বেশ কিছু দেশীয় খাবারের হোটেল আছে। খুব আহামরি না হলেও মোটামুটি মানের খাবার পাবেন। ভাত, মুরগি, মাংস ও মাছের পদ পাবেন।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,
      body:  SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/pahaar/11 dim pahar.jpg"),
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







