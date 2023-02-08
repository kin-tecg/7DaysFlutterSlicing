import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day5Cafe.dart';

import 'package:tujuh_hari/theme.dart';

class Food extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top:80, left: 37, right: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset("assets/images/day5/pizza.png", height: 200, width: 200,),
                  SizedBox(height: 20,),
                  Text("Pizza Ballado", style: day5FoodTitleTextStyle,),
                  SizedBox(height: 4,),
                  Text("\$90,00", style: day5FoodPriceTextStyle,),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Text ("Was it delicious? ", style: day5FoodQuestionTextStyle,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/day5/emoji1.png", height: 60, width: 60,),
                Image.asset("assets/images/day5/emoji2.png", height: 60, width: 60,),
                Image.asset("assets/images/day5/emoji3.png", height: 60, width: 60,),
                Image.asset("assets/images/day5/emoji4.png", height: 60, width: 60,),
              ],
            ),
            SizedBox(height: 50,),
            Center(
              child: Container(
                width: 210,
                height: 55,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: FoodBackgroundButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)
                    )
                  ),
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Cafe()));
                    },
                    child: Text("Rate Now", style: day5FoodButtonTitleTextStyle,),
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
