
import 'package:flutter/material.dart';
import 'package:tourism/Components/All_Components.dart';

int index = -1;


class JoList_1 extends StatefulWidget {

  @override
  _JoList_1State createState() => _JoList_1State();
}

class _JoList_1State extends State<JoList_1> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        data1: 'খৈয়াছড়া ঝর্ণা ',
        data2: 'খৈয়াছড়া ঝর্ণা (Khoiyachora Waterfall) চট্টগ্রামের মিরসরাইয়ে অবস্থিত বাংলাদেশের সবচেয়ে বড় ঝর্ণাগুলোর মধ্যে অন্যতম। খৈয়াছড়া ঝর্ণার নয়টি ধাপ ও নান্দনিক সৌন্দর্য্য দেখে ভ্রমণপিয়াসী মানুষ প্রতিনিয়তই মুগ্ধ হচ্ছে। গ্রামের সবুজ শ্যামল আঁকাবাঁকা মেঠো পথ আর পাহাড়ের হাতছানিতে অনন্য খৈয়াছড়ার আবেদন উপেক্ষা করা বেশ কঠিন তাইতো প্রকৃতিপ্রেমীরা খৈয়াছড়া ঝর্ণাকে বাংলাদেশের ঝর্ণা রানী হিসাবে আখ্যা দিয়েছেন।',
        data3: 'কিভাবে যাবেন',
        data4: 'ঢাকার যে কোন জায়গা থেকে চট্রগ্রামগামী যে কোন বাসে করে খৈয়াছড়া ঝর্ণা যেতে পারবেন। এস আলম, শ্যামলি, সৌদিয়া, ইউনিক, হানিফ, ঈগল, এনা প্রভৃতি পরিবহনের নন এসি বাস ভাড়া ৪২০- ৪৮০ টাকা। এসি বাসের মধ্যে গ্রিনলাইন, সৌদিয়া, সোহাগ, টি আর এইসব বাস ভাড়া ৮০০-১১০০ টাকা। আপনার পছন্দ মত বাসে এসে মিরসরাই এর বড়তাকিয়া বাজারের কাছে খৈয়াছড়া আইডিয়াল স্কুলের সামনে নেমে যেতে হবে। এছাড়া সায়েদাবাদ বাস স্ট্যান্ড থেকে স্টার লাইন পরিবহনে ফেনী (ভাড়া ২৮০ টাকা) এসে লোকাল বাসে মিরসরাই এর বাজারের কাছে খৈয়াছড়া আইডিয়াল স্কুলের সামনে আসতে পারবেন।',
        data5: 'কোথায় থাকবেন',
        data6: 'খৈয়াছড়া ঝর্ণার কাছে ও বড়তাকিয়া বাজারে থাকার কোন ব্যবস্থা নেই কিন্তু বিশেষ প্রয়োজনে থাকতে চাইলে সেখানকার চেয়ারম্যানের সাথে যোগাযোগ করতে পারেন। তবে সীতাকুন্ডে আপনি থাকার জন্য স্থানীয় কিছু হোটেল পাবেন। এদের মধ্যে সৌদিয়া ও সাইমুন অন্যতম। সাইমুন ও সৌদিয়ায় থাকতে আপনাকে ৩০০ থেকে ১৬০০ টাকা খরচ করতে হবে।',
        data7: 'কোথায় খাবেন',
        data8: 'খৈয়াছড়া ঝর্ণায় যাবার পথে বেশ কিছু খাবার হোটেল পাবেন। সেখানে আপনার মেন্যু অনুযায়ী খাবারের অর্ডার করে ফেরার পথে খেয়ে যেতে পারবেন। এই সব স্থানীয় হোটেলে অনেক স্বল্পমূল্যে খাবার খেতে পারবেন তবুও প্রয়োজনে দাম যাচাই করে নিতে পারেন। তবে মনে রাখা ভাল বিকাল ৫ টার পর এখানকার সব স্থানীয় খাবার হোটেল বন্ধ হয়ে যায়।'
    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/1 khoiyachora.jpg"),
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




class JoList_2 extends StatefulWidget {

  @override
  _JoList_2State createState() => _JoList_2State();
}

class _JoList_2State extends State<JoList_2> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


      data1:'সুপ্তধারা ঝর্ণা',
      data2:'পার্বত্য চট্টগ্রামের সীতাকুণ্ড (Sitakunda) উপজেলায় চন্দ্রনাথ রির্জাভ ফরেস্টের চিরসবুজ বনাঞ্চলের ইকোপার্কে শোভাবর্ধন অনন্য প্রাকৃতিক সুপ্তধারা ঝর্ণা (Suptadhara Waterfall)। সাধারণত বর্ষার মৌসুম ছাড়া সারাবছর এই ঝর্ণায় পানি বেশ কম থাকে। তবে বর্ষাকালে সুপ্তধারা ঝর্ণা নিজেকে পূর্ণরূপে মিলে ধরে। সুপ্তধারা ঝর্ণার কাছেই সহস্রধারা ঝর্ণা নামে আরো একটি জলপ্রপাত রয়েছে। তাই ভরা বর্ষায় ঝর্ণার সৌন্দর্য উপভোগ করতে দেশের বিভিন্ন প্রান্ত থেকে প্রতিদিন শত শত দর্শনার্থী সুপ্তধারা ঝর্ণা দেখতে সীতাকুণ্ড ইকোপার্ক এসে ভীড় করেন।',
      data3:'সুপ্তধারা ঝর্ণা দেখতে কিভাবে যাবেন',
      data4:'সীতাকুণ্ড ইকোপার্কেই সুপ্তধারা ঝর্ণার অবস্থান। ঢাকা থেকে সড়ক পথে সীতাকুণ্ড ইকোপার্ক আসতে এস.আলম, সৌদিয়া, গ্রীনলাইন, সিল্ক লাইন, সোহাগ, বাগদাদ এক্সপ্রেস, ইউনিক ইত্যাদি পরিবহণের বিভিন্ন এসি, ননএসি বাস পাবেন। এইসব বাসগুলো মূলত ঢাকা সায়দাবাদ বাসস্ট্যান্ড থেকে চট্টগ্রামের উদ্দেশ্যে যাত্রা করে। তবে সবগুলো বাসই প্রয়োজন অনুযায়ী সীতাকুণ্ডে থামে। সীতাকুণ্ড ইকো পার্কে যাওয়ার জন্য ঢাকা থেকে বাসে চড়ে আসলে সীতাকুন্ড বাস স্টপেজ থেকে ২ কিলোমিটার দূরে ফকিরহাট নামক জায়গায় বাস থেকে নামতে হবে।চট্টগ্রাম শহর থেকে সীতাকুণ্ড ইকোপার্কের দূরত্ব মাত্র ৩৫ কিলোমিটার। শহরের মাদারবাড়ী ও কদমতলী বাস ষ্টেশন থেকে সীতাকুণ্ড যাবার বাসগুলো ছাড়ে। এছাড়া অলঙ্কার থেকে মেক্সীতে করে সীতাকুণ্ডের ফকিরহাট যাওয়া যায়।ঢাকা টু চট্টগ্রাম রুটে চলাচলকারী ঢাকা মেইল ট্রেনটিই শুধু সীতাকুণ্ড রেলস্টেশনে থামে। ঢাকা থেকে রাত ১১ টায় যাত্রা শুরু করে পরদিন সকাল ৬ টা থেকে ৭ টার মধ্যে ট্রেনটি সীতাকুণ্ডে পৌঁছায়। আর যদি আন্তঃনগর ট্রেনে আসতে চান তবে ঢাকা থেকে চট্টগ্রামগামী যেকোন আন্তঃনগর ট্রেনে চড়ে ফেনী স্টেশনে নেমে সেখান থেকে ১০/১৫ টাকা অটো/রিক্সা ভাড়ায় মহিপাল বাসস্ট্যান্ড আসুন। মহিপাল বাসস্ট্যান্ড হতে ৫০-৮০ টাকা ভাড়ায় লোকাল বাসে সীতাকুণ্ড যেতে পারবেন।',
      data5:'সীতাকুণ্ডে কোথায় থাকবেন',
      data6:'সীতাকুণ্ডে থাকার জন্য তেমন কোন ভালো মানের আবাসিক হোটেল নেই। সীতাকুণ্ড বাজারে কয়েকটি মাঝারি মানের আবাসিক হোটেল আছে। এছাড়া এখানে টেলি-কমিউনিকেশনের অধীনস্থ একটি ডাকবাংলো আছে। অনুমতি নিয়ে সেখানে থাকার চেষ্টা করতে পারেন। অতি সম্প্রতি সীতাকুণ্ড পৌরসভার ডি টি রোডে হোটেল সৌদিয়া নামে একটি আবাসিক হোটেল চালু হয়েছে। হোটেলটিতে ৮০০ থেকে ১৬০০ টাকায় কয়েক ধরণের রুম পাওয়া যায়। বুকিং দিতে ফোন করতে পারেন 01991-787979, 01816-518119 নাম্বারে।',
    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/2 suptodhara.jpg"),
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



