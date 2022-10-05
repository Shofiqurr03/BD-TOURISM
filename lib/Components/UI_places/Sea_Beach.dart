


import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';


int index = -1;

class List_1 extends StatefulWidget {

  @override
  _List_1State createState() => _List_1State();
}

class _List_1State extends State<List_1> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        data1: 'কক্সবাজার সমুদ্র সৈকত',
        data2: 'কক্সবাজার সমুদ্র সৈকত (Coxsbazar Sea Beach) নিয়ে কথা বলতেই প্রথমে মাথায় আসে এটি পৃথিপৃ বীর সর্ববৃর্বহৎবৃ সমুদ্র সৈকত এবং বাংলাদেশের সবচেয়ে জনপ্রিয় পর্যটনর্য স্থান। ১২০ কিলোমিটার দৈর্ঘ্য বিশিষ্ট অখণ্ড এ সাগর সৈকত দেশী বিদেশি পর্যটকর্য দের উত্তাল ঢেউ এবং মনোমুগ্ধকর সূর্যা স্থের্যা র মায়াজালে আবদ্ধ করে রাখে। ',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকা থেকে কক্সবাজার সড়ক, রেল এবং আকাশপথে যাওয়া যায়। ঢাকা থেকে কক্সবাজারগামী বাসগুলোর মধ্যে সৌদিয়া, এস আলম মার্সিডিজ বেঞ্জ, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী পরিবহন, সোহাগ পরিবহন, এস.আলম পরিবহন, মডার্ন লাইন ইত্যাদি উল্লেখযোগ্য। শ্রেণী ভেদে বাসগুলোর প্রতি সীটের ভাড়া ৯০০ টাকা থেকে ২০০০ টাকা পর্যন্ত।',
        data5: 'কোথায় থাকবেন',
        data6: 'কক্সবাজারের হোটেলগুলো বর্তমান ধারণ ক্ষমতা প্রায় ১৫০,০০০ জন। তাই অফ সিজনে বুকিং না দিয়ে গেলেও হোটেলে রুম পাবার নিশ্চয়তা থাকে কিন্তু ডিসেম্বরের ১৫ থেকে জানুয়ারী ১৫ তারিখ পর্যন্ত অগ্রিম বুকিং দিয়ে যাওয়াই শ্রেয়। সাধারণত দামানুসারে কক্সবাজার হোটেল/মোটেল/রিসোর্ট গুলোকে তিন ভাগে ভাগ করা যায় ।',
        data7: 'কোথায় খাবেন',
        data8: 'কক্সবাজারে সব ধরণ ও মানের রেস্টুরেন্ট আছে। মধ্যম মানের বাজেট রেস্টুরেন্টের মধ্যে রোদেলা, ঝাউবন, ধানসিঁড়ি, পৌষি, নিরিবিলি ইত্যাদি উল্লেখ করার মত। সিজন অনুসারে অন্য অনেক কিছুর মত এখানে খাবারের দামও কম/বেশী হতে পারে। ভাত: ২০-৪০ টাকা, মিক্সড ভর্তা: ৭৫/১৫০/৩০০টাকা (৮-১০ আইটেম), লইট্যা ফ্রাই: ১০০-১২০টাকা (প্রতি প্লেট ৬-১০ টুকরা), কোরাল/ভেটকি: ১৫০ টাকা (প্রতি পিচ), গরু: ১৫০-২০০ টাকা ');
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,


      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/cox.jpg"),
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





class List_2 extends StatefulWidget {

@override
_List_2State createState() => _List_2State();
}

class _List_2State extends State<List_2> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




