import 'package:flutter/material.dart';
import 'package:tujuh_hari/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:tujuh_hari/pages/day3Credit.dart';

class BitCoin extends StatefulWidget {


  @override
  State<BitCoin> createState() => _BitCoinState();
}


class _BitCoinState extends State<BitCoin> {
  bool _isHidden = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBitCoinColor,
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 40, right: 40, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/day3/bitcoin.png", height: 50, width: 50,),
              SizedBox(height: 40,),
              Text("Welcome back. \nLet’s make money.",
                style: day3BitCoinTitleTextStyle,),
              SizedBox(height: 30,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (email) => email != null && !EmailValidator.validate(email) ? 'Enter a vaild email' : null,
                style: day3BitCoinFilledInputFieldTextStyle,
                decoration: InputDecoration(
                    fillColor: inputBitCoinTextColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(width: 1, color: buttonBitCoinColor),
                    ),
                    hintText: 'Please Enter Your Email',
                    hintStyle: day3BitCoinNotFilledInputFieldTextStyle
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: _isHidden,
                style: day3BitCoinFilledInputFieldTextStyle,
                decoration: InputDecoration(
                    fillColor: inputBitCoinTextColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(width: 1, color: buttonBitCoinColor),
                    ),
                    hintText: "Please Enter Your Password",
                    hintStyle: day3BitCoinNotFilledInputFieldTextStyle,
                    suffixIcon: GestureDetector(
                      onTap: _togglePasswordView,
                      child: Icon(
                          _isHidden == true? Icons.visibility :Icons.visibility_off,
                          color: Color(0xff6F7075)),
                    )
                ),
              ),
              SizedBox(height: 15,),
              Container(
                  alignment: Alignment(1, 0.5),
                  child: Text("Forgot My Password",
                    style: day3BitCoinNotFilledInputFieldTextStyle,)),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 55,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: buttonBitCoinColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)
                          )
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Credit()));
                      },
                      child: Text(
                          "Sign in", style: day3BitCoinButtonTextStyle)),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                    style: day3BitCoinPreInvitationTextStyle,),
                  SizedBox(width: 4,),
                  Text("Sign Up", style: day3BitCoinInvitationTextStyle,)

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
