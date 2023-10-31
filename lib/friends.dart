import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konko_maji/profile.dart';

import 'nevigation bar.dart';

class friends extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 302,top: 44, right: 40),
            child: Row(
              children: [
                const SizedBox(
                    width: 33,
                    height: 24,
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFE94057),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(height: 88,),
          Padding(
            padding: const EdgeInsets.only(left: 67,right: 68),
            child: SizedBox(width: 240,
            height: 240,
            child: Image.asset('assets/images/people.png'),

            ),
          ),
          SizedBox(height: 64,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: SizedBox(
              width: 295,
              height: 36,
              child: Center(
                child: Text(
                  'Search friend’s',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),

            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: SizedBox(
              width: 295,
              height: 42,
              child: Center(
                child: Text(
                  'You can find friends from your contact lists\n                          to connected',
                  style: TextStyle(

                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color:Color(0xB2000000)
                  ),

                ),
              ),

            ),
          ),
          SizedBox(height: 148),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,),
            child: GestureDetector(
              onTap: () {

                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => NevBar()));

              },
              child: Container(
                width: 295,
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color:const Color(0xFFE94057)),
                child: const Center(
                  child: SizedBox(
                    width: 231,
                    height: 24,
                    child: Center(
                      child: Text(
                        'Access to a contact list',
                        style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )




        ],

      ),
    );

  }
}