data1: 'পতেঙ্গা সমুদ্র সৈকত',
data2: 'পতেঙ্গা সমুদ্র সৈকত (Patenga Sea Beach) বাংলাদেশের সুন্দর ও জনপ্রিয় সমুদ্র সৈকতগুলোর মধ্যে অন্যতম। চট্টগ্রাম থেকে মাত্র ১৪ কিলোমিটার দূরত্বে অবস্থিত এই সমুদ্র সৈকতে সহজেই যাওয়া যায় বলে পর্যটকদের কাছে জনপ্রিয়তা দিন দিন বাড়ছেই। এছাড়া এই সৈকতকে আরও আকর্ষণীয় করে তোলার জন্যে বেশ কিছু পরিকল্পণা বাস্তবায়িত হচ্ছে। ৫ কিলোমিটার দৈর্ঘ্যের পতেঙ্গা সৈকতকে আধুনিক ও বিশ্বমানের পর্যটন কেন্দ্র গড়ে তোলার লক্ষ্যে কাজ চলছে। ইতিমধ্যে সম্পন্ন হওয়া দৃষ্টিনন্দন সাজসজ্জা নজর কেড়েছে সবাইকে।',
data3: 'ঢাকা থেকে চট্টগ্রাম',
data4: 'ঢাকা থেকে সড়ক, রেল এবং আকাশপথে চট্টগ্রাম যাওয়া যায়। ঢাকার সায়দাবাদ বাস টার্মিনাল থেকে সৌদিয়া, ইউনিক, টি আর ট্রাভেলস, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী, সোহাগ, এস. আলম, মডার্ন লাইন ইত্যাদি বিভিন্ন পরিবহনের এসি-নন এসি বাস চট্টগ্রামের উদ্দেশ্যে ছেড়ে যায়। শ্রেণী ভেদে বাসগুলোর প্রতি সীটের ভাড়া ৯০০ টাকা থেকে ২৫০০ টাকা পর্যন্ত হয়ে থাকে।',
data5: 'খাবেন কোথায়',
data6: 'পতেঙ্গা সী বিচেই স্ট্রিট ফুডের দোকান রয়েছে। সেখানে মজাদার বেশ কিছু খাবার পাওয়া যায় যেমন ভাজাপোড়া, পেয়াজু, কাঁকড়া ভাজা সহ সামুদ্রিক মাছ ভাজা খেতে পারেন। এছাড়া ফূড কোর্ট গুলোতে ফাস্ট ফুড আইটেম পাবেন খাওয়ার জন্যে।',
data7: 'থাকবেন কোথায়',
data8: 'পতেঙ্গায় থাকার জন্যে বেশি অপশন নাই। চট্টগ্রাম শহরের কাছে বলে সাধারণত পর্যটকগণ রাতে থাকার জন্যে চট্টগ্রাম শহরেই চলে আসে। সৈকতের কাছে ভালো কোথাও থাকার জন্যে থাকতে পারেন বাটারফ্লাই পার্ক রিসোর্টে। এখানে থাকতে খরচ হবে চার হাজার থেকে সাত হাজার টাকা। এছাড়া কম খরচে পতেঙ্গার কাছে থাকতে হলে আপনাকে CEPZ এলাকায় কোন মাঝারি মানের হোটেলে থাকতে হবে।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/2 patenga.jpg"),
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






class List_3 extends StatefulWidget {

  @override
  _List_3State createState() => _List_3State();
}

