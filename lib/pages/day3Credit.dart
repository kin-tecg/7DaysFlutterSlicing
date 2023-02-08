import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day1Venture.dart';
import 'package:tujuh_hari/pages/day4Cart.dart';
import 'package:tujuh_hari/theme.dart';

class Credit extends StatefulWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  State<Credit> createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/images/day3/receipt.png",width: 200, height:228)),
              SizedBox(height: 20,),
              Text("Email Address", style: day3CreditInputFieldTitleTextStyle,),
              SizedBox(height: 6,),
              TextFormField(
                style: day3CreditFilledInputFieldTextStyle,
                decoration: InputDecoration(
                  fillColor: CreditInputFieldColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(71),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(71),
                    borderSide: BorderSide(width: 1.0, color:CreditButtonColor)
                  ),
                  hintText: "Please Enter Your Email",
                  hintStyle: day3CreditNotFilledInputFieldTextStyle,
                ),

              ),
              SizedBox(height: 20,),
              Text("Password", style: day3CreditInputFieldTitleTextStyle,),
              SizedBox(height: 6,),
              TextFormField(
                obscureText: _isHidden,
                style: day3CreditFilledInputFieldTextStyle,
                decoration: InputDecoration(
                  fillColor: CreditInputFieldColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(71),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(71),
                      borderSide: BorderSide(width: 1.0, color:CreditButtonColor)
                  ),
                  hintText: "Please Enter Your Password",
                  hintStyle: day3CreditNotFilledInputFieldTextStyle,
                  suffixIcon: GestureDetector(
                    onTap: _togglePasswordView,
                    child: Icon(
                      _isHidden ==true? Icons.visibility : Icons.visibility_off, color: CreditGreyColor
                    ),
                  )
                ),

              ),
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                height: 55,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: CreditButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(71),
                    )
                  ),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Cart()));
                  },
                  child: Text("Log in", style: day3CreditPrimaryButtonTextStyle,),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                width: double.infinity,
                height: 55,
                child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(71),
                        side: BorderSide(width: 1, color: CreditTransparentBorderColor)
                      )
                  ),
                  onPressed: (){},
                  child: Text("Create New Account", style: day3CreditSecondaryButtonTextStyle,),

                ),
              ),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

