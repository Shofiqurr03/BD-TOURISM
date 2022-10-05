
import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

int index = -1;



class LList_1 extends StatefulWidget {

  @override
  _LList_1State createState() => _LList_1State();
}

class _LList_1State extends State<LList_1> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1: ' মহামায়া লেক',
        data2: 'মহামায়া লেক (Mohamaya Lake) চট্রগ্রামের মিরসরাইয়ে অবস্থিত বাংলাদেশের অন্যতম কৃত্রিম হৃদ। মিরসরাইয়ের দুর্গাপুর ইউনিয়নের ঠাকুরদিঘী বাজার থেকে মাত্র দুই কিলোমিটার দূরে পাহাড়ের কোলে ১১ বর্গ কিলোমিটার জায়গাজুড়ে মহামায়া লেক গড়ে উঠেছে। লেকের টলটলে পানি আর পাহাড়ের মিতালী ছাড়াও এখানে পাহাড়ি গুহা, রাবার ড্যাম ও অনিন্দ্য সুন্দর ঝর্ণা রয়েছে। বোটে চড়ে লেকে ঘুরার পাশাপাশি চাইলে পাহাড়ের গা বেয়ে নেমে আসা ঝর্ণার শীতল পানিতে ভিজে শরীর ও মনকে অপার্থিব প্রশান্তি দিতে পারেন। মহামায়া লেকে আছে কায়াকিং করার সুবিধা এবং চাইলে তাবুতে রাতে ক্যাম্পিং করে থাকতেও পারবেন। বাংলাদেশ পানি উন্নয়ন বোর্ডের নিয়ন্ত্রণে থাকা মহামায়া লেকটির পানির কিছু অংশ পার্শ্ববর্তী এলাকায় সেঁচের কাজে ব্যবহৃত হয়।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকার যে কোন জায়গা থেকে চট্রগ্রাম গামী যে কোন বাসে করেই যেতে পারবেন মিরসরাই এর ঠাকুরদিঘী বাজার। এস আলম, শ্যামলি, সৌদিয়া, ইউনিক, হানিফ, ঈগল, এনা প্রভৃতি পরিবহনের নন এসি বাস ভাড়া ৪২০- ৪৮০ টাকা। এসি বাসের মধ্যে গ্রিনলাইন, সৌদিয়া, সোহাগ, টি আর এইসব বাস ভাড়া ৮০০-১১০০ টাকা। আপনার পছন্দ মত বাসে এসে মিরসরাই এর আগে ঠাকুরদিঘী বাজারে নেমে যেতে হবে। এছাড়া সায়েদাবাদ বাস স্ট্যান্ড থেকে স্টার লাইন পরিবহনে ফেনী (ভাড়া ২৮০ টাকা) এসে লোকাল বাসে ৩০-৪০ টাকা ভাড়ায় মিরসরাই এর আগে ঠাকুরদিঘী বাজার যেতে হবে। ঠাকুরদিঘী থেকে জনপ্রতি ১৫ টাকা সিএনজি ভাড়ায় চলে যেতে পারবেন মহামায়া ইকোপার্ক এর মেইন গেইটে। অথবা সিএনজি রিজার্ভ করে (ভাড়া ৮০ -১২০ টাকা) চলে আসবেন মহামায়া ইকো পার্ক। এই ইকো পার্কের ভিতরেই মাহামায়া লেকের অবস্থান।',
        data5: 'কোথায় থাকবেন',
        data6: 'মিরসরাই এ থাকার মত তেমন ভালো কোন আবাসিক হোটেল নেই। থাকতে চাইলে মিরসরাই এর কাছে সীতাকুণ্ডে কিছু সাধারণ মানের হোটেল আছে সেখানে থাকতে পারবেন। হোটেল সৌদিয়ায় ৬০০ থেকে ১৬০০ টাকায় বিভিন্ন মানের রুম পাবেন এবং সাইমুন ও অন্য আবাসিক হোটেলে ৩০০ থেকে ৭০০ টাকায় থাকতে পারবেন।',
        data7: 'কোথায় খাবেন',
        data8: 'পার্কে খাওয়া দাওয়ার ব্যবস্থা নেই। নিজ থেকে খাবার নিয়ে যেতে হবে। ঠাকুরদিঘী বাজারে ছোট হোটেল আছে দেশী খাবার খেতে পারবেন। মিরসরাই ও সীতাকুণ্ড বাজারে গেলে মোটামুটি মানের আরো কিছু খাওয়ার হোটেল পাবেন সেখান থেকে খেয়ে নিতে পারবেন। সীতাকুন্ডের পৌরসভার সামনে আল আমিন হোটেলের বেশ সুনাম রয়েছে।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/1 mohamaya.jpg"),
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



class LList_2 extends StatefulWidget {

  @override
  _LList_2State createState() => _LList_2State();
}