class _List_3State extends State<List_3> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'গুলিয়াখালী সমুদ্র সৈকত',
        data2: 'গুলিয়াখালী সমুদ্র সৈকত (Guliakhali Sea Beach) চট্টগ্রাম জেলার সীতাকুণ্ড উপজেলায় অবস্থিত। স্থানীয় মানুষের কাছে এই সৈকত ‘মুরাদপুর বীচ’ নামেও সুপরিচিত। সীতাকুণ্ড বাজার থেকে গুলিয়াখালি সি বীচের দূরত্ব মাত্র ৫ কিলোমিটার। অনিন্দ্য সুন্দর গুলিয়াখালি সী বিচ কে সাজাতে প্রকৃতি কোন কার্পন্য করেনি। একদিকে দিগন্তজোড়া সাগর জলরাশি আর অন্য দিকে কেওড়া বন এই সাগর সৈকতকে করেছে অনন্য। কেওড়া বনের মাঝ দিয়ে বয়ে যাওয়া খালের চারিদিকে কেওড়া গাছের শ্বাসমূল লক্ষ করা যায়, এই বন সমুদ্রের অনেকটা ভেতর পর্যন্ত চলে গেছে। এখানে পাওয়া যাবে সোয়াম্প ফরেস্ট ও ম্যানগ্রোভ বনের মত পরিবেশ। গুলিয়াখালি সৈকতকে ভিন্নতা দিয়েছে সবুজ গালিচার বিস্তৃত ঘাস। সাগরের পাশে সবুজ ঘাসের উন্মুক্ত প্রান্তর নিশ্চিতভাবেই আপনার চোখ জুড়াবে। বীচের পাশে সবুজ ঘাসের এই মাঠে প্রাকৃতিক ভাবেই জেগে উঠেছে আঁকা বাঁকা নালা। এইসব নালায় জোয়ারের সময় পানি ভরে উঠে। চারপাশে সবুজ ঘাস আর তারই মধ্যে ছোট ছোট নালায় পানি পূর্ণ এই দৃশ্য যে কাউকে মুগ্ধ করবে। অল্প পরিচিত এই সৈকতে মানুষজনের আনাগোনা কম বলে আপনি পাবেন নিরবিলি পরিবেশ। সাগরের এত ঢেউ বা গর্জন না থাকলেও এই নিরবিলি পরিবেশের গুলিয়াখালি সমুদ্র সৈকত আপনার কাছে ধরা দিবে ভিন্ন ভাবেই। চাইলে জেলেদের বোটে সমুদ্রে ঘুরে আসতে পারেন। এক্ষেত্রে বোট ঠিক করতে দরদাম করে করে নিতে হবে।',
        data3: 'ঢাকা থেকে সীতাকুণ্ড',
        data4: 'ঢাকা থেকে চট্রগ্রাম গামী যে কোন বাসে করেই যেতে পারবেন সীতাকুন্ড। এসি ও নন এসি এইসব বাসের ভাড়া ৪২০-১০০০ টাকা। প্রয়োজন হলে বাসের সুপারভাইজার কে আগেই বলে রাখবেন সীতাকুন্ড নামিয়ে দিতে। ঢাকা থেকে সীতাকুন্ড মেইল ট্রেনে করে জনপ্রতি ১২০ টাকা ভাড়া সীতাকুণ্ড আসতে পারেন। ঢাকা থেকে আন্তঃনগর ট্রেনে করে ফেনী যেতে পারবেন, শ্রেনী ভেদে ভাড়া ২২০-৫০৬ টাকা। ফেনী থেকে লোকাল বাসে করে সীতাকুণ্ড যেতে পারেন। ফেনী থেকে লোকাল বাসে সীতাকুণ্ড যেতে ৫০ থেকে ৭০ টাকা ভাড়া লাগবে।',
        data5: 'খাওয়া',
        data6: 'গুলিয়াখালি সি বিচে থাকা ও খাবার কোন ব্যবস্থা নেই। শুধুমাত্র সী-বিচে ছোট একটি দোকান আছে তাই প্রয়োজনে সীতাকুণ্ড বাজার থেকে সাথে খাবার নিয়ে নিন।',
        data7: 'থাকা',
        data8: 'থাকতে চাইলে সীতাকুণ্ড বাজারে সাইমুন এবং সৌদিয়া হোটেলে থাকতে পারবেন। সাইমুনে ৩০০ থেকে ৬০০ টাকায় রুম পাবেন আর সৌদিয়ায় রুম পেতে আপনাকে গুনতে হবে ৬০০ থেকে ১৬০০ টাকা। বুকিং দিতে ফোন করতে পারেন 01991-787979, 01816-518119 নাম্বারে। আরো ভালো কোথাও থাকতে চাইলে আপনাকে চট্রগ্রাম চলে যেতে হবে।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/3 guliakhali.jpg"),
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





class List_4 extends StatefulWidget {

  @override
  _List_4State createState() => _List_4State();
}

