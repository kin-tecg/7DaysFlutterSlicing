import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day3Bitcoin.dart';
import 'package:tujuh_hari/theme.dart';

class Sport extends StatelessWidget {
  const Sport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:40.0, left: 40, right: 40, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text ("Health First.", style: day2SportTitleTextStyle,),
            SizedBox(height: 10,),
            Text ("Exercise together with our best \ncommunity fit in the world", style: day2SportSubtitleTextStyle,),
            SizedBox(height: 15,),
            Image.asset("assets/images/day2/sport.png", width: 295, height: 400,),
            SizedBox(height: 15,),
            Center(
              child: Container(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: day2SportButtonColor
                  ),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> BitCoin()));
                  },
                  child: Text("Shape My Body", style: day2SportButtonTextStyle,),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(child: Text ("Terms & Condition", style: day2SportTandCTextStyle,))
          ],
        ),
      ),
    );
  }
}
