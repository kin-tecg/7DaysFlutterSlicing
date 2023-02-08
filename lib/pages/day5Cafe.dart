import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day1Venture.dart';
import 'package:tujuh_hari/pages/bottomNav.dart';
import 'package:tujuh_hari/theme.dart';

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 80, left:28, right: 28,bottom: 30),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/day5/cafe.png",width: 222, height: 158,),
                SizedBox(height: 30,),
                Text("Enjoy Your Meal", style: day5CafeTitleTextStyle,),
                SizedBox(height: 6,),
                Text("Please rate our experience", style: day5CafeSubtitleTextStyle,),
                SizedBox(height: 20,),
                Image.asset("assets/images/day5/star.png"),
                SizedBox(height: 20,),
                TextFormField(
                  style: day5CafeFilledInputTextStyle,
                  decoration: InputDecoration(
                    fillColor: CafeInputColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(width: 1, color: CafeButtonColor)
                    ),
                    hintText: "Your Feedback",
                    hintStyle: day5CafeNotFilledInputTextStyle,
                  ),
                  maxLines: 4,
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: CafeButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Upgrade()));
                    },
                    child: Text("Submit Review", style: day5CafeButtonTextStyle,),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