class _List_4State extends State<List_4> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'বাঁশবাড়িয়া সমুদ্র সৈকত',
        data2: 'চট্রগ্রামের সীতাকুণ্ড উপজেলা যেন সব প্রাকৃতিক রূপ নিয়ে বসে আছে। এখানে আছে পাহাড়, লেক, ঝর্ণা, সমুদ্র সৈকত, প্রাচীন স্থাপনা সহ নানা কিছু। বাঁশবাড়িয়া সমুদ্র সৈকত (Bashbaria Sea Beach) তেমনই পর্যকটকের জন্যে একটা আকর্ষণীয় স্থান হিসেবে পরিচিতি লাভ করেছে। ঝাউ গাছের সারি, খোলামেলা পরিবেশ, জেগে উঠা সবুজ ঘাসের চর, আছে পিকনিক স্পট, সব মিলিয়ে বাঁশবাড়িয়া সমুদ্র সৈকত অপূর্ব সৌন্দর্য নিয়ে অপেক্ষা করছে দর্শনার্থীদের জন্য।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকা থেকে বাসে বাঁশবাড়িয়া সমুদ্র সৈকত যেতে চাইলে চট্রগ্রাম গামী যে কোন বাসে আসতে পারবেন। তবে আপনাকে নেমে যেতে হবে চট্রগ্রামের আগে সীতাকুন্ডের বাঁশবাড়িয়া বাজারে। বাসের সুপারভাইজারকে আগেই বলে রাখবেন যেন বাঁশবাড়িয়া নামিয়ে দেয়। ঢাকা থেকে ট্রেনে যেতে চাইলে আপনাকে ফেনী নেমে যেতে হবে। ফেনীর মহিপাল থেকে বাসে সীতাকুন্ড (ভাড়া ৬০-৭০ টাকা, ১ ঘণ্টা) বাঁশবাড়িয়া যেতে হবে। বাঁশবাড়িয়া নেমে সেখানে থেকে লোকাল সিএনজি দিয়ে জনপ্রতি ২০-২৫টাকা দিয়েই যেতে পারবেন বাশবাড়িয়া সী বিচে।',
        data5: 'খাওয়া',
        data6: ' সীতাকুন্ডে খাবার জন্য বেশ কয়েকটি হোটেল আছে। এদের মধ্যে আল আমীন হোটেলের খাবার মোটামুটি ভালো মানের। আর যদি চট্টগ্রাম যান তবে এখানে সব ধরণের খাবার রেস্টুরেন্ট পাবেন।',
        data7: 'থাকা',
        data8: 'সীতাকুন্ডে কিছু সাধারণ মানের হোটেল পাবেন। সীতাকুণ্ড বাজারে হোটেল সাইমুন নামে একটি হোটেল আছে, যেখানে ৩০০ থেকে ৭০০ টাকায় রুম পাবেন। অতি সম্প্রতি সীতাকুণ্ড পৌরসভার ডি টি রোডে হোটেল সৌদিয়া নামে একটি আবাসিক হোটেল চালু হয়েছে। হোটেলটিতে ৮০০ থেকে ১৬০০ টাকায় কয়েক ধরণের রুম পাওয়া যায়। বুকিং দিতে ফোন করতে পারেন 01991-787979, 01816-518119 নাম্বারে।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/4 bashbaria.jpg"),
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









class List_5 extends StatefulWidget {

  @override
  _List_5State createState() => _List_5State();
}

class _List_5State extends State<List_5> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'পারকি সমুদ্র সৈকত',
        data2: 'বাংলাদেশের দর্শনীয় স্থানের তালিকায় কক্সবাজার বা পতেঙ্গা সমুদ্র সৈকত শীর্ষে অবস্থান করলেও বন্দরনগরী চট্টগ্রামের আনোয়ারার পারকি সমুদ্র সৈকতের (Parki Sea Beach) সৌন্দর্য কোন অংশেই কম নয়। ধীরে ধীরে জনপ্রিয় হয়ে উঠা এই সাগর সৈকতের সবুজ ঝাউবন, লাল কাঁকড়া ও নীলাভ জলরাশি যেন সর্বদা ভ্রমণকারীদের স্বাগত জানাতে প্রস্তুত। পারকি সমুদ্র সৈকতের দৈর্ঘ্য প্রায় ১৫ কিলোমিটার এবং প্রস্থ স্থানভেদে ৩০০-৩৫০ ফুট। স্থানীয়দের কাছে উপকূলীয় পার্কি সমুদ্র সৈকত ‘পারকির চর’ নামে পরিচিত।',
        data3: 'কিভাবে যাবেন',
        data4: 'চট্টগ্রাম শহর থেকে পারকি সমুদ্র সৈকতের দূরত্ব প্রায় ২৫ কিলোমিটার। চট্টগ্রাম শহরের যেকোন স্থান থেকে পতেঙ্গা ১৫ নাম্বার জেটি দিয়ে কর্ণফুলি নদী পার হয়ে অটোরিকশা ভাড়া করে পারকি সমুদ্র সৈকত যেতে পারবেন। আবার চট্টগ্রাম থেকে বাসে আনোয়ারা বাসস্ট্যান্ড পৌঁছে সেখান থেকে সিএনজি/অটোরিকশা নিয়ে পারকি সমুদ্র সৈকত যাওয়া যায়। এছাড়া চট্টগ্রাম শহর থেকে রেন্ট-এ-কার, ক্যাব, মাইক্রোবাস বা সিএনজি রিজার্ভ নিয়ে পারকি যেতে পারবেন।',
        data5: 'কোথায় থাকবেন',
        data6: 'চট্টগ্রাম শহরের ষ্টেশন রোড, জেএসসি মোড় এবং আগ্রাবাদ এলাকায় বিভিন্ন মানের আবাসিক হোটেল রয়েছে। এদের মধ্যে হোটেল স্টার পার্ক, হোটেল ডায়মন্ড পার্ক, হোটেল মিসখা, হোটেল হিল টন সিটি, এশিয়ান এসআর হোটেল, হোটেল প্যারামাউন্ট, হোটেল সাফিনা ও হোটেল সিলমন উল্লেখযোগ্য।',
        data7: 'কোথায় খাবেন',
        data8: 'পারকি সমুদ্র সৈকতে সাধারণ মানের কিছু খাবারের দোকান রয়েছে। চট্টগ্রাম শহরে বাঙ্গালি, চাইনিজ ও ফাস্ট ফুড সহ বিভিন্ন ধরণের খাবারের হোটেল ও রেস্টুরেন্ট আছে। আর সুযোগ থাকলে অবশ্যই চট্টগ্রামের জনপ্রিয় মেজবানি খাবার ও কালা ভুনা খেয়ে দেখবেন।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/5 parki.jpg"),
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









