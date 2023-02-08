import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day7Gojek.dart';
import 'package:tujuh_hari/theme.dart';

class Pro extends StatelessWidget {
  const Pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/day6/bg.png"),
                fit: BoxFit.cover
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80, left: 28, right: 28, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset("assets/images/day6/pro.png", width: 164, ),
                      SizedBox(height: 24,),
                      Text("Pro Features", style: day6ProTitleTextStyle,),
                      SizedBox(height: 10,),
                      Text("Unlock the winner modules \nand get more insights", style: day6ProSubtitleTextStyle, textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/day6/red_check.png", width: 26,),
                        SizedBox(width: 12,),
                        Text("Unlock Our Top Charts", style:day6ProListTextStyle)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Image.asset("assets/images/day6/red_check.png", width: 26,),
                        SizedBox(width: 12,),
                        Text("Save More than 1,000 Docs", style:day6ProListTextStyle)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Image.asset("assets/images/day6/red_check.png", width: 26,),
                        SizedBox(width: 12,),
                        Text("24/7 Customer Support", style:day6ProListTextStyle)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Image.asset("assets/images/day6/red_check.png", width: 26,),
                        SizedBox(width: 12,),
                        Text("Track Company’s Spending", style:day6ProListTextStyle)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shadowColor: ProButtonColor,
                        elevation: 20,
                        backgroundColor: ProButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31)
                        )
                      ),
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Gojek()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         Text("Subscribe Now", style: day6ProSubscribeTextStyle, textAlign: TextAlign.center,),
                          SizedBox(width: 40,),
                          Image.asset("assets/images/day6/red_arrow.png", width: 41,)
                        ],
                  )),
                ),
                SizedBox(height: 17,),
                Center(child: Text("Contact Support", style: day6ProContactTextStyle))
              ],
            ),
          ),
        ],
      )
    );
  }
}

