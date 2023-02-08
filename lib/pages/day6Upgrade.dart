import 'package:flutter/material.dart';
import 'package:tujuh_hari/theme.dart';
import 'package:tujuh_hari/pages/day6Pro.dart';


class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int selectedIndex = -1;
  Widget option (int index, String image, String feature ,String greyDescription, String purpleDescription){
    return GestureDetector(
      onTap:(){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(17),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
              color : selectedIndex == index? UpgradeStrokeBorderColor : UpgradeNotStrokeBorderColor,
              width: 2
          ),
        ),
        child: Row(
          children: [
            Image.asset(image, width: 66, height: 61,),
            SizedBox(width: 7,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text (feature, style: day6UpgradeFeatureTextStyle,),
                SizedBox(height:2 ,),
                Row(
                  children: [
                    Text (greyDescription, style: day6UpgradeDescriptionGreyTextStyle,),
                    SizedBox(width:2 ,),
                    Text (purpleDescription, style: day6UpgradeDescriptionPurpleTextStyle,)
                  ],
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(0),
              child: selectedIndex==index ? Image.asset("assets/images/day6/check.png", width: 25, height: 25,): SizedBox(),
            )
          ],
        ),

      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Pro()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/day6/crown.png", width:100 , height: 100,)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Which one you wish \n to Upgrade?", style: day6UpgradeTitleTextStyle, textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  option(0,"assets/images/day6/babi.png", "Money Security", "support", "24/7"),
                  option(1,"assets/images/day6/kertas.png", "Automation", "we provide", "invoice"),
                  option(2,"assets/images/day6/dollar.png", "Balance Report", "can up to", "10k"),
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
