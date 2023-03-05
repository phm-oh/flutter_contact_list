import 'package:flutter/material.dart';
import 'package:flutter_contact_list/contact.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Contact List',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
//---------------------------------------
//  class MyHomePage extends StatefulWidget {
//    const MyHomePage({super.key});

//    @override
//    State<MyHomePage> createState() => _MyHomePageState();
//  }

//  class _MyHomePageState extends State<MyHomePage> {                           //ep1-1 ขึ้นโครงสร่สง
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: Column(
//           children: [

//           ]),
//      );
//    }
//  }

//------------------------------------------------------

//   class MyHomePage extends StatefulWidget {
//    const MyHomePage({super.key});

//    @override
//    State<MyHomePage> createState() => _MyHomePageState();
//  }

//  class _MyHomePageState extends State<MyHomePage> {

//    @override
//    Widget build(BuildContext context) {

//     //  var  textwidget = [];
//     List<Widget> textWidget = [];
//     for (var i = 0;i<10;i++) {                     //ep1-2 ใช้ dart สร้างข้อมูลแบบไดนามิก
//      var widget = Text('$i');
//      textWidget.add(widget);
//    }

//      return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: Column(
//           children: textWidget,
//           ),
//      );
//    }
//  }

//-----------------------------------------------------------------

//   class MyHomePage extends StatefulWidget {
//    const MyHomePage({super.key});

//    @override
//    State<MyHomePage> createState() => _MyHomePageState();
//  }

//  class _MyHomePageState extends State<MyHomePage> {

//    List<Widget>  generateText(int count){                 //ep1-3  สร้าง function การทำงาน
//       //  var  textwidget = [];
//           List<Widget> textWidget = [];

//           for (var i = 0;i< count;i++) {
//           var widget = Text('${i+1}');
//           textWidget.add(widget);
//         }

//       return textWidget;
//    }

//    @override
//    Widget build(BuildContext context) {

//      return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: Column(
//           children: generateText(16),
//           ),
//      );
//    }
//  }

//----------------------------------------------------------------

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Widget> generateText(int count) {
//     //  var  textwidget = [];
//     List<Widget> textWidget = [];
//                                                                        //1-4เปลี่ยนจาก text เป็น listile
//     for (var i = 0; i < count; i++) {
//       var widget =  ListTile(
//         title: Text('${i + 1}'),
//         subtitle: Text('0666666666'),
//       )
//       ;
//       textWidget.add(widget);
//     }

//     return textWidget;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: ListView(
//           children: generateText(8),
//         ));
//   }
// }

//----------------------------------------

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {


//   List<Widget> generateText(int count) {
//     //  var  textwidget = [];
//     List<Widget> textWidget = [];
//                                                                     //ep1-5 เพิ่ม card ให้ดูสวย
//     for (var i = 0; i < count; i++) {
//       var widget = Card(
//         color: Color.fromRGBO(170, 219, 245, 0.494),
//         child: ListTile(
//           title: Text('${i + 1}'),
//           subtitle: Text('0666666666'),
//         ),
//       );
//       textWidget.add(widget);
//     }

//     return textWidget;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: ListView(
//           children: generateText(8),
//         ));
//   }
// }

//----------------------------------------

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {


//   // List<Widget> generateText(int count) {
//   //   //  var  textwidget = [];
//   //   List<Widget> textWidget = [];
//   //                                                                   
//   //   for (var i = 0; i < count; i++) {
//   //     var widget = Card(
//   //       color: Color.fromRGBO(170, 219, 245, 0.494),
//   //       child: ListTile(
//   //         title: Text('${i + 1}'),
//   //         subtitle: Text('0666666666'),
//   //       ),
//   //     );
//   //     textWidget.add(widget);
//   //   }

//   //   return textWidget;
//   // }

//   @override
//   Widget build(BuildContext context) {                          //ep1-6 ใช้ List Builder แทน function
//     return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: ListView.builder(itemCount: 6,itemBuilder: (BuildContext context, int index) { 
//               return const Card(
//                 child: ListTile(
//                   title: Text("phanumet Choompun"),
//                   subtitle: Text("0616691964"),
//                 ),

//               );
//          },)
//         );
//   }
// }

//------------------------------------------------------

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//    late List<contact> contactData =[
//       contact('oh-phm','0629915669'),
//       contact('phanumet choompun','0629915669')
//    ] ;

//   // late int count = contactData.length;
   

//   @override
//   Widget build(BuildContext context) {                          //ep1-7 สร้าง class contact
//     return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: ListView.builder(itemCount: contactData.length,itemBuilder: (BuildContext context, int index) { 
              
//               contact data = contactData[index];
              
//               return  Card(
//                 child: ListTile(
//                   title: Text(data.name),
//                   subtitle: Text(data.phonenumber),
//                 ),

//               );
//          },)
//         );
//   }
// }

//------------------------------------------------------


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//    late List<contact> contactData =[
//       contact('oh-phm','0629915669'),
//       contact('phanumet choompun','0629915669'),
//       contact('oh-phm','0629915669'),
//       contact('phanumet choompun','0629915669'),
//       contact('oh-phm','0629915669'),
//       contact('phanumet choompun','0629915669'),
//    ] ;

//   // late int count = contactData.length;
   

//   @override
//   Widget build(BuildContext context) {                          //ep1-8 เพิ่มรูปภาพ
//     return Scaffold(
      
//         backgroundColor: Color.fromRGBO(196, 166, 223, 1),
//         appBar: AppBar(
//           title: Center(child: Text('My Contact List')),
//         ),
//         body: ListView.builder(itemCount: contactData.length,itemBuilder: (BuildContext context, int index) { 
              
//               contact data = contactData[index];
              
              
//               return  Card(
//                 child: ListTile(
//                   leading: Image.asset("assets/img_profile/$index.jpg"),
//                   title: Text(data.name,
//                   style:TextStyle(
//                     color: Color.fromRGBO(107, 118, 6, 1)
//                   ) ,),
//                   subtitle: Text(data.phonenumber,
//                   style: TextStyle(
//                     color: Colors.brown
//                   ),),
//                   trailing: Icon(Icons.auto_stories_sharp) ,
//                 ),

//               );
//          },)
//         );
//   }
// }

//------------------------------------------------------------------

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   late List<contact> contactData =[
      contact('oh-phm','0629915669'),
      contact('phanumet choompun','0629915669'),
      contact('oh-phm','0629915669'),
      contact('phanumet choompun','0629915669'),
      contact('oh-phm','0629915669'),
      contact('phanumet choompun','0629915669'),
   ] ;

  // late int count = contactData.length;
   
   Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }



  @override
  Widget build(BuildContext context) {                          //ep1-9 ontab  --> url launcher
    return Scaffold(
      
        backgroundColor: Color.fromRGBO(196, 166, 223, 1),
        appBar: AppBar(
          title: Center(child: Text('My Contact List')),
        ),
        body: ListView.builder(itemCount: contactData.length,itemBuilder: (BuildContext context, int index) { 
              
              contact data = contactData[index];
              
              
              return  Card(
                child: ListTile(
                  leading: Image.asset("assets/img_profile/$index.jpg"),
                  title: Text(data.name,
                  style: const TextStyle(
                    color:  Color.fromRGBO(67, 6, 66, 1)
                  ) ,),
                  subtitle: Text(data.phonenumber,
                  style: const TextStyle(
                    color: Colors.brown
                  ),),
                  trailing: const Icon(Icons.call) ,
                  onTap: () {

                    setState(() {
                        _makePhoneCall(data.phonenumber);
                    });
                    
                  },
                  splashColor: Colors.redAccent,
                  iconColor: Colors.deepPurpleAccent,
                ),

              );
         },)
        );
  }
}