class JoList_3 extends StatefulWidget {

  @override
  _JoList_3State createState() => _JoList_3State();
}

class _JoList_3State extends State<JoList_3> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'সহস্রধারা ঝর্ণা',
        data2:'পার্বত্য চট্টগ্রামের সীতাকুণ্ড উপজেলায় চন্দ্রনাথ রির্জাভ ফরেস্টের চিরসবুজ বনাঞ্চলের গড়ে তোলা হয়েছে সীতাকুণ্ড ইকোপার্ক। আর এই সীতাকুণ্ড ইকোপার্কের শোভাবর্ধনকারী অনন্য এক প্রাকৃতিক নিদর্শনের নাম সহস্রধারা ঝর্ণা (Sohosrodhara Waterfall)। সারা বছর এই ঝর্ণায় অনেক কম পানি থাকলেও বর্ষাকালে সহস্রধারা ঝর্ণার পূর্ণরূপের দেখা মিলে। সহস্রধারা ঝর্ণার খুব কাছেই আছে সুপ্তধারা ঝর্ণা নামে আরো একটি জলপ্রপাত। তাই বর্ষায় এই ঝর্ণার সৌন্দর্য উপভোগ করতে দেশের বিভিন্ন প্রান্ত থেকে প্রতিদিন শত শত দর্শনার্থী এসে ভীড় করেন সীতাকুণ্ড ইকোপার্কে।',
        data3:'সহস্রধারা ঝর্ণা যাওয়ার উপায়',
        data4:'সীতাকুণ্ড ইকো পার্কেই সহস্রধারা ঝর্ণার অবস্থান। ঢাকা থেকে সড়ক পথে সীতাকুণ্ড ইকো পার্ক আসতে এস.আলম, সৌদিয়া, গ্রীনলাইন, সিল্ক লাইন, সোহাগ, বাগদাদ এক্সপ্রেস, ইউনিক ইত্যাদি পরিবহণের বিভিন্ন এসি, ননএসি বাস পাবেন। এইসব বাসগুলো মূলত ঢাকা সায়দাবাদ বাসস্ট্যান্ড থেকে চট্টগ্রামের উদ্দেশ্যে যাত্রা করে। তবে সবগুলো বাসই প্রয়োজন অনুযায়ী সীতাকুণ্ডে থামে। সীতাকুণ্ড ইকো পার্কে যাওয়ার জন্য ঢাকা থেকে বাসে চড়ে আসলে সীতাকুন্ড বাস স্টপেজ থেকে ২ কিলোমিটার দূরে ফকিরহাট নামক জায়গায় বাস থেকে নামতে হবে।ঢাকা থেকে ট্রেনে : ঢাকা টু চট্টগ্রাম রুটে চলাচলকারী ঢাকা মেইল ট্রেনটিই শুধু সীতাকুণ্ড রেলস্টেশনে থামে। ঢাকা থেকে রাত ১১ টায় যাত্রা শুরু করে পরদিন সকাল ৬ টা থেকে ৭ টার মধ্যে ট্রেনটি সীতাকুণ্ডে পৌঁছায়। আর যদি আন্তঃনগর ট্রেনে আসতে চান তবে ঢাকা থেকে চট্টগ্রামগামী যেকোন আন্তঃনগর ট্রেনে চড়ে ফেনী স্টেশনে নেমে সেখান থেকে ১০/১৫ টাকা অটো/রিক্সা ভাড়ায় মহিপাল বাসস্ট্যান্ড আসুন। মহিপাল বাসস্ট্যান্ড হতে ৫০-৮০ টাকা ভাড়ায় লোকাল বাসে সীতাকুণ্ড যেতে পারবেন।',
        data5:'সীতাকুণ্ডে কোথায় থাকবেন',
        data6:'সীতাকুণ্ড বাজারে কয়েকটি মাঝারি মানের আবাসিক হোটেল আছে। এছাড়া এখানে টেলি-কমিউনিকেশনের অধীনস্থ একটি ডাকবাংলো আছে। অনুমতি নিয়ে সেখানে থাকার চেষ্টা করতে পারেন। অতি সম্প্রতি সীতাকুণ্ড পৌরসভার ডি টি রোডে হোটেল সৌদিয়া নামে একটি আবাসিক হোটেল চালু হয়েছে। হোটেলটিতে ৮০০ থেকে ১৬০০ টাকায় কয়েক ধরণের রুম পাওয়া যায়। বুকিং দিতে ফোন করতে পারেন: 01991-787979, 01816-518119 নাম্বারে।এছাড়া রাত্রিযাপনের জন্য চট্টগ্রামে চলে যেতে পারেন। সেখানে বিভিন্ন মানের হোটেল রয়েছে। এদের মধ্যে হোটেল প‌্যারামাউন্ট, হোটেল এশিয়ান এসআর, হোটেল সাফিনা, হোটেল নাবা ইন, হোটেল ল্যান্ডমার্ক ইত্যাদি উল্লেখযোগ্য।',

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/3 sohosrodhara.jpg"),
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


class JoList_4 extends StatefulWidget {

  @override
  _JoList_4State createState() => _JoList_4State();
}

class _JoList_4State extends State<JoList_4> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'নাপিত্তাছড়া ঝর্ণা',
        data2:'অ্যাডভেঞ্চার প্রিয় পর্যটকদের কাছে নাপিত্তাছড়া ঝর্ণা (Napittachora Waterfall) বর্তমানে বেশ পরিচিত একটি নাম। নাপিত্তাছড়া ঝর্ণা চট্টগ্রাম জেলার মিরসরাইয়ের অবস্থিত একটি ঝর্ণা। ঝর্ণায় যাবার যে ঝিরিপথ আছে তা নাপিত্তাছড়া ট্রেইল নামে পরিচিত। এই ট্রেইলে আছে টিপরা খুম, কুপিটা খুম, বাঘবিয়ানী ঝর্না ও বান্দরখুম নামের আরও বেশ কিছু ঝর্ণা ও খুম। তুলনামূলক সহজ ট্রেইল হওয়ায় একটু কষ্ট করলে একদিনেই পুরো ট্রেইল হেঁটে উপভোগ করতে পারবেন।',
        data3:'কখন যাবেন',
        data4:'ঝর্ণায় যাবার সবচেয়ে ভাল সময় বর্ষাকাল। তখন ঝর্ণা গুলোতে বেশ পানি থাকে। তবে অতি বর্ষার সময় ফ্ল্যাশ ফ্লাডের আশঙ্কা থাকে। তাই বর্ষায় ঘুরতে গেলে সেই ব্যাপারেও সাবধান থাকা ভালো। এছাড়া বছরের যে কোন সময়ই যেতে পারবেন।',
        data5:'কিভাবে যাবেন',
        data6:'দেশের যেখান থেকেই আসুন এই ট্রেইলে যেতে প্রথমে আপনাকে চট্টগ্রামের মিরসরাই এর নয় দুয়ারী বাজার আসতে হবে। নয় দুয়ারী বাজার থেকে ৪০-৫০ মিনিট হেঁটে এই ট্রেইল শুরু করতে হবে। পুরো ট্রেইল হেঁটে দেখতে ৪-৫ ঘন্টা লাগবে, তবে তা নির্ভর করবে আপনি পাহাড়ি ও ঝিরিতে হাটতে কতটুকু অভ্যস্ত তাঁর উপর। চাইলে শুধু নাপিত্তাছড়া ঝর্ণা বা বান্দরখুম ঝর্না দেখেও ফিরে আসতে পারেন।',
        data7:'কোথায় খাবেন',
        data8:'নয়দুয়ারী বাজারে তেমন ভাল খাবার হোটেল নাই। তবে ট্রেইলে যাবার পথে একটা ছোট হোটেল আছে, সেখানে যদি আগে থেকে কি খাবেন তার অর্ডার দিয়ে যান তাহলে আপনাদের জন্যে রান্না করে রাখবে, তাহলে ফিরে এসে খাওয়া দাওয়া করতে পারবেন। এই সব স্থানীয় হোটেলে অনেক স্বল্পমূল্যে খাবার খেতে পারবেন তবুও প্রয়োজনে দাম যাচাই করে নিতে পারেন। এছাড়া সীতাকুণ্ডে আসলে সেখানের সৌদিয়া রেস্তোরা, আপন রেস্তোরা কিংবা আল আমিন রেস্টুরেন্টে পছন্দের খাবার খেতে পারবেন।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/4 napittachora.jpg"),
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