class List_6 extends StatefulWidget {

  @override
  _List_6State createState() => _List_6State();
}

class _List_6State extends State<List_6> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'বাঁশখালী সমুদ্র সৈকত',
        data2: 'কক্সবাজার, পতেঙ্গা কিংবা কুয়াকাটা সমুদ্র সৈকত ছাড়াও বাংলাদেশে বেশ কয়েকটি স্বল্প পরিচিত সমুদ্র সৈকত রয়েছে। চট্টগ্রাম জেলা শহর থেকে ৪০ কিলোমিটার দূরে অবস্থিত বাঁশখালী সমুদ্র সৈকত (Banshkhali Sea Beach) তেমনি এক অপ্রচলিত ভ্রমণ গন্তব্য। বালুময় বেলাভূমি ও ঝাউবনে ঘেরা বাঁশখালী সমুদ্র সৈকত কক্সবাজারের পর বাংলাদেশের ২য় বৃহত্তম সমুদ্র সৈকত। এটি ছনুয়া, গন্ডামারা, সরল, বাহারছড়া, খানখানাবাদ উপকূল মিলিয়ে সর্বমোট ৩৭ কিলোমিটার এলাকা জুড়ে বিস্তৃত।',
        data3: 'কিভাবে যাবেন',
        data4: 'বাঁশখালী সমুদ্র সৈকত যেতে চাইলে ঢাকা বা বাংলাদেশের যেকোন প্রান্ত থেকে চট্টগ্রাম শহরে চলে আসুন। চট্টগ্রাম শহরের নতুন ব্রিজ/বহাদ্দারহাট বাস টার্মিনাল হতে সিএনজি বা বাসে গুনাগরি বাজার নেমে লোকাল সিএনজিতে বাঁশখালী সমুদ্র সৈকত যেতে পারবেন।',
        data5: 'কোথায় থাকবেন',
        data6: 'চট্টগ্রাম থেকে দিনে গিয়ে অনায়াসেই বিকেল বা সন্ধ্যার মধ্যে ফিরে আসা যায়। চট্টগ্রামের ষ্টেশন রোড, জেএসসি মোড় বা আগ্রাবাদ এলাকায় বিভিন্ন মানের হোটেল খুঁজে পাবেন। আবাসিক হোটেলের মধ্যে হোটেল স্টার পার্ক, হোটেল ডায়মন্ড পার্ক, হোটেল মিসখা, হোটেল হিল টন সিটি, এশিয়ান এসআর হোটেল, হোটেল প্যারামাউন্ট, হোটেল সাফিনা ও হোটেল সিলমন উল্লেখযোগ্য।',
        data7: 'কোথায় খাবেন',
        data8: 'বাঁশখালীতে সাধারন মানের বেশ কিছু হোটেল ও মনছুড়িয়া বাজারে খুচরা চা নাস্তার দোকান আছে। এছাড়া চট্টগ্রাম শহরে বাঙ্গালি, চাইনিজ বা ফাস্ট ফুডের বেশকিছু ভাল মানের রেস্টুরেন্ট আছে। আর সুযোগ থাকলে অবশ্যই চট্টগ্রামের জনপ্রিয় মেজবানি খাবার ও কালা ভুনা খেয়ে দেখবেন।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/6 bashkhali.jpg"),
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









