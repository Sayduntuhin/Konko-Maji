import 'package:flutter/material.dart';
import 'package:konko_maji/friends.dart';

class passions extends StatefulWidget {
  const passions({super.key});

  @override
  State<passions> createState() => _passionsState();
}

class _passionsState extends State<passions> {
  bool isPhotography = false;
  bool isShopping = false;
  bool isKaraoke = false;
  bool isYoga = false;
  bool isCooking = false;
  bool isTennis = false;
  bool isRun = false;
  bool isSwimming = false;
  bool isArt = false;
  bool isTraveling = false;
  bool isExtreme = false;
  bool isMusic = false;
  bool isDrink = false;
  bool isVideogames = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 44, left: 40, right: 40),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: const Color(0xFFE8E6EA), width: 1)),
                child: const Center(
                    child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xFFE94057),
                  weight: 24,
                )),
              ),
              const SizedBox(
                width: 210,
              ),
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
        const SizedBox(
          height: 32,
        ),
        const SizedBox(
            width: 295,
            height: 51,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Your interests',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            )),
        const SizedBox(
            width: 295,
            height: 42,
            child: Text(
              'Select a few of your interests and let everyone know what you’re passionate about.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xB2000000),),
            )),
        const SizedBox(
          height: 32,
        ),
        Row(
          children: [
            const SizedBox(width: 40,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isPhotography = !isPhotography;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isPhotography ? Colors.pink : null,
                    boxShadow: isPhotography
                        ? [
                            const BoxShadow(
                              color: Color(0x33E94057),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                        width: 19,
                        height: 19,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: isPhotography ? Colors.white : const Color(0xFFE94057),
                          size: 19,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Photography',
                          style: TextStyle(
                              color: isPhotography ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isShopping = !isShopping;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isShopping ? Colors.pink : null,
                    boxShadow: isShopping
                        ? [
                            const BoxShadow(
                              color: Color(0x33E94057),
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            )
                          ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/weixin-market.png',color: isShopping ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Shopping',
                          style: TextStyle(
                              color: isShopping ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(width: 40,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isKaraoke = !isKaraoke;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isKaraoke ? Colors.pink : null,
                    boxShadow: isKaraoke
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                        width: 19,
                        height: 19,
                        child: Icon(
                          Icons.mic_none,
                          color: isKaraoke ? Colors.white : const Color(0xFFE94057),
                          size: 19,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Karaoke',
                          style: TextStyle(
                              color: isKaraoke ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isYoga = !isYoga;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isYoga ? Colors.pink : null,
                    boxShadow: isYoga
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/yoga.png',color: isYoga ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Yoga',
                          style: TextStyle(
                              color: isYoga ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(width: 40,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCooking = !isCooking;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isCooking ? Colors.pink : null,
                    boxShadow: isCooking
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/coocking.png',color: isCooking ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Cooking',
                          style: TextStyle(
                              color: isCooking ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isTennis = !isTennis;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isTennis ? Colors.pink : null,
                    boxShadow: isTennis
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/tennis.png',color: isTennis ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Tennis',
                          style: TextStyle(
                              color: isTennis ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(width: 40,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isRun = !isRun;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isRun ? Colors.pink : null,
                    boxShadow: isRun
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/run.png',color: isRun ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Run',
                          style: TextStyle(
                              color: isRun ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSwimming = !isSwimming;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isSwimming ? Colors.pink : null,
                    boxShadow: isSwimming
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/Swimming.png',color: isSwimming ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Swimming',
                          style: TextStyle(
                              color: isSwimming ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(width: 40,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isArt = !isArt;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isArt ? Colors.pink : null,
                    boxShadow: isArt
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/art.png',color: isArt ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Art',
                          style: TextStyle(
                              color: isArt ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isTraveling = !isTraveling;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isTraveling ? Colors.pink : null,
                    boxShadow: isTraveling
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/travling.png',color: isTraveling ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Traveling',
                          style: TextStyle(
                              color: isTraveling ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(width: 40,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExtreme = !isExtreme;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isExtreme ? Colors.pink : null,
                    boxShadow: isExtreme
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/extream.png',color: isExtreme ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Extreme',
                          style: TextStyle(
                              color: isExtreme ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isMusic = !isMusic;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isMusic ? Colors.pink : null,
                    boxShadow: isMusic
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/music.png',color: isMusic ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Music',
                          style: TextStyle(
                              color: isMusic ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(width: 40,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isDrink = !isDrink;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isDrink ? Colors.pink : null,
                    boxShadow: isDrink
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/dinks.png',color: isDrink ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Drink',
                          style: TextStyle(
                              color: isDrink ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isVideogames = !isVideogames;
                });
              },
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: isVideogames ? Colors.pink : null,
                    boxShadow: isVideogames
                        ? [
                      const BoxShadow(
                        color: Color(0x33E94057),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      )
                    ]
                        : [],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 14,top: 12,bottom: 12),
                      child: SizedBox(
                          width: 19,
                          height: 19,
                          child: Image.asset('assets/images/vgame.png',color: isVideogames ? Colors.white : const Color(0xffE94057),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 13,left: 7,right: 15),
                      child: SizedBox(
                        width: 83,
                        height: 21,
                        child: Text(
                          'Video games',
                          style: TextStyle(
                              color: isVideogames ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40,top: 80),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => friends()));

              });
              

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
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w700),
                ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