class JoList_5 extends StatefulWidget {

  @override
  _JoList_5State createState() => _JoList_5State();
}

class _JoList_5State extends State<JoList_5> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'ছাগলকান্দা ঝর্ণা',
        data2:'চট্টগ্রাম জেলার সীতাকুণ্ড উপজেলার কমলদহ ট্রেইলের অপরিচিত ঝর্ণাগুলোর মধ্যে ছাগলকান্দা ঝর্ণা (Chagolkanda Waterfalls) অন্যতম। অসাধারণ কমলদহ ঝর্ণা ট্রেইলে উপকূলে (Upstream) অবস্থিত ছোট-বড় আরো ৪টি ঝর্ণার সাথে দেখা মিলবে অপরূপ ছাগলকান্দা ঝর্ণার সৌন্দর্য। বড় দারোগার হাট থেকে ঢাকার দিকে মহাসড়ক ধরে এগুতে থাকলে প্রথমে একটি ইটখোলা দেখতে পাবেন। ইটখোলা পেরিয়ে ডান দিকের প্রথম মাটির রাস্তা ধরে এগিয়ে যেতে হবে। মাটির রাস্তা ধরে কিছুদূর যাওয়ার পর ঝিরিপথ পাবেন, ঝিরি ধরে মিনিট বিশেকের মত চলার পর কমলদহ ঝর্ণায় এসে পৌছাবেন। কমলদহ ঝর্ণা মূলত একটি ক্যাসকেড। ৩টি ধাপের এই ঝর্ণার পানি নিচে প্রবাহিত হচ্ছে। নিচ হতে ঝর্ণার শুধুমাত্র ১ ধাপ দেখা যায়।ছাগলকান্দা ঝর্ণা দেখার জন্য কমলদহ ঝর্ণার পাহাড়ের পিচ্ছিল পথ বেয়ে উপরে উঠতে হবে। প্রায় আধাঘন্টা হাঁটার পর দেখতে পাবেন রাস্তাটি ইংরেজী Y অক্ষরের মত ভাগ হয়ে দুইদিকে চলে গেছে। বাম দিকের রাস্তা ধরে কিছু দূর এগিয়ে যাওয়ার পর আবারো রাস্তার দুইভাগে উপস্থিত হবেন। এবারও হাতের বাম দিকের রাস্তা ধরে এগিয়ে যান। কিছু সময় হাঁটার পর কমলদহ ট্রেইলের ২য় ঝর্ণা ছাগলকান্দায় পৌঁছে যাবেন।',
        data3:'কিভাবে যাবেন',
        data4:'ঢাকা হতে ছাগলকান্দা ঝর্ণায় যেতে চাইলে প্রথমে চট্টগ্রামগামী বাসে চরে জনপ্রতি ৪০০-১২০০ টাকা ভাড়ায় সীতাকুন্ডের বড় দারোগারহাট বাজারে চলে আসুন। আর ট্রেনে করে যেতে চাইলে সবচেয়ে ভালো হয় ফেনী রেলওয়ে ষ্টেশন নেমে গেলে। ট্রেনের টিকেটের ভাড়া জনপ্রতি ২৩০-৬০০ টাকা। ফেনী রেলওয়ে ষ্টেশন থেকে লোকাল বাসে করে বড় দারোগাহাট বাজারে চলে আসতে পারবেন।বড় দারোগার হাট বাজার থেকে ঢাকার দিকে এগিয়ে গেলে একটা ইটখোলা পাবেন। এই ইটখোলা পার হয়ে ডানের মাটির রাস্তা ধরে কিছুদুর গেলে ঝিরি পথের দেখা পাওয়া যাবে। মূলত এই ঝিরি ধরেই কমলদহ ঝর্ণার দেখা পাওয়া যাবে। কমলদহ ঝর্ণা পার হয়ে ঝিরি ধরে উপরের দিকে গেলে ছাগলকান্দা ঝর্ণা পৌঁছে যাবেন।',
        data5:'কোথায় থাকবেন',
        data6:'পর্যটকদের থাকার জন্য মিরসরাইতে এখনো তেমন আবাসিক হোটেল ব্যবস্থা গড়ে উঠেনি তাই আপনাকে সীতাকুন্ড বাজারে অবস্থিত সাধারণ মানের আবাসিক হোটেলে রাত্রিযাপন করতে হবে। যোগাযোগ করতে পারেন হোটেল সাইমুনে, ভাড়া ৩০০-৫০০ টাকা। ফোন: ০১৮২৭৩৩৪০৮২, ০১৮২৫১২৮৭৬৭। হোটেল সৌদিয়া, ভাড়া ৮০০-১৬০০ টাকা। ফোন: ০১৯৯১-৭৮৭৯৭৯, ০১৮১৬-৫১৮১১৯। এছাড়া সিতাকুণ্ডে অবস্থিত সরকারী ডাকবাংলায় থাকার চেষ্টা করে দেখতে পারেন।',
        data7:'কোথায় খাবেন',
        data8:'সীতাকুন্ডে খাবার জন্য বেশ কয়েকটি হোটেল আছে। এদের মধ্যে আল আমীন হোটেলের খাবার মোটামুটি ভালো মানের।'



    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/5 chagolkanda.jpg"),
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




class JoList_6 extends StatefulWidget {

  @override
  _JoList_6State createState() => _JoList_6State();
}

class _JoList_6State extends State<JoList_6> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'ঝরঝরি ঝর্ণা, সীতাকুণ্ড',
        data2:'অ্যাডভ্যাঞ্চার প্রিয় ট্রাভেলারদের জন্য সীতাকুণ্ড অঞ্চলে রয়েছে অসাধারণ ঝরঝরি ঝর্ণা ট্রেইল। এই ট্রেইল ধরে প্রায় এক ঘণ্টা হাটলে সর্বপ্রথম যে ঝর্ণা চোখে পড়ে এর নাম ঝরঝরি ঝর্ণা (Jhorjhori Waterfall)। বাম দিক দিয়ে আরো উপরের দিকে যেতে থাকলে দেখা মিলে অনেক দারুন দারুন কিছু খুম এবং ক্যাসকেড। ঝরঝরি ঝর্ণার উপরের দিকে যাওয়া বেশ কঠিন ও কষ্টকর তাই বর্ষার শেষের দিকে যাওয়াই সবচেয়ে ভাল হয়।',
        data3:'ঝরঝরি ঝর্না যাওয়ার উপায়',
        data4:'ঢাকা থেকে বাসে করে মিরসরাই পার হয়ে পন্থিছিলা (Ponthichila) নামক বাজারে নামতে হবে। বাজার থেকে পূর্ব দিকে পায়ে হেঁটে রেললাইনের দিকে যাবেন। রেললাইন ধরে বাম দিকে ৪-৫ মিনিটের মত এগিয়ে গেলে ডান দিকে মাটির রাস্তা পাবেন। সেটি ধরে এগুতে থাকলে আপনি অল্প সময়েই কানি ঝিরির কাছে পৌঁছে যাবেন। প্রায় ৩০ মিনিট হাঁটালে হাতের বামে সরু আরো একটি ঝিরিপথ দেখতে পাবেন। এই পথে ৫-৭ মিনিট হাঁটার পর একটি পাহাড় অতিক্রম করে ডান দিকে এগিয়ে গেলে উপরে চন্দ্রনাথ মন্দির দেখতে পাবেন। এই ঝিরি পথে আরো ২০ মিনিট হাঁটলেই ঝরঝরি ঝিরি দেখতে পাবেন। ঝরঝরি ঝিরি ধরে ২০ মিনিটের মত সামনে গেলেই পাবেন ঝরঝরি ঝর্না। আর পন্থিছিলা থেকে ঝরঝরি ট্রেইল পর্যন্ত হেঁটে আসতে প্রায় ১ ঘন্টার মত সময় লাগে।',
        data5:'থাকা ও খাওয়া',
        data6:'সীতাকুন্ডে কিছু সাধারণ মানের হোটেল পাবেন। সীতাকুণ্ড বাজারে হোটেল সাইমুন নামে একটি হোটেল আছে, যেখানে ৩০০ থেকে ৭০০ টাকায় রুম পাবেন। অতি সম্প্রতি সীতাকুণ্ড পৌরসভার ডি টি রোডে হোটেল সৌদিয়া নামে একটি আবাসিক হোটেল চালু হয়েছে। হোটেলটিতে ৮০০ থেকে ১৬০০ টাকায় কয়েক ধরণের রুম পাওয়া যায়। বুকিং দিতে ফোন করতে পারেন 01991-787979, 01816-518119 নাম্বারে। আরো ভালো কোথাও থাকার জন্য আপনাকে চট্টগ্রাম চলে আসতে হবে। এছাড়া নয়দুয়ারি বাজারে খুঁজলে মধ্যম মানের কিছু হোটেল পাবেন। সীতাকুন্ডে খাবার জন্য বেশ কয়েকটি হোটেল আছে। এদের মধ্যে আল আমীন হোটেলের খাবার মোটামুটি ভালো মানের। আর যদি চট্টগ্রাম যান তবে এখানে সব ধরণের খাবার রেস্টুরেন্ট পাবেন।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/6 jhorjhori jorna.jpg"),
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




