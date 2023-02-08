import 'package:flutter/material.dart';
import 'package:tujuh_hari/theme.dart';
import 'package:tujuh_hari/pages/day1HouseQu.dart';


class Venture extends StatelessWidget {
  const Venture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: day1BackgroundVentureColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 229),
          child: Column(
            children: [
              Image.asset("assets/images/day1/sword.png", height: 140, width: 140,),
              SizedBox(height: 120,),
              GestureDetector(
                child: Text ("VENTURE",style: day1VentureTextStyle,),
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> HouseQu()));
                },
              )
            ],
          ),
        ),
      ) ,
    );
  }
}
