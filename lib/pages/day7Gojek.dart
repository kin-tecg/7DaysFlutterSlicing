import 'package:flutter/material.dart';
import 'package:tujuh_hari/theme.dart';
import 'package:tujuh_hari/pages/day7Bali.dart';

class Gojek extends StatefulWidget {
  const Gojek({Key? key}) : super(key: key);

  @override
  State<Gojek> createState() => _GojekState();
}

class _GojekState extends State<Gojek> {
  int _counter1 = 0;
  double price1 = 0.0;
  double hargaFood = 20.00;
  int _counter2 = 0;
  double price2 = 0.0;
  double hargaMinum = 10.00;
  double subtotal= 0.0;
  double total= 0.0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
      price1 = _counter1 * hargaFood;
      subtotal = price1 + price2;
      total = subtotal + 3.00;
    });
  }
  void _decrementCounter1() {
    setState(() {
      _counter1--;
      price1 = _counter1 * hargaFood;
      subtotal = price1 + price2;
      total = subtotal + 3.00;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
      price2 = _counter2 * hargaMinum;
      subtotal = price1 + price2;
      total = subtotal + 3.00;
    });
  }
  void _decrementCounter2() {
    setState(() {
      _counter2--;
      price2 = _counter2 * hargaMinum;
      subtotal = price1 + price2;
      total = subtotal + 3.00;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GojekBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top:42, left: 24, right: 24, bottom: 24),
          child: Column(
          children: [
            Text ("My Shopping Cart", style: day7GojekTitleTextStyle,),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top:10, left: 10, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: GojekCardBackgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Image.asset("assets/images/day7/burger.png", width: 80,),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Burger Maletta", style: day7GojekItemTitleTextStyle,),
                          SizedBox(height: 2,),
                          Text("McTheone", style: day7GojekItemDescriptionTextStyle,)
                        ],

                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          _decrementCounter1();
                        },
                          child: Image.asset("assets/images/day7/minus.png", height: 22, width: 22,)),
                      SizedBox(width: 10,),
                      Text('$_counter1', style: day7GojekItemNumberTextStyle,),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          _incrementCounter1();
                        },
                          child: Image.asset("assets/images/day7/plus.png", height: 22, width: 22,)),
                      Spacer(),
                      Text("\$",style: day7GojekItemPriceTextStyle),
                      SizedBox(width: 2,),
                      Text(price1.toString(), style: day7GojekItemPriceTextStyle,)
                    ],
                  ),
                ],

              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top:10, left: 10, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: GojekCardBackgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Image.asset("assets/images/day7/mojito.png", width: 80,),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mojito Orange", style: day7GojekItemTitleTextStyle,),
                          SizedBox(height: 5,),
                          Text("The Bar", style: day7GojekItemDescriptionTextStyle,)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          _decrementCounter2();
                        },
                          child: Image.asset("assets/images/day7/minus.png", height: 22, width: 22,)),
                      SizedBox(width: 10,),
                      Text('$_counter2', style: day7GojekItemNumberTextStyle,),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          _incrementCounter2();
                      },
                          child: Image.asset("assets/images/day7/plus.png", height: 22, width: 22,)),
                      Spacer(),
                      Text("\$",style: day7GojekItemPriceTextStyle),
                      SizedBox(width: 2,),
                      Text(price2.toString(), style: day7GojekItemPriceTextStyle,)
                    ],
                  ),
                ],

              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: GojekCardBackgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Information", style: day7GojekItemTitleTextStyle,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Subtotal", style: day7GojekDetailsTextStyle,),
                      Spacer(),
                      Text("\$", style: day7GojekItemPriceTextStyle,),
                      SizedBox(width: 3,),
                      Text(subtotal.toString(), style: day7GojekItemPriceTextStyle,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Delivery", style: day7GojekDetailsTextStyle,),
                      Spacer(),
                      Text("\$3.00", style: day7GojekItemPriceTextStyle,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Total", style: day7GojekDetailsTextStyle,),
                      Spacer(),
                      Text("\$", style: day7GojekItemPriceTextStyle,),
                      SizedBox(width: 3,),
                      Text(total.toString(), style: day7GojekItemPriceTextStyle,)
                    ],
                  ),
                ],

              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 55,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: GojekPrimaryButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Bali()));
                },
                child: Text("Checkout Now", style: day7GojekPrimaryButtonTextStyle,),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 55,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: GojekSecondaryButtonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    )
                ),
                onPressed: (){},
                child: Text("Save to Wishlist", style: day7GojekSecondaryButtonTextStyle,),
              ),
            )
          ],

        ),
        ),
      )
    );
  }
}