class JoList_7 extends StatefulWidget {

  @override
  _JoList_7State createState() => _JoList_7State();
}

class _JoList_7State extends State<JoList_7> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(
        data1:'শুভলং ঝর্ণা',
        data2:'রাঙ্গামাটি সদর হতে মাত্র ২৫ কিলোমিটার দূরত্বে শুভলং বাজারের পাশেই শুভলং ঝর্ণার অবস্থান। বাংলাদেশের অন্য সকল ঝর্ণার মত শুভলং ঝর্ণাতেও শুকনো মৌসুমে পানি খুব কম থাকে। বর্ষা মৌসুমে প্রায় ১৪০ ফুট উঁচু পাহাড় থেকে বিপুল জলধারা কাপ্তাই লেকে আছড়ে পড়ে। এছাড়া শুভলং ঝর্ণা দেখতে যাওয়ার পথের সৌন্দর্য্য আপনাকে আবেগময় করে তুলতে পারে। দুই পাহাড়ের মধ্য দিয়ে বয়ে যাওয়া লেক দেখে থাইল্যান্ড বলে ভ্রম হতে পারে!শুভলং ঝর্ণার সৌন্দর্য্য পর্যটকদের বিমোহিত করে। পাহাড়ের উপর থেকে পাথুরে মাটিতে ঝর্ণাধারা আছড়ে পড়ার অপূর্ব দৃশ্য ভাষায় প্রকাশ করার মত নয়। অতিরিক্ত কাপড় সাথে থাকলে ঝর্ণার শীতল পানিতে স্নান করে শরীর জুড়িয়ে নিতে পারেন। শুভলং ঝর্ণার কাছেই প্রায় ২০০০ ফুট উঁচু ‘শুভলং পাহাড়’ বা ‘টি এন্ড টি পাহাড়’ রয়েছে। পাহাড় চূড়ায় রয়েছে সেনাক্যাম্প ও একটি টিঅ্যান্ডটি টাওয়ার। পাহাড়ে ওঠার জন্য রয়েছে চমৎকার সিঁড়ি। পাহাড়ের উপর থেকে দেখলে মনে হবে সমস্ত রাঙ্গামাটি জেলা কাপ্তাই লেকের পানির উপর ভেসে আছে।',
        data3:'কিভাবে যাবেন',
        data4:'ঢাকার ফকিরাপুল মোড় ও সায়দাবাদে রাঙ্গামাটিগামী অসংখ্য বাস কাউন্টার রয়েছে। এই বাসগুলো সাধারণত সকাল ৮ টা থেকে ৯ টা এবং রাত ৮ টা ৩০ মিনিট থেকে রাত ১১ টার মধ্যে ঢাকা থেকে রাঙ্গামাটির উদ্দেশ্যে ছাড়ে। ঢাকা টু রাঙ্গামাটি এসি বাসের প্রতি সীট ভাড়া ১০০০ থেকে ১৬০০ টাকা। এছাড়া সকল নন-এসি বাসের ভাড়া ৭৫০ থেকে ৮০০ টাকার মধ্যে।',
        data5:'থাকা ও খাওয়া',
        data6:'শুভলং এলাকায় থাকা ও খাওয়ার জন্য কোন ভাল ব্যবস্থা নেই। তাই আপনাকে দিনে গিয়ে দিনেই রাঙ্গামাটি ফিরে আসতে হবে। প্রয়োজনে হালকা খাবার সাথে নিয়ে ভ্রমণ করুন। বোট নিয়ে যদি পেডা টিং টিং এ যান তাহলে সেখানে খেতে পারবেন।রাঙ্গামাটিতে বিভিন্ন মানের গেষ্ট হাউজ ও আবাসিক হোটেল রয়েছে। রাঙ্গামাটি শহরের পুরাতন বাস স্ট্যন্ড ও রিজার্ভ বাজার এলাকায় লেকের কাছাকাছি হোটেল ঠিক করার চেষ্টা করুন। তাহলে হোটেল থেকে কাপ্তাই লেকের পরিবেশ ও শান্ত বাতাস উপভোগ করতে পারবেন। এছাড়া কম খরচে থাকতে বোডিং এ যোগযোগ করতে পারেন। বোডিংগুলোতে থাকতে খরচ কম হলেও এগুলোর অবস্থা খুব একটা ভাল নয়। উল্লেখযোগ্য কিছু আবাসিক হোটেলের নামঃ',
        data7:'ভ্রমণ টিপস ও সতর্কতা',
        data8:'শুভলং ঝর্ণার পূর্ণ রূপ দেখতে হলে বর্ষাকাল বা তার পরের সময়ে যান।শীতকালে সাধারণত ঝর্ণায় খুব অল্প পানি থাকে।একসাথে দলগত ভাবে গেলে খরচ কমে যাবে।অফসিজনে ও ছুটির দিন ব্যাতিত গেলে খরচ কম হবে।ট্রলার/বোট রিজার্ভ করার সময় কি দেখবেন কোথায় যাবেন ভালো মত বলে নিন।রিজার্ভ করার সময় ঠিকমত দরদাম করে নিন।লেকের কাছাকাছি কোন হোটেল ঠিক করার চেষ্টা করুন।কোথাও কোথাও লেকের পানির গভীরতা অনেক, নামতে চাইলে মাঝিকে জিজ্ঞেস করে নিন।সাতার না জানলে সাথে লাইফ জ্যাকেট রাখুন।একদিনেই কমন স্পট গুলো ঘুরে বেড়ানো যায়।পরিবেশে ও জীববৈচিত্রের ক্ষতি হয় দয়া করে এমন কিছু করবেন না।স্থানীয় মানুষদের সাথে শালীন আচরণ করুন।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/7 shuvolong.jpg"),
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




class JoList_8 extends StatefulWidget {

  @override
  _JoList_8State createState() => _JoList_8State();
}

class _JoList_8State extends State<JoList_8> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'হাজাছড়া ঝর্ণা',
        data2:'হাজাছড়া ঝর্ণা বা শুকনাছড়া ঝর্ণা (Hazachora Waterfalls/Shuknachara Falls) নামে পরিচিত জলপ্রপাতটি পার্বত্য রাঙ্গামাটি জেলার বাঘাইছড়ি উপজেলার সাজেক ইউনিয়নের বাঘাইহাট এলাকায় অবস্থিত। আর স্থানীয় আদিবাসীরা ঝর্ণাটিকে চিত জুরানি থাংঝাং ঝর্ণা (মন প্রশান্তি ঝর্ণা) নামে ডাকেন। ঝর্ণাটি রাঙ্গামাটি জেলার অন্তর্গত হলেও খাগড়াছড়ি থেকে সহজেই ঝর্ণাটি দেখতে যাওয়া যায়। খাগড়াছড়ি জেলার দিঘীনালা উপজেলা থেকে হাজাছড়া যাওয়ার পথে প্রকৃতির অপূর্ব ক্যানভাস হৃদয় ছুঁয়ে যায়। মাইনী নদীর জলধারা, রাস্তার দু’পাশে আদিবাসীদের বসবাস, জুম চাষের ক্ষেত এবং সবুজে ঘেরা ঝিরিপথ অভিযাত্রীদের স্বাগতম জানায় হাজাছড়া ঝর্ণার রূপে অভিভূত হতে।',
        data3:'হাজাছড়া ঝর্ণা দেখতে কিভাবে যাবেন',
        data4:'বাংলাদেশের যেকোন প্রান্ত থেকে হাজাছড়া ঝর্ণা দেখতে যেতে চাইলে প্রথমে খাগড়াছড়ি আসতে হবে। রাজধানী ঢাকার সায়েদাবাদ, কমলাপুর, কলাবাগান এবং ফকিরাপুল থেকে সরাসরি খাগড়াছড়ি যাওয়ার বিভিন্ন বাস সার্ভিস রয়েছে। আপনার পছন্দ ও বাজেট অনুযায়ী শান্তি পরিবহন, এস আলম, সৌদিয়া অথবা শ্যামলী পরিবহন হতে যেকোন একটিকে ভ্রমণ সঙ্গী হিসাবে বেছে নিতে পারেন। বাসভেদে এসি/নন-এসি জনপ্রতি টিকেটের ভাড়া ৫২০ টাকা থেকে ৭০০টাকা। ছুটির দিন গুলোতে যেতে চাইলে আগে থেকেই টিকেট কেটে রাখা ভালো নয়তো পরে টিকেট পেতে ঝামেলা হতে পারে।চট্রগ্রামের কদমতলী থেকে সারাদিনে ৪ টি বিআরটিসি এসি বাস খাগড়াছড়ির পথে চলাচল করে, ভাড়া লাগে ২০০ টাকা। আর অক্সিজেন মোড় থেকে ১ ঘণ্টা পর পর শান্তি পরিবহনের (ভাড়া ১৯০টাকা) বাস চলাচল করে। চট্রগ্রাম থেকে বাসে করে খাগড়াছড়ি যেতে সময় লাগবে ৪-৫ ঘন্টা।',
    data5:'কোথায় খাবেন',
    data6:'হাজাছড়া ঝর্ণার আশেপাশে খাওয়া-দাওয়া করার কোন ব্যবস্থা নেই তাই সবচেয়ে ভাল হয় ঝর্ণায় যাওয়ার সময় শুকনো খাবার ও পর্যাপ্ত পানি নিয়ে যাওয়া। আর খাগড়াছড়ি শহরের কাছে পানখাই পাড়ায় রয়েছে ঐতিহ্যবাহী সিস্টেম রেস্টুরেন্ট। খাগড়াছড়ির ঐতিহ্যবাহী খাবার খেতে চাইলে আপনাকে এখানেই খেতে হবে। যোগাযোগ: 0371-62634, 01556-773493, 01732-906322। আর যদি আপনার হাতে সময় থাকে তবে কাছেই নিউজিল্যান্ড পাড়া থেকে ঘুরে আসতে পারেন।',
    data7:'কোথায় থাকবেন',
    data8:'হাজাছড়া ঝর্ণা দেখে রাত্রিযাপন করতে চাইলে আপনাকে খাগড়াছড়িতে থাকতে হবে। পর্যটকদের থাকার সুবিধার কথা বিবেচনা করে খাগড়াছড়িতে বেশকিছু আবাসিক হোটেল গড়ে তোলা হয়েছে। এদের মধ্যে পর্যটন মোটেল (0371-62084, 0371-62085), হোটেল শৌল্য সুবর্ণ (0371-61436), জিরান হোটেল (0371-61071), হোটেল লিবয়ত (0371-61220), চৌধুরী বাডিং (0371-61176), থ্রি ষ্টার (0371-62057), ফোর ষ্টার (0371-62240), উপহার (0371-61980), হোটেল নিলয় (01556-772206) ইত্যাদি উল্লেখযোগ্য।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/8 hajachora.jpg"),
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





class JoList_9 extends StatefulWidget {

  @override
  _JoList_9State createState() => _JoList_9State();
}

class _JoList_9State extends State<JoList_9> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'ধুপপানি ঝর্ণা',
        data2:'রাঙ্গামাটি জেলার বিলাইছড়ি উপজেলার ফারুয়া ইউনিয়নের ওড়াছড়িতে গেলে দেখা মিলে অনিন্দ্য সুন্দর ধুপপানি ঝর্ণা (Dhuppani Waterfall)। ২০০০ সালের দিকে এক বৌদ্ধ ধ্যান সন্ন্যাসী এখানে ধ্যান শুরু করেন, পরবর্তীতে স্থানীয় মানুষের মাধ্যমে এই ঝর্ণা সকলের কাছে পরিচিতি পায়। তঞ্চঙ্গ্যা শব্দ ধুপপানি ঝর্ণার মানে হচ্ছে সাদা পানির ঝর্ণা। ভূমি থেকে ধুপপানি ঝর্ণার উচ্চতা প্রায় ১৫০ মিটার। এই ঝর্ণার আসেপাশে রয়েছে হরিণ, বুনো শুকর, বনবিড়াল এবং ভাল্লুক সহ বেশ কিছু বন্য প্রাণী। প্রায় ২ কিলোমিটার দূর থেকে ধুপপানি ঝর্ণার পানি আছড়ে পড়ার শব্দ শোনা যায়।',
        data3:'ধুপপানি ঝর্ণা যাবার উপায়',
        data4:'ঢাকা থেকে রাঙ্গামাটি জেলার কাপ্তাই আসার অনেক বাস সার্ভিস রয়েছে। সুবিধাজনক সময়ে পছন্দের বাসে কাপ্তাই এসে লঞ্চঘাট থেকে ট্রলার দিয়ে বিলাইছড়ি যেতে ২ ঘন্টা ৩০ মিনিট সময় লাগে। ট্রলার রিজার্ভ নিলে ১০০০ থেকে ১৫০০ টাকা লাগবে। আর লোকাল ট্রলারে করে যেতে চাইলে কাপ্তাইঘাট থেকে সকাল ৮ টা ৩০ মিনিট, দুপুর ১ টা এবং ১ টা ৩০ মিনিটে ছেড়ে যাওয়া ট্রলারে জনপ্রতি ৫৫ টাকা ভাড়ায় যেতে পারবেন। বিলাইছড়ি বাজারে চাইলে খাবার খেয়ে নিতে পারেন। বিলাইছড়ি থেকে এবার ২ ঘন্টা দূরত্বের উলুছড়ি যেতে হবে। উলুছড়ি থেকে বাধ্যতামূলক একজন গাইড নিয়ে নিন, আলোচনা সাপেক্ষ্যে গাইড ফি ৫০০ টাকা লাগতে পারে।উলুছড়ি থেকে কোষা নৌকা করে পাহাড়ি ঢলের পানি পাড় হয়ে পায়ে হেটে ধুপপানি পাড়ায় পৌঁছাতে প্রায় ২ ঘন্টা ৩০ মিনিট ট্রেকিং করতে হবে। ট্রেকিং করতে খালি পায়ে যাবেন কিংবা ভাল মানের ট্রেকিং সু পড়ে নিবেন। ধুপপানি পাড়া থেকে ধুপপানি ঝর্নায় পৌঁছাতে ৩০ মিনিটের মত লাগে। ধুপপানি পাড়া থেকে পাহাড়ি ঢালের প্রায় ২০০ মিটার নিচে ধূপপানি ঝর্ণা অবস্থিত।',
        data5:'ধুপপানি ঝর্ণা দেখতে কোথায় থাকবেন',
        data6:'বিলাইছড়িতে রাত্রিযাপনের ব্যবস্থা আছে। ট্রলার রিজার্ভ করে গেলে হাসপাতাল ঘাটে ট্রলার থেকে নেমে নিরিবিলি বোর্ডিংয়ে উঠতে পারেন। এই বোর্ডিং এ ৩০০ থেকে ৫০০ টাকায় সিঙ্গেল এবং ডাবল বেডের রুম পাবেন। প্রয়োজনে নিরিবিলি বোর্ডিংয়ের প্রোপাইটর সঞ্জয় তালুকদারের ফোন নাম্বারে যোগাযোগ করতে পারেন। মোবাইল: 01827-722905, 01553-128673আর যদি থাকার ইচ্ছা না থাকে তবে অবশ্যই কাপ্তাই থেকে সকাল ৬ টার মধ্যে বিলাইছড়ির উদ্দেশ্যে রওনা দিতে হবে।',
        data7:'ধুপপানি ঝর্ণা দেখতে যাওয়ার কিছু পরামর্শ',
        data8:'ট্রেকিং এর জন্যে ভালো গ্রিপের জুতা ব্যবহার করুন।ধুপপানি ঝর্ণায় যাওয়ার সময় কিছু শুকনো খাবার সাথে করে নিয়ে যান।ট্রেকিং এর সময় সাবধানতা অবলম্বন করুন।স্থানীয় মানুষদের সাথে ভদ্র ও মার্জিত আচরণ করুন।ঝর্ণায় হৈ হল্লোর করা থেকে বিরত থাকুন।পাথুরে সবকিছুই পিচ্ছিল হয় অনেক, ট্রেকিং এর সময় ও ঝর্ণার আশেপাশে সাবধানে চলাফেরা করুন।পরিবেশের ক্ষতিহয় এমন কিছু করা থেকে বিরত থাকুন।বিলাইছড়ি যাওয়া আসার পথে বাধ্যতামূলকভাবে আলিখিয়াং সেনাবাহিনীর ক্যাম্পে পরিচয়পত্র দেখাতে হবে। তাই জাতীয় পরিচয়পত্র, জন্ম নিবন্ধনের সনদ, স্টুডেন্ট আইডি কার্ড অথবা যেকোন প্রতিষ্টানের ফটো আইডি কার্ড সাথে রাখুন।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/9 dhuppani.jpg"),
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




class JoList_10 extends StatefulWidget {

  @override
  _JoList_10State createState() => _JoList_10State();
}

class _JoList_10State extends State<JoList_10> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'শৈলপ্রপাত ঝর্ণা',
        data2:'শৈলপ্রপাত ঝর্ণা বান্দরবান জেলা শহর থেকে ৮ কিলোমিটার দূরে বান্দরবান-থানচি রোডের পাশে অবস্থিত। বাংলাদেশে অতিপরিচিত ঝর্ণা গুলোর মধ্যে শৈলপ্রপাত অন্যতম। পর্যটন নগরী বান্দরবানের কাছে হওয়ায় সারা বছরই পর্যটক সমাগমে মুখরিত থাকে স্বচ্ছ ও ঠান্ডা পানির এই ঝর্ণাটি। এ ঝর্ণার বিশেষ বৈশিষ্ট হচ্ছে সবসময় বহমান হীম শীতল পানির ধারা, যা শৈলপ্রপাতকে বান্দরবানের একটি আকর্ষণীয় পর্যটন স্থান হিসাবে করে নিয়েছে। এছাড়া এই ঝর্ণার পাশে পিকনিক করার জন্য রয়েছে আদর্শ পরিবেশ। পাহাড়, ঝর্ণা এবং গ্রামীণ জীবনযাত্রার মিতালী দেখতে আপনাকে অবশ্যই শৈলপ্রপাতে যেতে হবে।',
        data3:'কখন যাবেন ও কি দেখবেন',
        data4:'বাংলাদেশের যে কোন ঝর্ণার আসল সৌন্দর্য দেখার সবচেয়ে আদর্শ সময় হচ্ছে বর্ষা মৌসুম। বর্ষাকালেই ঝর্ণা পূরো যৌবন লাভ করে। অবশ্য শৈলপ্রপাত ঝর্ণা বছরের একেক সময় একেক সৌন্দর্য্য মেলে ধরে। তাই বর্ষাকাল ছাড়া অন্য সময়ে বান্দরবান গেলে শৈলপ্রপাতকে উপেক্ষা করা উচিত হবে না। তাছাড়া শৈলপ্রপাতকে উদ্দেশ্য করে আলাদা ভাবে বান্দরবানে যাওয়ার প্রয়োজন নেই। কারণ বান্দরবানের অন্যতম দর্শনীয় স্থান চিম্বুক বা নীলগিরি যাওয়ার পথে শৈলপ্রপাতের সামনে দিয়েই যেতে হয়। কাজেই সবচেয়ে ভালো হয় নীলগিরি বা চিম্বুক পাহাড় দেখতে যাবার সময় ভাড়া করা গাড়ি রাস্তার পাশে থামিয়ে শৈলপ্রপাত দেখে নেওয়া। আর যদি শুধুই শৈলপ্রপাত দেখতে চান তাহলে সেটাও করতে পারেন।',
        data5:'যাওয়ার উপায়',
        data6:'ঢাকার আবদুল্লাহপুর, আরামবাগ, কল্যাণপুর, সায়েদাবাদ ও গাবতলী থেকে এস. আলম, সৌদিয়া, সেন্টমার্টিন পরিবহন, ইউনিক, হানিফ, শ্যামলি, ডলফিন ইত্যাদি পরিবহনের বাস বান্দারবানের উদ্দেশ্যে ছেড়ে যায়। জনপ্রতি এসব বাসের ভাড়া যথাক্রমে নন এসি ৭০০-৮০০ টাকা ও এসি ১০০০-১৬০০ টাকা। ঢাকা থেকে বাসে বান্দরবান যেতে সময় লাগে ৮-১০ ঘন্টা।ট্রেনে যেতে চাইলে ঢাকা থেকে চট্রগ্রাম গামী সোনার বাংলা, সুবর্ণ এক্সপ্রেস, তূর্ণা নিশিতা, মহানগর গোধূলি এইসব ট্রেনে করে চট্রগ্রাম যেতে পারবেন। শ্রেনীভেদে ভাড়া ৩৪৫ থেকে ১২২৯ টাকা। এছাড়া ঢাকা থেকে আকাশ পথে সরাসরি চট্রগ্রাম আসতে পারবেন।চট্টগ্রামের বদ্দারহাট থেকে পূবালী ও পূর্বানী নামের দুটি বাদ বান্দারবানের উদ্দেশ্যে যাত্রা করে। এ দুটি বাসে জনপ্রতি ২২০ টাকা ভাড়া লাগে। চট্রগ্রামের ধামপাড়া বাস স্ট্যান্ড থেকে ২০০-৩০০ টাকা ভাড়ায় বাসে করে বান্দরবান আসতে পারবেন।',
    data7:'কোথায় থাকবেন',
    data8:'সাধারণত বেশীরভাগ পর্যটক শৈলপ্রপাত, চিম্বুক, নীলগিরি থেকে দিনে গিয়ে দিনেই বান্দরবান ফিরে আসেন। বান্দরবানে হলিডে ইন রিসোর্ট, হিল সাইড রিসোর্ট, হোটেল ফোর স্টার, হোটেল রিভার ভিউ ইত্যাদি সহ অসংখ্য রিসোর্ট, হোটেল, মোটল এবং রেস্টহাউজ রয়েছে, যেগুলোতে ৬০০ থেকে ৩ হাজার টাকায় সহজেই রাত্রিযাপন করতে পারবেন।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/10 shoilopropat.jpg"),
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




class JoList_11 extends StatefulWidget {

  @override
  _JoList_11State createState() => _JoList_11State();
}

class _JoList_11State extends State<JoList_11> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(


        data1:'ঋজুক ঝর্ণা',
        data2:'বান্দরবান জেলা সদর থেকে ৬৬ কিলোমিটার এবং রুমা বাজার থেকে ৫ কিলোমিটার দূরে সাঙ্গু নদীর পাড়ে ঋজুক ঝর্ণা (Rijuk Waterfall) অবস্থিত। নদীপথে রুমা বাজার থেকে থানছি যাওয়ার সময় এই চির তরুণ ঋজুক ঝর্ণার দর্শন মিলে। মার্মা ভাষায় এই ঝর্ণার নাম রী স্বং স্বং। প্রায় ৩০০ ফুট উচু পাহাড় হতে সারা বছর জলধারা বয়ে চলে। আর বর্ষায় স্রোতের তোড় এত বৃদ্ধি পায় যে তখন জলপ্রপাতের কাছে ঘেঁষতে বড় ইঞ্জিনের নৌকা নিয়েও রীতিমত হিমশিম খেতে হয়। বছরজুড়ে বহমান জলের ধারা আর চারপাশের আদিম বুনো সবুজের সৌন্দর্য ঋজুক ঝর্ণাকে দিয়েছে প্রকৃতির এক অপার্থিব নির্মলতা।শুধুমাত্র ঋজুক নয়, সৌন্দর্যের বেলায় সাঙ্গুও কম যায় না। বর্ষাকাল ছাড়া বছরের অন্য সময় সাঙ্গু নদীতে পানি কম থাকে। পরিস্কার টলটলে পানির নিচে বালি ও ছোট ছোট নুড়িপাথরের রাজত্ব পরিষ্কার দেখা যায়। সাঙ্গুর বাকে বাকে কোথাও কোথাও পাহাড় ভেদ করে বেড়িয়ে আসে ফসলের জমি। ঋজুকের বিপরীত পাশে মারমাদের একটা পাড়া রয়েছে। এই পাড়ার নাম নতুন ঋজুকপাড়া। আবার পাহাড়ের উপর বমদের পাড়াড় নাম ঋজুকপাড়া। হাতে সময় থাকলে ঋজুক ঝর্ণা দেখে আদিবাসী জীবনধারার সাথে পরিচিত হতে পারেন। মারমারা আতিথেয়তা ও আন্তরিকতায় একেবারে তুলনাহীন।',
    data3:'কিভাবে যাবেন',
    data4:'ঋজুক ঝর্ণা দেখতে চাইলে আপনাকে অবশ্যই প্রথমে বান্দরবান শহর আসতে হবে। রাজধানী ঢাকার বিভিন্ন স্থান থেকে শ্যামলি, হানিফ, ইউনিক, এস আলম, ডলফিন ইত্যাদি বেশকিছু পরিবহনের বাসে বান্দরবান যেতে পারবেন। ঢাকা থেকে বাসে বান্দরবান যেতে সময় লাগে ৮-১০ ঘন্টা। বান্দরবান শহর পৌঁছে লোকাল বাস, জীপ/চাঁন্দের গাড়িতে চড়ে চলে যান রুমা বাজার। রুমা বাজার থেকে পায়ে হেটে ট্রাকিং করে কিংবা ইঞ্জিন চালিত নৌকা ভাড়া নিয়ে ঋজুক ঝর্ণা দেখতে যেতে পারবেন।',
    data5:'কোথায় থাকবেন',
    data6:'রুমা বাজারে হোটেল হিলটনে রাত্রিযাপন করতে পারেন। আর বান্দরবান শহরে হলিডে ইন রিসোর্ট, হোটেল ফোর স্টার, হিলসাইড রিসোর্ট, হোটেল রিভার ভিউ, হোটেল থ্রি স্টার ইত্যাদি আবাসিক হোটেল রয়েছে।',
    data7:'ঋজুক ঝর্ণা ভ্রমণ পরামর্শ',
    data8:'হাফ প্যান্ট, স্যান্ডেল/ট্রাকিং সু, ক্যাপ গামছা, রেইন কোট, ফাস্ট এইড ইত্যাদি সাথে পরিবহন করুন। রুমা বাজার থেকে নিবন্ধিত গাইড নিন। আর গাইডের সাথে আগে থেকেই খরচের বেপারে সবকিছু আলোচনা করে নিন।'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/11 rijuk jhorna.jpg"),
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





class JoList_12 extends StatefulWidget {

  @override
  _JoList_12State createState() => _JoList_12State();
}

class _JoList_12State extends State<JoList_12> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'চিংড়ি ঝর্ণা',
        data2:'চট্টগ্রাম থেকে পাহাড়ীকন্যা বান্দরবান ৯২ কিলোমিটার দক্ষিণ পূর্বে অবস্থিত। ৪৪৭৯ বর্গ কিলোমিটার আয়তনের পাহাড়ীকন্যা বান্দরবানে পাহাড় ছাড়াও রয়েছে অসংখ্য ছোট বড় ঝর্ণা। তেমনি অপরূপ সুন্দর একটি ঝর্ণা হচ্ছে চিংড়ি ঝর্ণা (Chingri Jhorna)। এই ঝর্ণায় এক সময় প্রচুর চিংড়ি পাওয়া যেত বলেই ঝর্ণার এমন নামকরণ। বগালেক থেকে কেওক্রাডং যাওয়ার পথে ৩০-৪০ মিনিট হাটলে চিংড়ি ঝর্ণার দেখা পাবেন।',
        data3:'উপযুক্ত সময়',
        data4:'যে কোন ঝর্ণার পূর্ণ রূপ পাওয়া যায় বর্ষাকালে বা তার আশপাশের সময়ে। তখন ঝর্ণা গুলোতে পানিতে পরিপূর্ণ থাকে। তবে আপনি চাইলে যে কোন সময়ই যেতে পারবেন এই ঝর্ণায়। অতি বর্ষার অনেক সময় পাহাড় ধ্বস হয়, তাই বর্ষাকালে গেলে সেই ব্যাপারে খোঁজ নিয়ে যাওয়াটাই ভাল। এছাড়া চিংড়ি ঝর্ণা যেহেতু বগালেকের আছে এবং কেওক্রাডং যাবার পথে পরে, তাই আপনি যদি বগালেক ভ্রমনে যান তাহলে একটু কষ্ট করে চিংড়ি ঝর্নাও দেখে আসতে পারেন। অথবা কেওক্রাডং ভ্রমণে আপনার পথের মধ্যেই পরবে এই মায়াবী বুনো ঝর্না।',
        data5:'কোথায় থাকবেন',
        data6:'বগালেক এসে এক রাত না থাকাটা বোকামি হবে। আপনি যদি চিংড়ি ঝর্ণা দেখতে আসেন, তবে অবশ্যই এমনভাবে পরিকল্পনা করবেন যেন বগালেকে এক রাত থাকা হয়। সাধারণত পর্যটকগন বগালেকে বা কেওক্রাডং এর উদ্দেশ্যেই বেড়াতে আসেন। সেই ক্ষেত্রে চিংড়ি ঝর্ণা দর্শন বোনাস হিসেবেই পাওয়া হয়।বগালেকে থাকার জন্যে আদিবাসীদের বেশ কিছু সুন্দর কটেজ আছে। লেকের পাড় ঘেঁষে মনোরম পরিবেশের এই কটেজ গুলোতে থাকতে আপনার খরচ হবে ১০০-২৫০ টাকা। খুব আহামরি সুযোগ সুবিধা না থাকলেও পাহাড়ি পরিবেশে লেকের পাশে সাজানো এই কটেজ গুলোতে রাত্রি যাপন আপনার জন্যে অবশ্যই স্মরণীয় হয়ে থাকবে। এক রুমের কটেজে ৫-৬ জন থাকা যাবে। এছাড়া কাপল কিংবা মহিলাদের জন্য চাইলে আলাদা কটেজের ব্যবস্থা করা যায়। আগে থেকে কোন পছন্দ থাকলে যাবার সময় গাইডকে বললে সেই ঠিক করে রাখবে কটেজ। কিংবা গিয়েও ঠিক করতে পারবেন।',
        data7:'কি খাবেন',
        data8:'রুমা বাজারে খাবার জন্য মুটামুটি বেশকিছু হোটেল পাবেন। বগালেকে খাওয়া দাওয়ার ব্যবস্থা আদিবাসী ঘরেই করতে হবে। সাধারণত ১০০-২০০ টাকার খাবার প্যাকেজ পাওয়া যায়। ভাত, ডিম, আলুভর্তা, পাহাড়ি মুরগি দিয়েই হয় খাবারের আয়োজন। এই জন্যে আগে থেকেই বলে রাখতে হবে কি খাবেন ও কত জন খাবেন। পৌঁছেই খাবার খেতে চাইলে যাবার সময়ই গাইডের সাহায্যে বলে রাখতে পারবেন। কটেজ গুলোতে আছে বারবিকিউ করার ব্যবস্থা, পাহাড়ী মুরগী কিনে লেক পাড়ে বসে উপভোগ করতে পারেন ভিন্ন পরিবেশের এই আয়োজন।'
    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/12 chingri.jpg"),
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




class JoList_13 extends StatefulWidget {

  @override
  _JoList_13State createState() => _JoList_13State();
}

class _JoList_13State extends State<JoList_13> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1:'রিসাং ঝর্ণা',
        data2:'রিসাং ঝর্ণা খাগড়াছড়ি জেলার মাটিরাঙ্গা উপজেলার সাপমারা গ্রামে অপূর্ব সুন্দর রিসাং ঝর্ণার অবস্থান। স্থানীয়দের কাছে রিসাং ঝর্ণা (Risang Jorna) ‘সাপ মারা রিসাং ঝর্ণা’ নামে পরিচিত। মারমা শব্দ রিছাং-এর অর্থ কোন উঁচু স্থান হতে জলরাশি গড়িয়ে পড়া। রিছাং ঝর্ণার অপর নাম তেরাং তৈকালাই। আলুটিলা পর্যটন কেন্দ্র হতে এই ঝর্ণার দূরত্ব মাত্র ৩ কিলোমিটার। আর খাগড়াছড়ি-ঢাকা সড়ক ধরে ১ কিলোমিটার এগিয়ে গিলেই রিসাং ঝর্ণা দেখতে পাওয়া যায়।রিসাং ঝর্ণা থেকে মাত্র ২০০ গজ ভেতরে আরও একটি ঝর্ণা রয়েছে। যা রিছাং ঝর্ণা দুই বা ‘অপু ঝর্ণা’ নামে পরিচিতি লাভ করেছে। ভ্রমণকারীরা যেন সহজে ঝর্ণায় পৌঁছাতে পারেন সেজন্য এখানে পাকা সিঁড়িপথ তৈরি করা হয়েছে। প্রায় ৩০ মিটার উচ্চতার পাহাড় থেকে পানি আছড়ে পড়ার মনোরম দৃশ্য ঘন্টার পর ঘন্টা উপভোগ করার মত। আর চাইলে রিসাং ঝর্ণার জলে অনায়াসেই শরীর জুড়িয়ে নিতে পারবেন।',
    data3:'কিভাবে যাবেন',
    data4:'খাগড়াছড়ি থেকে সরাসরি চান্দের গাড়ি বা সিএনজি ভাড়া নিয়ে রিসাং ঝর্ণা দেখতে যেতে পারবেন। তবে সেক্ষেত্রে ঝর্ণা থেকে প্রায় ৫০০ মিটার দূরে নেমে বাকি পথ হেটে যেতে হবে।এছাড়া রিসাং ঝর্ণা দেখতে হলে প্রথমে খাগড়াছড়ি সদর থেকে লোকালে বাস বা চান্দের গাড়িতে চড়ে ঢাকার পথে ১০ কিলোমিটার দূরত্বে অবস্থিত আলুটিলা গুহার সামনে চলে আসুন। আলুটিলা থেকে পরের গন্তব্য প্রায় দুই কিলোমিটার দূরের হৃদয় মেম্বারের এলাকা। আলুটিলা থেকে হৃদয় মেম্বারের এলাকায় যেতে লোকাল বাসের ভাড়া জনপ্রতি ৫ টাকা। হৃদয় মেম্বারের এলাকা থেকে দুই কিলোমিটার পায়ে হেটে বা বাইকে চড়ে রিছাং ঝর্ণায় যেতে হয়। শুধুমাত্র যাওয়ার জন্য জনপ্রতি বাইকের ভাড়া ৫০ টাকা, আর ফিরে আসার ভাড়া জনপ্রতি ১০০ টাকা।',
    data5:'কোথায় খাবেন',
    data6:'খাগড়াছড়ি শহরের শাপলা চত্বর এবং বাস স্ট্যান্ড এলাকায় বেশ কিছু রেস্টুরেন্ট রয়েছে। এছাড়া পানথাই পাড়ায় অবস্থিত ‘সিস্টেম রেস্তোরা’-তে কফি, হাসের কালাভূনা, বাশকুড়ুল এবং ঐতিহ্যবাহী পাহাড়ি খাবারের স্বাদ নিতে পারেন।',
    data7:'কোথায় থাকবেন',
    data8:'পর্যটন মোটেল: শহরের চেঙ্গী নদী পাড়ে অবস্থিত এই মোটেলের দুই বেডের এসি রুম ভাড়া ২১০০ টাকা এবং নন এসি রুম ভাড়া ১৩০০ টাকা। যোগাযোগ: ০৩৭১-৬২০৮৪৮৫হোটেল গাইরিং: খাগড়াছড়ি শহরে অবস্থিত এসি, নন এসি, ভিআইপি এসি ও গ্রুপ রুমের সুবিধা সহ শ্রেণী অনুযায়ী ভাড়া ১০০০ থেকে ৩০০০ টাকা। যোগাযোগ: ০৩৭১-৬১০৪১, ০১৮১৫-১৬৩১৭৩অরণ্য বিলাস: শহরের নারিকেল বাগান অবস্থিত এই হোটেলে টুইন বেড এসি ২৫০০ টাকা, কাপল এসি ২০০০ টাকা, সিঙ্গেল বেড এসি ১৫০০ টাকা, টুইন নন এসি ২০০০ টাকা এবং কাপল নন এসি ১৫০০ টাকা ভাড়া । যোগাযোগ: ০১৮৩৮-৪৯৭২৫৭গিরি থেবার: খাগড়াছড়ি ক্যন্টনমেন্টের ভিতরে অবস্থিত। ভিআইপি এসি রুম ভাড়া ৩০৫০ টাকা। এসি ডাবল রুম ভাড়া ২০৫০ টাকা। সিংগেল রুম যার ভাড়া ১২০০ টাকা। যোগাযোগ: ০১৮৫৯-০২৫৬৯৪হোটেল ইকো ছড়ি ইন: যোগাযোগ: ০৩৭১-৬২৬২৫ , ৩৭৪৩২২৫'


    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/12 risang.jpg"),
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




class JoList_14 extends StatefulWidget {

  @override
  _JoList_14State createState() => _JoList_14State();
}

class _JoList_14State extends State<JoList_14> {
  @override
  Widget build(BuildContext context) {
    return buildScaffold(

        data1: 'মাধবকুন্ড জলপ্রপাত',
        data2: 'মাধবকুন্ড জলপ্রপাত (Madhabkunda Waterfall) মৌলভীবাজার জেলার বড়লেখা উপজেলায় অবস্থিত। কিছু বছর আগেও মাধবকুন্ড ছিল বাংলাদেশের জলপ্রপাত প্রেমী পর্যটকদের কাছে একমাত্র আকর্ষন। বর্তমানে বাংলাদেশে আরো বেশ কিছু ঝর্ণা আবিষ্কৃত হয়েছে। তবু পর্যটকদের কাছে মাধবকুন্ড ঝর্ণার আবেদন একটুও কমেনি। সরকারী উদ্যোগে এখানে গড়ে তোলা হয়েছে বাংলাদেশ পর্যটন কর্পোরেশনের রেস্টহাউজ ও রেস্টুরেন্ট এবং ২৬৭ একর এলাকাকে নিয়ে ২০০১ সালে মাধবকুন্ড ইকোপার্ক প্রতিষ্ঠা করা হয়েছে। মাধবকুন্ড ইকোপার্কের মেইন গেইট থেকে প্রায় অর্ধ কিলোমিটার পথ হেটে গেলে মাধবকুন্ড ঝর্ণার দেখা মিলবে। অনিন্দ্য সুন্দর এই জলপ্রপাত প্রায় ১৬২ ফুট উঁচু। মাধবকুন্ড জলপ্রপাতের কাছে পরিকুন্ড নামে আরো একটি ঝর্ণা আছে। ঝিরি ধরে ১০-১৫ মিনিট হেঁটে গেলেই সেই ঝর্ণার কাছে যাওয়া যায়। মাধবকুন্ড ইকোপার্ক ঘুরে দেখতে বেশ উপভোগ্য।',
        data3: 'মাধবকুন্ড ইকোপার্ক যাবার উপায়',
        data4: 'ঢাকা থেকে বাসে গেলে সবচেয়ে সহজ পথ হবে আপনি বিয়ানীবাজার গামী শ্যামলী পরিবহন অথবা এনা পরিবহনে করে সরাসরি কাঠালতলী বাজার নেমে গেলে। সেখান থেকে রিসার্ভ সিএনজি (১৫০-১৮০) টাকা বা লোকাল সিএনজি (জনপ্রতি ২০-২৫) টাকা ভাড়া দিয়ে মাধবকুন্ড থেকে পারবেন।',
        data5: 'কোথায় থাকবেন',
        data6: 'মাধবকুন্ডে থাকার জন্য জেলা পরিষদের ২টি বাংলো ও ২টি আবাসিক হোটেল রয়েছে। অগ্রিম বুকিং দিয়ে থাকতে পারবেন সেখানে। তবে সবচেয়ে ভালো হয় সিলেট, মৌলভীবাজার বা শ্রীমঙ্গলে রাত্রি যাপন করলে এতে পরদিন যেকোন জায়গায় আপনার যাত্রা সহজ হবে। আর সেসব জায়গায় থাকার অনেক ব্যবস্থা আছে। আপনি আপনার পছন্দমত হোটেল বা কটেজে রাত্রিযাপন করতে পারবেন।',
        data7: 'কোথায় খাবেন',
        data8: 'মাধবকুণ্ডে মাঝারি মানের রেস্টুরেন্ট আছে তবে সেখানে খাবারের দাম একটু বেশী। তাই প্রয়োজনে নিজেদের খাবার বাইরে থেকে কিনে নিয়ে যেতে পারেন কিংবা সিলেট ফিরে জিন্দাবাজার এলাকায় পানসী, পাঁচ ভাই কিংবা পালকি রেস্টুরেন্টের প্রায় ৩০ রকম ভর্তা চেখে দেখতে পারেন। মৌলভীবাজার বা শ্রীমঙ্গল শহরেও অনেক মানের খাবার হোটেল আছে। আপনার পছন্দমত কোন হোটেল থেকে খেয়ে নিতে পারবেন।'

    );
  }



  Scaffold buildScaffold({required String data1 , required String data2,required String data3, required String data4 , required String data5,required String data6,required String data7 , required String data8}) {
    return Scaffold(
      backgroundColor: bcolor,

      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children:[
            Image.asset("images/jorna/14 madhobkundo.jpg"),
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