class _LList_2State extends State<LList_2> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(



        data1: 'ভাটিয়ারী লেক',
        data2: 'চট্রগ্রাম সিটি গেট থেকে মাত্র ২০ মিনিটের দূরত্বে ভাটিয়ারী লেক (Bhatiary Lake) অবস্থিত। পাহাড়ের পাদদেশে জমে থাকা পানি থেকে সৃষ্ট রূপ বৈচিত্রে ভরপুর ভাটিয়ারী লেকের স্বচ্ছ পানি, সেনাবাহিনী নিয়ন্ত্রিত গলফ কোর্স এবং ভাটিয়ারী সান সেট পয়েন্টে সূর্যাস্তের দৃশ্য মনকে ভাল লাগার মূর্ছনায় ভরিয়ে তোলে। ভাটিয়ারী লেকটি দেখতে অনেকটা সাপের মতো এঁকে বেঁকে বয়ে চলেছে। সূর্য্যের সোনালী আলো লেকের জলে প্রতিফলিত হয়ে যেন সোনার মত চকচক করে।',
        data3: 'ভাটিয়ারী কিভাবে যাবেন',
        data4: 'ঢাকা থেকে সড়ক, রেল এবং আকাশপথে চট্টগ্রাম যাওয়া যায়। ঢাকার সায়দাবাদ বাস টার্মিনাল থেকে সৌদিয়া, গ্রিন লাইন, ইউনিক, টি আর ট্রাভেলস, হানিফ, শ্যামলী, সোহাগ, এস আলম ইত্যাদি বিভিন্ন পরিবহনের বাস চট্টগ্রামের উদ্দেশ্যে ছেড়ে যায়। শ্রেণী ভেদে বাসগুলোর প্রতি সীটের ভাড়া ৫০০ টাকা থেকে ১২০০ টাকা।',
        data5: 'কোথায় থাকবেন',
        data6: 'রাত্রি যাপনের জন্য চট্টগ্রাম শহরে বিভিন্ন মানের আবাসিক হোটেল রয়েছে। এদের মধ্যে হোটেল প‌্যারামাউন্ট রুম ভাড়া ৮০০ টাকা থেকে ১৮০০ টাকা পর্যন্ত। হোটেল অবকাশ রুম ভাড়া ১২০০ থেকে ২০০০ টাকা। হোটেল লর্ডস ইন, সি এন্ড বি জিইসি মোড়, প্রতি রুম ভাড়া ২০০০ থেকে ৭০০০ টাকা পর্যন্ত। হোটেল এশিয়ান এসআর রুম ভাড়া ১৫০০ থেকে ৪০০০ টাকা। আগ্রাবাদ অবস্থিত হোটেল ল্যান্ডমার্ক এ রাত্রি যাপন করতে গেলে রুম প্রতি নূন্যতম ২৫০০ টাকা খরচ করতে হবে। আর হোটেল রেডিসন ব্লু-তে থাকতে গেলে এক রাতের জন্য গুনতে হবে ১৮০০০ টাকা।',
        data7: 'কোথায় খাবেন',
        data8: 'ভাটিয়ারিতেই খাওয়া দাওয়া করার জন্যে ক্যাফে আছে। চাইলে ভাটিয়ারির সানসেট পয়েন্টে বসে খেতে খেতে উপভোগ করতে পারবেন চারপাশের সৌন্দর্য। এছাড়া চট্টগ্রামের ঐতিহ্যবাহী খাবার খেতে চলে যেতে পারেন শহরের হোটেল জামান-এ। আর মেজবানি খাবারের জন্য চকবাজারে অবস্থিত “মেজবান হাইলে আইয়্যুন” রেস্তোরার বেশ নামডাক রয়েছে। এছাড়াও চট্টগ্রাম শহরে ছড়িয়ে থাকা রেস্টুরেন্টের মধ্যে বারকোড ক্যাফে, ক্যাফে ৮৮, সেভেন ডেইজ, ধাবা, হান্ডি, গলফ গার্ডেন রেস্টুরেন্ট, কোষ্টাল মারমেইড রেস্টুরেন্ট এন্ড লাউঞ্জ ইত্যাদি উল্লেখযোগ্য।'







    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/2 bhatiary lake.jpg"),
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



class LList_3 extends StatefulWidget {

  @override
  _LList_3State createState() => _LList_3State();
}

class _LList_3State extends State<LList_3> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(



        data1: 'কাপ্তাই লেক',
        data2: 'পার্বত্য চট্টগ্রামের বুকে প্রকৃতির অপরূপ নৈসর্গিক নিয়ে মাথা উঁচু করে দাঁড়িয়ে আছে রাঙ্গামাটি জেলার কাপ্তাই উপজেলা। আর কাপ্তাই উপজেলা অনন্য পাহাড়, লেকের অথৈ জলরাশি এবং চোখ জুড়ানো সবুজের সমারোহে। ১১,০০০ বর্গ কিলোমিটার পর্যন্ত বিস্তৃত এই কৃত্রিম হ্রদ দক্ষিণ এশিয়ার মধ্যে আয়তনে সর্ববৃহৎ। এখানে চোখে পড়ে ছোট বড় পাহাড়, আঁকাবাঁকা পাহাড়ি রাস্তা, ঝর্ণা আর জলের সাথে সবুজের মিতালী। একদিকে যেমন পাহাড়ে রয়েছে বিভিন্ন উদ্ভিদ ও প্রাণী সম্ভার তেমনি লেকের অথৈ জলে রয়েছে বহু প্রজাতির মাছ ও অফুরন্ত জীববৈচিত্র। লেকের চারপাশের পরিবেশ, ছোট ছোট দ্বীপ, নানাবিধ পাখি এবং জল কেন্দ্রিক মানুষের জীবনযাত্রা আপনাকে মুগ্ধ করে রাখবে প্রতি মূহুর্ত। কৃত্রিম হলেও প্রকৃতি তার সমস্ত রুপে উজাড় করে সাজিয়েছে কাপ্তাই হ্রদকে। সারা বছরই কাপ্তাই লেক (Kaptai Lake) ভ্রমণের জন্য যাওয়া যায় তবে বর্ষায় লেকের পাশের ঝর্ণাগুলোর পরিপূর্ণ রূপের দেখা মিলে।',
        data3: 'কাপ্তাই লেক কিভাবে যাবেন',
        data4: 'ঢাকার সায়েদাবাদ কিংবা কমলাপুর থেকে বিভিন্ন মানের বাসে করে সরাসরি কাপ্তাই যাওয়া যায় এক্ষেত্রে প্রায় ৭ থেকে ৮ ঘন্টা সময় লাগে। এছাড়া আপনি চাইলে চট্টগ্রাম থেকেও কাপ্তাই যেতে পারেন। বদ্দারহাট বাসস্ট্যান্ড থেকে প্রতি ৩০ মিনিট অন্তর অন্তর কাপ্তায়ের উদ্দেশ্যে বাস ছেড়ে যায়, ভাড়া ৮০-১২০ টাকা। সময় লাগবে ২ ঘন্টার মত। ঢাকা থেকে ট্রেনে চট্রগ্রাম এসে বদ্দারহাট বাস টার্মিনাল থেকে কাপ্তাই যেতে পারবেন।',
        data5: 'কি খাবেন',
        data6: 'কাপ্তাই লেকে মাঝখানে ছোট ছোট দ্বীপে কিছু রেস্তোরাঁ গড়ে উঠেছে চাইলে সেখান থেকে দুপুর কিংবা প্রয়োজনীয় খাবার সংগ্রহ করে নিতে পারেন। কাপ্তাই এর কাছে আছে বেরাইন্যে লেক শোর ক্যাফে, জুম রেস্তোরা, প্যারাডাইস ক্যাফে ইত্যাদি। কিংবা নিজের পছন্দের খাবার খেতে ঘুরে আসতে পারেন নৌবাহিনীর ঘাঁটি সংলগ্ন ভাসমান রেস্টুরেন্ট থেকে। প্রতিদিন সকাল ১০টা থেকে সন্ধ্যা পর্যন্ত এই রেস্টুরেন্ট খোলা থাকে।',
        data7: 'কোথায় থাকবেন',
        data8: 'কাপ্তাইয়ে রাত্রি যাপনের জন্য এখনো তেমন ভালো মানের বাণিজ্যিক হোটেল-মোটেল গড়ে উঠেনি। তাই রাত কাটানোর ইচ্ছা থাকলে আগে থেকেই কাপ্তাইয়ের সরকারি রেস্ট হাউস কতৃপক্ষের সাথে যোগাযোগ করে আসা উত্তম। এছাড়াও সংশ্লিষ্ট সরকারি অফিসের অনুমতি সাপেক্ষ্যে সেনাবাহিনী, পিডিবি, পানি উন্নয়ন বোর্ড এবং বন বিভাগের রেস্ট হাউসগুলোতে কম খরচে রাত্রি যাপন করা যায়। লেক প্যারাডাইস পিকনিক স্পটেও রাত্রী যাপনের সুযোগ রয়েছে তবে এজন্য বাড়তি অর্থ গুনতে হতে পারে। রাঙ্গামাটি কাপ্তাই এর কাছে হওয়ায় কিংবা আপনার ট্যুর প্ল্যান সেভাবেই হলে রাঙ্গামাটি থাকতে পারেন।'







    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/3 kaptai lake.jpg"),
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



class LList_4 extends StatefulWidget {

  @override
  _LList_4State createState() => _LList_4State();
}

class _LList_4State extends State<LList_4> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(



        data1: 'মায়াবিনী লেক',
        data2: 'পার্বত্য জেলা খাগড়াছড়ির পানছড়ি উপজেলার ভাইবোনছড়ার কংচাইরি পাড়ায় মায়াবিনী লেক (Mayabini Lake) অবস্থিত। খাগড়াছড়ি জেলা শহর থেকে মাত্র ৩০ মিনিট দূরত্বে হওয়ায় নিরাপত্তা নিয়ে বাড়তি দুশ্চিন্তা করার সুযোগ নেই। ৪০ একর উঁচু-নিচু পাহাড়ি জায়গায় ১৫ একর নিসর্গময় লেক নিয়ে গড়ে তোলা হয়েছে এই মায়াবিনী লেক পর্যটন কেন্দ্র। পাহাড়ের নৈস্বর্গিক সৌন্দর্য্য, বিশাল আকাশ আর লেকের স্বচ্ছ শান্ত জল সহজেই মনকে নির্মল আনন্দে মাতিয়ে তোলে। মায়াবিনী লেকের মাঝখানে ছোট্ট সুন্দর দ্বীপে পর্যটকদের জন্য গড়ে তোলা হয়েছে একটি বিশ্রামাগার। আর লেকে ঘুরে বেড়ানোর জন্য রয়েছে নৌকার ব্যবস্থা।',
        data3: 'কীভাবে যাবেন',
        data4: 'ঢাকা হতে মায়াবিনী লেকে যেতে হলে প্রথমে খাগড়াছড়ি আসতে হবে। শান্তি, হানিফ, এস আলম, শ্যামলী, ইকোনো এবং সৌদিয়া পরিবহনের এসি/নন-এসি বাসে চড়ে সরাসরি খাগড়াছড়ি যেতে পারবেন। বাস ভেদে জনপ্রতি ভাড়া লাগবে ৫০০ থেকে ১০০০ টাকা। খাগড়াছড়ির চেংগী স্কোয়ার থেকে বাস, পিকআপ, জীপ (চাঁদের গাড়ী), মোটর বাইক, সিএনজি কিংবা মাহিন্দ্র ভাড়া করে পানছড়ি-খাগড়াছড়ি সড়কে অবস্থিত ভাইবোনছড়া বাজারে আসতে পারবেন। ভাইবোনছড়া বাজার থেকে জনপ্রতি ১০ টাকা অটোরিক্সা ভাড়ায় মায়াবিনী লেকে যাওয়া যায়। খাগড়াছড়ি থেকে ভাইবোনছড়া বাজারের দূরত্ব প্রায় ১৫ কিলোমিটার। খাগড়াছড়ি থেকে ভাইবোনছড়া বাজারে আসতে সিএনজি ভাড়া জনপ্রতি ৩০ থেকে ৪০ টাকা লাগে। (বিঃ দ্রঃ সময়ানুপাতে ভাড়া পরিমান কম-বেশি হতে পারে।)',
        data5: 'কোথায় থাকবেন',
        data6: 'খাগড়াছড়ি শহরে রাত্রি যাপনের জন্য বিভিন্ন মানের আবাসিক হোটেল রয়েছে। রুম দেখে দরদাম করে পছন্দমত হোটেলে থাকতে পারবেন। হোটেলে ভেদে এক রাত অবস্থানের জন্য ভাড়ার সীমা ৪০০ টাকা ৩৫০০ টাকা। খাগড়াছড়ি শহরে ভালো মানের আবাসিক হোটেলের মধ্যে রয়েছে –',
        data7: 'কোথায় খাবেন',
        data8: 'খাগড়াছড়ি জেলা শহরের শাপলা চত্বর ও বাস স্ট্যান্ড এলাকায় বেশ কিছু রেস্টুরেন্ট রয়েছে। এছাড়া পানথাই পাড়ায় অবস্থিত ‘সিস্টেম রেস্তোরা’ (01556-773493, 01732-906322) কফি, হাসের কালাভূনা, বাশকুড়ুল এবং ঐতিহ্যবাহী পাহাড়ি খাবারের স্বাদ নিতে পারেন।'







    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/4 mayabini.jpg"),
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




class LList_5 extends StatefulWidget {

  @override
  _LList_5State createState() => _LList_5State();
}

class _LList_5State extends State<LList_5> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

      data1: 'তিস্তা ব্যারেজ',
      data2: 'তিস্তা ব্যারেজ (Teesta Barrage) বা তিস্তা সেচ প্রকল্প বাংলাদেশের সবচেয়ে বৃহত্তম সেচ প্রকল্প। তিস্তা নদীর উপর নির্মিত তিস্তা ব্যারেজের একপাশে আছে লালমনিরহাট জেলার হাতীবান্ধা উপজেলাধীন গড্ডিমারী ইউনিয়নের দোয়ানী গ্রাম এবং অন্য পাশে আছে নীলফামারী জেলার ডিমলা উপজেলাধীন খালিসা চাপানী ইউনিয়নের ডালিয়া নামক স্থান। রংপুর, দিনাজপুর, নিলফামারী ও বগুড়া জেলার অনাবাদী জমিতে সেচ সুবিধা প্রদানের জন্য ১৯৩৭ খ্রিষ্টাব্দে তৎকালীন সরকার তিস্তা ব্যারেজ তৈরীর পরিকল্পনা গ্রহণ করে। পরবর্তীতে ১৯৭৯ সালে ৬১৫ মিটার দৈর্ঘ্যের ৪৪ রেডিয়াল গেট বিশিষ্ট ব্যারেজের নির্মাণ কাজ শুরু হয়, যা ১৯৯০ সালে শেষ হয়।',
      data3: 'কিভাবে যাবেন',                                                data4: 'রাজধানী ঢাকা কিংবা অন্য শহর থেকে তিস্তা ব্যারেজ যেতে চাইলে আপনার সুবিধা মত নীলফামারী অথবা লালমনিরহাট জেলায় চলে যান। নীলফামারী থেকে তিস্তা পাড়ে যাওয়ার জন্য রিক্সা, স্কুটার এবং মোটরসাইকেল ভাড়ায় পাবেন। আর ঢাকা থেকে লালমনিরহাট যাওয়ার জন্য বাস অথবা ট্রেনকে বেছে নিতে পারেন। কমলাপুর রেলওয়ে ষ্টেশন থেকে শুক্রবার ছাড়া বাকি ৬ দিন রাত ০৯ঃ৪৫ মিনিটে লালমনি এক্সপ্রেস ট্রেন যাত্রা করে। আসনভেদে ট্রেনের টিকেটের মূল্য পরবে ৫০৫ থেকে ১৭৮১ টাকা। এছাড়া গাবতলী এবং কল্যাণপুর থেকে নাবিল পরিবহন, এস আর ট্রাভেলস, মানিক এক্সপ্রেস, বরকত ট্রাভেলস, হানিফ, শাহ্‌ আলি পরিবহনের বাস লালমনিরহাটের উদ্দেশ্যে ছেড়ে যায়। এসি/নন-এসি বাসের জনপ্রতি ভাড়া লাগবে ৭৫০-১২৫০ টাকা। লালমনিরহাট সদর হতে সড়কপথে তিস্তা ব্যারেজ যাওয়ার জন্য বিভিন্ন ধরনের যানবাহন রয়েছে।',
      data5: 'কোথায় থাকবেন',
      data6: 'তিস্তা ব্যারেজের পাশে রয়েছে পানি উন্নয়ন বোর্ডের তত্ত্বাবধানে পরিচালিত অবসর রেস্ট হাউজ। যদিও এই রেস্ট হাউজ সকলের জন্য উন্মুক্ত নয় তবে কতৃপক্ষের অনুমতি নিয়ে এখানে রাত্রিযাপন করা যায়। এছাড়া রাত্রিযাপনের সুবিধার্থে আপনাকে নীলফামারি অথবা লালমনিরহাট জেলায় চলে যেতে হবে।',                                              data7: 'কোথায় খাবেন',
      data8: 'তিস্তা ব্যারেজের কাছে বেশকিছু খাবার হোটেল/রেস্টুরেন্ট রয়েছে। এদের মধ্যে রাহমানিয়া হোটেল এন্ড ফুড কর্ণার, মুহাম্মাদিয়া হোটেল এন্ড রেষ্টুরেন্ট, বিসমিল্লাহ হোটেল এন্ড রেঁস্তোরা, টাঙ্গাইল মিস্টি ঘর, মাতৃ হোটেল এন্ড রেস্টুরেন্ট উল্লেখযোগ্য।',






    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/5 tista barrage.jpg"),
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





class LList_6 extends StatefulWidget {

  @override
  _LList_6State createState() => _LList_6State();
}

class _LList_6State extends State<LList_6> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1: 'নীলাদ্রি লেক',
        data2: 'নীলাদ্রি লেক (Niladri Lake) খ্যাত পর্যটন স্থানটি চুনাপাথরের পরিত্যাক্ত খনির লাইম স্টোন লেক। সুনামগঞ্জ জেলার তাহিরপুর উপজেলার উত্তর শ্রীপুর ইউনিয়নের টেকেরঘাট (Tekerghat) নামক গ্রামে নীলাদ্রি লেকের অবস্থান। এই লেকের প্রকৃত নাম শহীদ সিরাজ লেক। কিন্তু ভ্রমণ কমিউনিটিতে এই লেক নীলাদ্রি নামেই অধিক পরিচিত। অবশ্য স্থানীয় লোকজন একে টেকেরঘাট পাথর কোয়ারি নামে চেনে। লেকের চমৎকার নীল পানি, ছোট বড় টিলা আর পাহাড়ের সমন্বয় নীলাদ্রি লেককে করেছে অপার্থিব সৌন্দর্য্যের অধিকারী। স্বতন্ত্র বৈশিষ্টের জন্য নিলাদ্রি লেক দেখে অনেক পর্যটক একে বাংলার কাশ্মীর হিসাবে অভিহিত করেন',
        data3: 'নীলাদ্রি লেক কিভাবে যাবেন',
        data4: 'প্রতিদিন ঢাকার সায়েদাবাদ বাসস্ট্যান্ড থেকে মামুন ও শ্যামলী পরিবহণের বাস সরাসরি সুনামগঞ্জের উদ্দেশ্যে ছেড়ে যায় এবং মহাখালী থেকে ছেড়ে যায় এনা পরিবহণের বাস। এসব নন-এসি বাসে জনপ্রতি টিকেট কাটতে ৬৫০-৭৫০ টাকা লাগে আর সুনামগঞ্জ পৌঁছাতে প্রায় ছয় ঘন্টা সময় লাগে। সুনামগঞ্জ শহরের নতুন ব্রীজ এলাকায় টেকেরঘাট যাবার জন্য মোটর সাইকেল ভাড়া পাবেন। রিজার্ভ নিলে মোটরসাইকেল ভাড়া পড়বে ৩০০ থেকে.৪০০ টাকা পর্যন্ত। যাত্রা পথে যাদুকাটা নদী পার হওয়ার সময় জনপ্রতি ৫ টাকা এবং মোটর সাইকেলের জন্য ১০ টাকা ভাড়া দিতে হবে। সুনামগঞ্জ (Sunamganj) থেকে মোটর সাইকেলে লাউড়ের গড় পর্যন্ত আসতে ভাড়া লাগবে ২০০ টাকা। সেখান থেকে যাদুকাটা নদী পাড় হয়ে বারিক্কা টিলা থেকে ১২০ টাকা ভাড়ায় টেকেরঘাট যাবার মোটর সাইকেল পাবেন। উল্লেখ্য, মোটরসাইকেল রিজার্ভ কিংবা ভাড়ার ক্ষেত্রে দুইজন ধরা হয়েছে।',
        data5: 'কোথায় থাকবেন',
        data6: 'বড়ছড়া বাজারে বেশ কয়েকটি গেস্ট হাউজ। এই সব গেস্ট হাউজে ২০০ থেকে ৪০০ টাকার মধ্যে রুম পাবেন। তাহিরপুর বাজারেও থাকার ব্যবস্থা রয়েছে আর যদি খালি থাকে তবে নীলাদ্রী লেকের কাছে পুরাতন চুনা পাথরের কারখানার গেস্ট হাউজে রাত কাটাতে পারবেন।',
        data7: 'কোথায় খাবেন',
        data8: 'বারিক্কা টিলাতে সাধারন মানের দেশীয় খাবারের হোটেল রয়েছে। এছাড়া বড়ছড়া বাজার কিংবা যাদুকাটার পাশের টেকেরঘাটের ছোট বাজারে খাবার জন্য মোটামুটি মানের রেস্টুরেন্ট পাবেন। তবে ভাল মানের খাবার হোটেলের জন্য আপনাকে সুনামগঞ্জ শহরে আসতে হবে।'






    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/6 niladri lake.jpg"),
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



class LList_7 extends StatefulWidget {

  @override
  _LList_7State createState() => _LList_7State();
}

class _LList_7State extends State<LList_7> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


      data1: 'টাঙ্গুয়ার হাওর',
      data2: 'টাঙ্গুয়ার হাওর (Tanguar Haor) সুনামগঞ্জ জেলার প্রায় ১০০ বর্গকিলোমিটার পর্যন্ত বিস্তৃত দেশের দ্বিতীয় বৃহত্তম মিঠাপানির জলাভূমি। অথৈ পানি, জলাবন, নীল আকাশ, পাহাড় ও চোখ জুড়ানো সবুজ এই হাওরকে অপরুপ সাজে সাজিয়েছে। টাঙ্গুয়ার হাওরের মোট আয়তন ৬৯১২ একর। তবে বর্ষাকালে এই হাওরের আয়তন বেড়ে প্রায় ২০,০০০ একর পর্যন্ত হয়ে থাকে। টাঙ্গুয়ার হাওরে প্রায় ১৪০ প্রজাতির মাছ, ১২ প্রজাতির ব্যাঙ এবং ১৫০ প্রজাতির বেশি সরীসৃপের সমন্বয়ে জীববৈচিত্র্য গড়ে উঠেছে। শীতকালে এই হাওরে প্রায় ২৫০ প্রজাতির অতিথি পাখির বিচরণ ঘটে।',
      data3: 'টাঙ্গুয়ার হাওর কখন যাবেন',                                                data4: 'বর্ষাকাল টাঙ্গুয়ার হাওর ভ্রমণের সবচেয়ে উপযুক্ত সময়। বছরের অন্য সময় সাধারণত এর পানি অনেক কম থাকে। তবে পাখি দেখতে চাইলে শীতকালেই যেতে হবে আপনাকে। টাঙ্গুয়ার হাওর ভ্রমণের সাথে আরো যা দেখতে পারেন ছোট-ছোট সোয়াম্প ফরেস্ট, শহীদ সিরাজ লেক (নিলাদ্রি লেক), বারিক টিলা, যাদুকাটা নদী, লাউড়ের গড়, অপরূপ সূর্যোদয় ও সূর্যাস্ত।',
      data5: 'টাঙ্গুয়ার হাওর কীভাবে যাবেন',
      data6: 'প্রতিদিন ঢাকার সায়েদাবাদ বাসস্ট্যান্ড থেকে মামুন ও শ্যামলী পরিবহণের বাস সরাসরি সুনামগঞ্জের উদ্দেশ্যে ছেড়ে যায় এবং মহাখালী থেকে ছেড়ে যায় এনা পরিবহণের বাস। এসব নন-এসি বাসে জনপ্রতি টিকেট কাটতে ৬৫০-৭৫০ টাকা লাগে আর সুনামগঞ্জ পৌঁছাতে প্রায় ছয় ঘন্টা সময় লাগে।',                                              data7: 'কোথায় থাকবেন',
      data8: 'টাঙ্গুয়ার হাওরে থাকার জন্য তেমন কোন ব্যবস্থা নেই। তবে যদি নৌকায় রাত কাটাতে চান তবে নিরাপত্তার জন্যে পাড়ের কাছাকাছি থাকার চেষ্টা করুন। আর ঘর ভাড়া করতে চাইলে টেকেরঘাট এলাকায় হাওর বিলাশ নামে কাঠের বাড়িতে সল্প মূল্যে রুম ভাড়া নিয়ে থাকতে পারবেন। তবে টাঙ্গুয়ার হাওরে নৌকায় এক রাত থাকার অভিজ্ঞতা নিলে অবশ্যই ভাল লাগবে।',




    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/7 tanguar haor.jpg"),
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






class LList_8 extends StatefulWidget {

  @override
  _LList_8State createState() => _LList_8State();
}

class _LList_8State extends State<LList_8> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1: 'হাকালুকি হাওর',
        data2: 'হাকালুকি হাওর (Hakaluki Haor) সিলেট ও মৌলভীবাজারের ৫টি উপজেলা নিয়ে বিস্তৃত বাংলাদেশের অন্যতম বৃহৎ মিঠা পানির জলাভূমি। হাকালুকি হাওর প্রায় ২৩৮ টি বিল ও ১০ টি নদীর সমন্বয়ে গঠিত এবং বর্ষাকালে এই হাওরের আয়তন দাঁড়ায় প্রায় ২০ হাজার হেক্টর। মাছের জন্য প্রসিদ্ধ হাকালুকি হাওরে শীতকালে অতিথি পাখিদের আগমনে মুখরিত হয়ে উঠে। এছাড়াও এখানে প্রায় ১০০ প্রজাতির স্থানীয় পাখি দেখা মিলে। হাওরের বিস্তির্ন ভূমি, বিল নির্ভর মানুষের জীবনযাত্রা এবং অথিতি পাখির আহ্বানে ভ্রমনপিয়াসীরা হাকালুকি হাওরে ছুটে আসে।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকা থেকে হাকালুকি হাওরে যেতে আপনাকে প্রথমে মৌলভীবাজার জেলার কুলাউড়া আসতে হবে। কুলাউড়া থেকে অটোরিক্সা বা রিক্সা ভাড়া করে সরাসরি হাওরে যাওয়া যায়। কুলাউড়া থেকে হাকালুকি হাওরে যেতে ১০০ থেকে ১৫০ টাকা অটোরিক্সা ভাড়া লাগে এবং রিকশা ভাড়া লাগে ৬০ টাকা থেকে ১০০ টাকা',
        data5: 'কোথায় থাকবেন',
        data6: 'হাওরে বিল ইজারাদারদের কুটিরগুলোতে বিল মালিকের অনুমতি নিয়ে ২ – ৪ জন অনায়াসেই রাত্রিযাপন করতে পারবেন। তবে বিল এলাকায় জোছনা রাতে তাঁবু ফেলে ক্যাম্পিং করার মুহুর্তগুলো আপনাকে আজীবন আনন্দ দেবে। এছাড়া পার্শবর্তী উপজেলা শহর বড়লেখায় রাত্রিযাপন করতে পারবেন। তবে রাত্রি থাকতে চাইলে নিজেদের নিরাপত্তার কথাও ভেবে নিতে হবে।',
        data7: 'কোথায় খাবেন',
        data8: 'হাকালুকি হাওর ভ্রমণের সময় নৌকার মাঝির সাথে কথা বলে প্রয়োজনীয় বাজার করে নিলে মাঝিই আপনাদের রান্না করে খাওয়াবে। এছাড়া নৌকায় উঠার সময় বিস্কুট, চা, পাউরুটি, খাবার পানি ইত্যাদি হালকা খাবার নিয়ে ভ্রমণ করতে পারেন। যদি কোন হাওরের কর্মজীবী মানুষদের ম্যানেজ করতে পারেন তবে অল্প টাকায় তাদের সাথে ভাত আর মাছের ঝোল দিয়ে দুপুরের খাবার খেয়ে নিতে পারবেন। হাওরে বেশ অল্পমূল্যে গরু মহিষের দুধ পাওয়া যায়।'




    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/lake/8 hakaluki haor.jpg"),
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





//
// class LList_8 extends StatefulWidget {
//
//   @override
//   _LList_8State createState() => _LList_8State();
// }
//
// class _LList_8State extends State<LList_8> {
//   @override
//   Widget build(BuildContext context) {
//     return buildScaffold(
//
//
//
//         data1: 'মায়াবিনী লেক',
//         data2: 'পার্বত্য জেলা খাগড়াছড়ির পানছড়ি উপজেলার ভাইবোনছড়ার কংচাইরি পাড়ায় মায়াবিনী লেক (Mayabini Lake) অবস্থিত। খাগড়াছড়ি জেলা শহর থেকে মাত্র ৩০ মিনিট দূরত্বে হওয়ায় নিরাপত্তা নিয়ে বাড়তি দুশ্চিন্তা করার সুযোগ নেই। ৪০ একর উঁচু-নিচু পাহাড়ি জায়গায় ১৫ একর নিসর্গময় লেক নিয়ে গড়ে তোলা হয়েছে এই মায়াবিনী লেক পর্যটন কেন্দ্র। পাহাড়ের নৈস্বর্গিক সৌন্দর্য্য, বিশাল আকাশ আর লেকের স্বচ্ছ শান্ত জল সহজেই মনকে নির্মল আনন্দে মাতিয়ে তোলে। মায়াবিনী লেকের মাঝখানে ছোট্ট সুন্দর দ্বীপে পর্যটকদের জন্য গড়ে তোলা হয়েছে একটি বিশ্রামাগার। আর লেকে ঘুরে বেড়ানোর জন্য রয়েছে নৌকার ব্যবস্থা।',
//         data3: 'কীভাবে যাবেন',
//         data4: 'ঢাকা হতে মায়াবিনী লেকে যেতে হলে প্রথমে খাগড়াছড়ি আসতে হবে। শান্তি, হানিফ, এস আলম, শ্যামলী, ইকোনো এবং সৌদিয়া পরিবহনের এসি/নন-এসি বাসে চড়ে সরাসরি খাগড়াছড়ি যেতে পারবেন। বাস ভেদে জনপ্রতি ভাড়া লাগবে ৫০০ থেকে ১০০০ টাকা। খাগড়াছড়ির চেংগী স্কোয়ার থেকে বাস, পিকআপ, জীপ (চাঁদের গাড়ী), মোটর বাইক, সিএনজি কিংবা মাহিন্দ্র ভাড়া করে পানছড়ি-খাগড়াছড়ি সড়কে অবস্থিত ভাইবোনছড়া বাজারে আসতে পারবেন। ভাইবোনছড়া বাজার থেকে জনপ্রতি ১০ টাকা অটোরিক্সা ভাড়ায় মায়াবিনী লেকে যাওয়া যায়। খাগড়াছড়ি থেকে ভাইবোনছড়া বাজারের দূরত্ব প্রায় ১৫ কিলোমিটার। খাগড়াছড়ি থেকে ভাইবোনছড়া বাজারে আসতে সিএনজি ভাড়া জনপ্রতি ৩০ থেকে ৪০ টাকা লাগে। (বিঃ দ্রঃ সময়ানুপাতে ভাড়া পরিমান কম-বেশি হতে পারে।)',
//         data5: 'কোথায় থাকবেন',
//         data6: 'খাগড়াছড়ি শহরে রাত্রি যাপনের জন্য বিভিন্ন মানের আবাসিক হোটেল রয়েছে। রুম দেখে দরদাম করে পছন্দমত হোটেলে থাকতে পারবেন। হোটেলে ভেদে এক রাত অবস্থানের জন্য ভাড়ার সীমা ৪০০ টাকা ৩৫০০ টাকা। খাগড়াছড়ি শহরে ভালো মানের আবাসিক হোটেলের মধ্যে রয়েছে –',
//         data7: 'কোথায় খাবেন',
//         data8: 'খাগড়াছড়ি জেলা শহরের শাপলা চত্বর ও বাস স্ট্যান্ড এলাকায় বেশ কিছু রেস্টুরেন্ট রয়েছে। এছাড়া পানথাই পাড়ায় অবস্থিত ‘সিস্টেম রেস্তোরা’ (01556-773493, 01732-906322) কফি, হাসের কালাভূনা, বাশকুড়ুল এবং ঐতিহ্যবাহী পাহাড়ি খাবারের স্বাদ নিতে পারেন।'
//
//
//
//
//
//
//
//     );
//   }
//
//
//
//   Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
//     return Scaffold(
//
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               child: ExpansionPanelList(
//                 expansionCallback: (i, isOpen) {
//                   setState(() {
//                     if (index == i)
//                       index = -1;
//                     else
//                       index = i;
//                   });
//                 },
//                 animationDuration: Duration(seconds: 1),
//                 dividerColor: Colors.teal,
//                 elevation: 2,
//                 children: [
//                   ExpansionPanel(
//                     headerBuilder: (BuildContext context, bool isExpanded) {
//                       return ListTile(
//
//                         title: Text(data1,style: TextStyle( fontWeight: FontWeight.bold),),
//                       );
//                     },
//                     canTapOnHeader: true,
//                     body: ListTile(
//                       title: Text(
//                         data2,
//                       ),
//
//                     ),
//                     isExpanded: index == 0,
//                   ),
//                   ExpansionPanel(
//                     headerBuilder: (BuildContext context, bool isExpanded) {
//                       return ListTile(
//
//                         title: Text(data3,style: TextStyle( fontWeight: FontWeight.bold)),
//                       );
//                     },
//                     canTapOnHeader: true,
//                     body: ListTile(
//                       title: Text(data4),
//                     ),
//                     isExpanded: index == 1,
//                   ),
//                   ExpansionPanel(
//                     headerBuilder: (BuildContext context, bool isExpanded) {
//                       return ListTile(
//                         title: Text(data5,style: TextStyle( fontWeight: FontWeight.bold)),
//                       );
//                     },
//                     canTapOnHeader: true,
//                     body: ListTile(
//                       title: Text(data6),
//                     ),
//                     isExpanded: index == 2,
//                   ),
//                   ExpansionPanel(
//                     canTapOnHeader: true,
//                     headerBuilder: (BuildContext context, bool isExpanded) {
//                       return ListTile(
//                         title: Text(data7,style: TextStyle( fontWeight: FontWeight.bold)),
//                       );
//                     },
//                     body: ListTile(
//                       title: Text(data8),
//                     ),
//                     isExpanded: index == 3,
//                   ),
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
