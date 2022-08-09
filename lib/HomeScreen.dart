// ignore_for_file: prefer_const_constructors
// Must begin with lower-case character!
import 'package:flutter/material.dart';
import 'package:investments_app/constants.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
   if (kIsWeb){
    
   }
   else{

   }

    Size deviceSize = MediaQuery.of(context).size;

    TextStyle headStyle = TextStyle(
        color: Color.fromARGB(255, 51, 51, 51),
        fontWeight: FontWeight.w800,
        fontSize: 16);
    TextStyle subStyle = TextStyle(
        color: Color.fromARGB(255, 56, 56, 56),
        fontWeight: FontWeight.w600,
        fontSize: 12);

    return Scaffold(
      appBar: newAppbar(),
      body: Center(
          child: mobileView(
              headStyle: headStyle,
              subStyle: subStyle,
              deviceSize: deviceSize)),
    );
  }
}

class mobileView extends StatelessWidget {
  const mobileView({
    Key? key,
    required this.headStyle,
    required this.subStyle,
    required this.deviceSize,
  }) : super(key: key);

  final TextStyle headStyle;
  final TextStyle subStyle;
  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(children: [
          MainContainer(
              headText1: "64,00,000",
              headText2: "25,20,000",
              headText3: "",
              headText4: "1,00,000",
              headStyle: headStyle,
              subStyle: subStyle,
              deviceSize: deviceSize),
          MainContainer(
              headText1: "1,00,000",
              headText2: "20,000",
              headText3: "",
              headText4: "10,000",
              headStyle: headStyle,
              subStyle: subStyle,
              deviceSize: deviceSize),
          MainContainer(
              headText1: "12,000",
              headText2: "5,20,000",
              headText3: "",
              headText4: "12,00,000",
              headStyle: headStyle,
              subStyle: subStyle,
              deviceSize: deviceSize),
          MainContainer(
              headText1: "6,00,000",
              headText2: "1000",
              headText3: "",
              headText4: "2,00,000",
              headStyle: headStyle,
              subStyle: subStyle,
              deviceSize: deviceSize),
          MainContainer(
              headText1: "4,00,000",
              headText2: "25,20,000",
              headText3: "",
              headText4: "3,00,000",
              headStyle: headStyle,
              subStyle: subStyle,
              deviceSize: deviceSize)
        ]),
      ),
    );
  }
}

//This is the main container that

class MainContainer extends StatelessWidget {
  const MainContainer(
      {Key? key,
      required this.headStyle,
      required this.subStyle,
      required this.deviceSize,
      required this.headText1,
      required this.headText2,
      required this.headText3,
      required this.headText4})
      : super(key: key);

  final TextStyle headStyle;
  final TextStyle subStyle;
  final Size deviceSize;
  final String headText1, headText2, headText3, headText4;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 8, 5),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mutual Funds",
                    style: headStyle,
                  ),
                  Text(
                    "Portfolio Performance",
                    style: subStyle,
                  )
                ],
              ),
              width: double.infinity,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                subSection(
                  headStyle: headStyle,
                  subStyle: subStyle,
                  headText: headText1,
                  subText: "Gain/loss",
                ),
                subSection(
                  headStyle: headStyle,
                  subStyle: subStyle,
                  headText: headText2,
                  subText: "Gain/loss",
                ),
                subSection(
                  headStyle: headStyle,
                  subStyle: subStyle,
                  headText: headText3,
                  subText: "",
                ),
                subSection(
                  headStyle: headStyle,
                  subStyle: subStyle,
                  headText: headText4,
                  subText: "Gain/loss",
                )
              ],
            ),
          ),
        )
      ]),
      
      width: deviceSize.width * 0.9,
      height: deviceSize.height * 0.22,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Color.fromARGB(255, 213, 213, 213))
          ],
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}

class subSection extends StatelessWidget {
  const subSection({
    Key? key,
    required this.headStyle,
    required this.subStyle,
    required this.headText,
    required this.subText,
  }) : super(key: key);

  final TextStyle headStyle;
  final TextStyle subStyle;
  final String headText, subText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "$headText",
            style: headStyle,
          ),
          Text(
            "$subText",
            style: subStyle,
          )
        ],
      ),
    );
  }
}

AppBar newAppbar() {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    backgroundColor: primeColor,
    title: Text("Investments"),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
    ],
  );
}
