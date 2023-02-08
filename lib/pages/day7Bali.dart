import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day1Venture.dart';
import 'package:tujuh_hari/theme.dart';

class Bali extends StatelessWidget {
  const Bali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaliBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/day7/bali.png"),
            SizedBox(height: 12,),
            Text("Arrina La", style: day7BaliTitleTextStyle,),
            Text("Bali Deket Hatimu", style: day7BaliDescriptionTextStyle,),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About", style: day7BaliSubtitleTextStyle,),
                SizedBox(height: 6,),
                Text("Pantai Pandawa adalah salah satu para \nkawasan wisata di area Kuta selatan sana \nKabupaten Dekat Bandung, Bali.", style: day7BaliLongDescriptionTextStyle,),
                SizedBox(height: 16,),
                Text("Booking Now", style: day7BaliSubtitleTextStyle,),
                SizedBox(height: 12,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/day7/date1.png", width: 60, height: 80,),
                      SizedBox(width: 5,),
                      Image.asset("assets/images/day7/date2.png", width: 60, height: 80,),
                      SizedBox(width: 5,),
                      Image.asset("assets/images/day7/date3.png", width: 60, height: 80,),
                      SizedBox(width: 5,),
                      Image.asset("assets/images/day7/date4.png", width: 60, height: 80,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("\$22,800", style: day7BaliPriceTextStyle,),
                          SizedBox(height: 5,),
                          Text("/night", style: day7BaliNightTextStyle,)
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 150,
                        height: 55,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: BaliButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            )
                          ),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Venture()));
                          },
                          child: Text("Continue", style: day7BaliButtonTextStyle,),
                        ),
                      )
                    ],
                  )
                ],
              )
            ),

          ],
        ),
      )
    );
  }
}