class List_7 extends StatefulWidget {

  @override
  _List_7State createState() => _List_7State();
}

class _List_7State extends State<List_7> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'ইনানী সমুদ্র সৈকত',
        data2: 'কক্সবাজার থেকে ২৩ কিলোমিটার আর হিমছড়ি থেকে ১৪ কিলোমিটার দূরে ইনানী সমুদ্র সৈকত (Inani Sea Beach)। ভাটার সময় ইনানী সমুদ্র সৈকতে সেন্টমার্টিনের মত প্রবাল পাথরের দেখা মিলে। এখানে কক্সবাজারের মত সাগর এত উত্তাল থাকে না আর এই শান্ত সাগরই পর্যটকদের আরো বেশী বিমোহিত করে। সাধারণত বিকেল বেলায় ইনানী সৈকত ভ্রমণের জন্য আদর্শ সময়। বিকেল বেলায় পর্যটক তুলনামূলক কম থাকে আর সাথে অপূর্ব সূর্যাস্ত দেখার সুযোগ হাতছাড়া করা পরবর্তীতে আপনার আফসুসের কারণ হতে পারে। এছাড়া টেকনাফ গামী মেরিন ড্রাইভ রোড দিয়ে ইনানী বীচে যাবার সময় হিমছড়ির পাহাড়, সমুদ্র তীরের সাম্পান, নারিকেল ও ঝাউবন গাছের সারি আর চারপাশের প্রাকৃতিক দৃশ্য দেখে আপনার ভ্রমণের সমস্ত ক্লান্তি দূর হয়ে মন প্রফুল্ল হয়ে উঠবে।',
        data3: 'ইনানী কিভাবে যাবেন',
        data4: 'প্রথমে ঢাকা থেকে আপনাকে কক্সবাজার আসতে হবে। কক্সবাজার আসতে বিভিন্ন ধরণের এসি-নন এসি বাস সার্ভিস রয়েছে। এদের মধ্যে সৗদিয়া, এস আলম এর মার্সিডিজ বেঞ্জ, গ্রিন লাইন, হানিফ এন্টারপ্রাইজ, শ্যামলী পরিবহন, সোহাগ পরিবহন, এস.আলম পরিবহন, সেন্টমার্টিন হুন্দাই ইত্যাদি উল্লেখযোগ্য। বাস ভেদে ভাড়া জনপ্রতি ৯০০ থেকে ২৫০০ টাকা পর্যন্ত। এছাড়া ঢাকা থেকে ট্রেনে করে চট্টগ্রাম হয়ে আপনি কক্সবাজার যেতে পারবেন। আর যদি বাজেট নিয়ে কোন টেনশন না থাকে তবে কক্সবাজার যাবার জন্য আকাশ পথ বেছে নিতে পারেন। এক্ষেত্রে সময় এবং বিমানের ক্লাস ভেদে আপনার ৪৬০০ থেকে ১২,০০০ টাকার মত লাগবে।',
        data5: 'কোথায় থাকবেন',
        data6: 'ইনানী বিচের আশেপাশে কিছু হোটল ও রিসোর্ট আছে। তার মধ্যে রয়েল ফাইভ স্টার টিউলিপ সী পার্ল রিসোর্ট, ইনানী রয়াল রিসোর্ট, লা বেল্যা রিসোর্ট উল্লেখযোগ্য। তবে কক্সবাজার থেকে কাছে হওয়ায় এবং অনেক হোটেল থাকায় কক্সবাজারে থাকাই সবচেয়ে সুবিধাজনক ।',
        data7: 'কোথায় কি খাবেন',
        data8: 'আনায়াসেই ৫-৬ ঘন্টায় ইনানী বীচ থেকে ঘুরে আসা যায় তাই চাইলে হালকা শুকনো খাবার সাথে রাখতে পারেন কিংবা পুনরায় কক্সবাজার ফিরে খেতে পারেন। কক্সবাজারে খাবার জন্য বিভিন্ন মানের রেস্তোরাঁ রয়েছে। মধ্যম মানের রেস্টুরেন্টের মধ্যে রোদেলা, ঝাউবন, ধানসিঁড়ি, পৌষি, নিরিবিলি ইত্যাদি উল্লেখ করার মত।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/7 inani.jpg"),
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






