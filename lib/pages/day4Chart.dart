import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day1Venture.dart';
import 'package:tujuh_hari/pages/day5Food.dart';
import 'package:tujuh_hari/theme.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ChartBackgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/day4/chart.png", width: 355, height: 450,),
            SizedBox(height: 20,),
            Text ("Boost Profit", style: day4ChartTitleTextStyle),
            SizedBox(height: 16,),
            Text ("Our tools are helping business \nto grow much faster", style: day4ChartSubtitleTextStyle, textAlign: TextAlign.center,),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Food()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/day4/rocket.png", width:65 , height: 65,)
                ],
              ),
            )
            

          ],
        ),
      ),
    );
  }
}
