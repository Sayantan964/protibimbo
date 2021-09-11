import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyPhoneNoScreen extends StatefulWidget{

  const VerifyPhoneNoScreen({Key? key}) : super(key: key);

  @override
  VerifyPhoneNoScreenState createState()=>new VerifyPhoneNoScreenState();
}

class VerifyPhoneNoScreenState extends State<VerifyPhoneNoScreen>{

  @override
  Widget build(BuildContext context){

    final double _screenWidth=MediaQuery.of(context).size.width;
    final double _screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          width: _screenWidth,
          height: _screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                  alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back,
                      color: Colors.white,
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "OTP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
          ),
              SizedBox(
                height: 80,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "VERIFY  PHONE  NUMBER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "We sent a code to verify \n"
                      "    your phone number",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Sent to +91 8315468748",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 4,
                showFieldAsBox: true,
                fieldWidth: 60,
                enabledBorderColor: Colors.white,
                focusedBorderColor: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                margin: EdgeInsets.only(right: 20.0),
                filled: true,
                fillColor: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "I didn\'t recive a code",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Resend',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}