class List_8 extends StatefulWidget {

  @override
  _List_8State createState() => _List_8State();
}

class _List_8State extends State<List_8> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'ছেঁড়া দ্বীপ, সেন্টমার্টিন',
        data2: 'ছেঁড়া দ্বীপ (Chera Dwip) বাংলাদেশের সর্ব দক্ষিণের ভূখন্ড। প্রবাল দ্বীপ সেন্ট মার্টিন থেকে প্রায় ৫ কিলোমিটার দক্ষিণে ছেঁড়া দ্বীপ অবস্থিত। স্থানীয় মানুষের কাছে দ্বীপটি ‘ছেঁড়াদিয়া’ বা ‘সিরাদিয়া’ নামে পরিচিত। ছেঁড়া দ্বীপ সম্পূর্ণ প্রাকৃতিক পাথর, প্রবাল এবং নারিকেল গাছে পরিপূর্ণ। জোয়ারের সময় ছেঁড়া দ্বীপের এক-তৃতীয়াংশ সাগরের পানির নিচে তলিয়ে যায়। সাগরের নীল ঢেউ যখন পাথরের গায়ে আঁচড়ে পরে তখন এক মোহনীয় দৃশ্যের অবতারণা হয়।',
        data3: 'কিভাবে ছেঁড়া দ্বীপ যাবেন',
        data4: 'ঢাকা থেকে টেকনাফঃ ছেঁড়া দ্বীপ যেতে হলে আপনাকে প্রথমে টেকনাফে আসতে হবে। ঢাকা থেকে বিভিন্ন বাসে করে সরাসরি টেকনাফে যাওয়া যায়। ঢাকার ফকিরাপুল, আব্দুল্লাহপুর, গাবতলী ও সায়েদাবাদ থেকে টেকনাফ যাওয়ার জন্য সেন্টমার্টিন পরিবহন, শ্যামলী, ঈগল, মডার্ন লাইন, গ্রীন লাইন, এস আলম ইত্যাদি বাস পাবেন। বাস ভাড়া সার্ভিসের ধরণভেদে সাধারণত ১০৫০ টাকা থেকে ২৫০০ টাকার মধ্যে হয়ে থাকে। টেকনাফ পৌঁছাতে ১০ থেকে ১২ ঘন্টা সময় লাগে।',
        data5: 'কি খাবেন',
        data6: 'সেন্টমার্টিনে খেতে পারেন কোরাল, সুন্দরী পোয়া, ইলিশ, রূপচাঁদা, লবস্টার, কালাচাঁদা ইত্যাদি নানান ধরনের স্বাদের মাছ। সেন্টমার্টিনের কিছু উল্লেখযোগ্য রেস্তোরাঁ হল কেয়ারি মারজান রেস্তোরাঁ, বিচ পয়েন্ট, হোটেল আল্লার দান, বাজার বিচ, আসাম হোটেল, সি বিচ, সেন্টমার্টিন, কুমিল্লা রেস্টুরেন্ট, রিয়েল রেস্তোরাঁ, হাজী সেলিম পার্ক, সেন্টমার্টিন টুরিস্ট পার্ক, হোটেল সাদেক ইত্যাদি। তবে খাবার আগে অবশ্যই খাবারের মান ও মূল্য একটু যাচাই করে নিন।',
        data7: 'থাকবেন কোথায়',
        data8: 'সেন্টমার্টিনে হোটেল ও কটেজের মধ্যে রয়েছে- সীমানা পেরিয়ে, প্রিন্স হেভেন, ব্ল–মেরিন রিসোর্ট, সমুদ্রবিলাস, ‎প্রাসাদ প্যারাডাইস, কোরাল ভিউ, কোরল ব্লু, মারমেইড, সি প্রবাল, নীল দিগন্ত, সায়রী, ‎সি ইন, ‎ড্রিম নাইট, হোটেল সাগর পাড়, রিয়াদ গেস্ট হাউজ, হোটেল স্বপ্ন প্রবাল, শ্রাবণ বিলাস, ব্লু ল্যাগুণ, সানসেট ভিউ, সরকারি ব্যবস্থাপনায় মেরিন পার্ক ইত্যাদি। মৌসুম অনুযায়ী এখানকার ভাড়ার তারতম্য হয় হোটেল ভেদে ভাড়া ৩০০ থেকে ৪০০০ টাকা পর্যন্ত হয়ে থাকে।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/8 saintmartin.jpg"),
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








