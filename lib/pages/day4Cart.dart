import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day1Venture.dart';
import 'package:tujuh_hari/pages/day4Chart.dart';
import 'package:tujuh_hari/theme.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:148, left: 30,right: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/day4/cart.png", width: 240, height: 210,),
              SizedBox(height: 50,),
              Text ("Success Order", style: day4CartTitleTextStyle),
              SizedBox(height: 16,),
              Text ("We will delivery your package \nas soon as possible", style: day4CartSubtitleTextStyle, textAlign: TextAlign.center,),
              SizedBox(height: 50,),
              Container(
                width: 200,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: CartPinkButtonColor, 
                    shape : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)
                    )
                  ),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Chart()));
                  },
                  child: Text("Done", style: day4CartButtonTextStyle,),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
