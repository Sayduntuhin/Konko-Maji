import 'package:flutter/material.dart';
import 'package:konko_maji/stack_mid.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:Stack(
        children: [
          Column(
            children: [
              Container(
                height: 415,
                width: 375,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/photo.png"),
                        fit: BoxFit.fill)),
                child: Container(
                  padding: const EdgeInsets.only(top: 44.32, left: 40.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            color: const Color(0x33FFFFFF),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: const Color(0xFFE8E6EA), width: 1)),
                        child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Color(0xFFFFFFFF),
                              weight: 24,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(child: SingleChildScrollView(child: Stackmid()))
            ],


          ),

          Positioned(
              top: 386,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                ),
                width: 375,
                height: 40,

              )),
          Positioned(
              top: 347.29,
              left: 40.4,
              child:    Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 10),
                          )
                        ]


                      ),
                      width: 78,
                      height: 78,
                      child: const Center(
                          child: Image(image: AssetImage('assets/images/close-small.png'),width: 24,height: 24,)

                      ) ),
                  const SizedBox(width: 19.9,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color(0xFFE94057),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.shade100,
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            )
                          ]


                      ),
                      width: 99,
                      height: 99,
                      child: const Center(
                          child: Image(image: AssetImage('assets/images/like.png'),width: 51,)

                      ) ),
                  const SizedBox(width: 19.9,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ]

                      ),
                      width: 78,
                      height: 78,
                      child: const Center(
                          child: Image(image: AssetImage('assets/images/star.png'),width: 24,)

                      ) ),
                ],
              )
          ),
    ],
      ),

    );

  }

}