class List_9 extends StatefulWidget {

  @override
  _List_9State createState() => _List_9State();
}

class _List_9State extends State<List_9> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(




        data1: 'শামলাপুর সমুদ্র সৈকত',
        data2: 'শামলাপুর সমুদ্র সৈকত দেখতে হলে টেকনাফের কাছে বাহারছড়া ইউনিয়নে যেতে হবে। সবুজ ঝাউবন, মাছ ধরার নৌকা এবং জেলেদের ব্যস্ততা ছাড়া এখানে তেমন মানুষজনের দেখা মিলে না। আর এই নির্জনতাই ভ্রমণপ্রিয় মানুষকে শামলাপুর সমুদ্র সৈকতের প্রতি আগ্রহী করে তুলছে। দৃষ্টিনন্দন এই সমুদ্র সৈকতটি বাহারছড়া সমুদ্র সৈকত নামেও পরিচিত।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকা কিংবা দেশের যেকোন প্রান্ত থেকে কক্সবাজার এসে মেরিন ড্রাইভ সড়ক পথে প্রায় ২ ঘণ্টার দূরত্বে নয়নাভিরাম শামলাপুর সমুদ্র সৈকত বা বাহারছড়া সমুদ্র সৈকতের অবস্থান। টেকনাফ থেকে ২০ কিলোমিটার দূরে শামলাপুর সমুদ্র সৈকত অবস্থিত। টেকনাফের হোয়াইক্যং রোড ধরে শামলাপুর যেতে যাত্রাপথের প্রতিটি মুহুর্তই উপভোগ্য। টেকনাফের বাসে টেকনাফ সড়কের হোয়াইক্যং রোড নেমে ধমধমিয়া হয়ে সিএনজি কিংবা ব্যাটারি অটো রিক্সা দিয়ে শামলাপুর সমুদ্র সৈকত যাওয়া যায়।',
        data5: 'কি খাবেন',
        data6: 'কক্সবাজার প্রায় সব ধরণ ও মানের রেস্টুরেন্ট রয়েছে। মাঝারি মানের বাজেট রেস্টুরেন্টের মধ্যে রোদেলা, ঝাউবন, ধানসিঁড়ি, পৌষি, নিরিবিলি, আল বোগদাদিয়া ইত্যাদি উল্লেখ করার মত। সিজন অনুসারে অন্য অনেক কিছুর মত খাবারের দামও এখানে কম/বেশী হতে পারে। এছাড়াও লাবনী পয়েন্ট সংলগ্ন হান্ডি রেস্তারা থেকে ২০০-২৫০ টাকায় হায়দ্রাবাদী বিরাণী চেখে দেখতে পারেন। আর যারা একটু খাবার বিলাসী তাদের জন্য কেওএফসি তো আছেই।',
        data7: 'কোথায় থাকবেন',
        data8: 'শামলাপুর থাকার কোন ব্যবস্থা নেই, টেকনাফে চাইলে মাঝারি মানের হোটেলে থাকতে পারবেন। তবে পর্যটকগন কক্সবাজারই রাত্রিযাপন করেন। কক্সবাজারের বিভিন্ন দাম ও মানের প্রায় ৫০০ আবাসিক হোটেল, মোটেল ও রিসোর্ট রয়েছে। আপনার পছন্দ মত যে কোন হোটেলে দরদাম করে থাকতে পারবেন। সিজন ও ছুটির দিন ব্যাতিত গেলে কক্সবাজার গিয়েই হোটেল ঠিক করে নিতে পারবেন। বিস্তারিত জানতে পড়তে পারেন আমাদের কক্সবাজার ভ্রমণ গাইড।'


    );

  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/sea/9 Shamlapur.jpg"),
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
// data1: '',
// data2: '',
// data3: '',
// data4: '',
// data5: '',
// data6: '',
// data7: '',
// data8: ''



//
// );