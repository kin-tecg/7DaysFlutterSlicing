import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day2Uang.dart';
import 'package:tujuh_hari/theme.dart';

class HouseQu extends StatelessWidget {
  const HouseQu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/day1/background.png"),
                fit: BoxFit.cover
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 50,right: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/day1/logohouse.png", width: 51, height: 51,),
                SizedBox(width: 14,),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> MoneyUang()));
                    },
                    child: Text("HouseQu", style: day1HouseQuTextStyle,)),
              ],
            ),
          )
        ],
      ),

    );
  }
}
