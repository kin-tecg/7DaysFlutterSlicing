import 'package:flutter/material.dart';
import 'package:tujuh_hari/theme.dart';
import 'package:tujuh_hari/pages/day2Sport.dart';

class MoneyUang extends StatelessWidget {
  const MoneyUang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/day2/bgstock.png"),
                fit: BoxFit.cover,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:400, bottom:55),
            child: Center(
              child: Column(
                children: [
                  Text ("Maximize Revenue", style: day2UangTitleTextStyle,),
                  SizedBox(height: 13,),
                  Text("Gain more profit from cryptocurrency \nwithout any risk involved", style: day2UangSubtitleTextStyle, textAlign: TextAlign.center,),
                  SizedBox(height: 50,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Sport()));
                    },
                      child: Image.asset("assets/images/day2/button.png", height: 80, width: 80,))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
