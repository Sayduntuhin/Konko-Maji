import 'package:flutter/material.dart';

class Stackmid extends StatefulWidget {
  const Stackmid({super.key});

  @override
  State<Stackmid> createState() => _StackmidState();
}

class _StackmidState extends State<Stackmid> {
  bool isTravelling = false;
  bool isbooking = false;
  bool isMusic = false;
  bool isDancing = false;
  bool ismodeling = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        width: 375,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50.1, left: 40.1),
                      child: SizedBox(
                        width: 250,
                        height: 36,
                        child: Text(
                          'Jessica Parker, 23',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40.1,
                      ),
                      child: SizedBox(
                        width: 250,
                        height: 21,
                        child: Text(
                          'Proffesional model',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 53.5),
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                        color: const Color(0x33FFFFFF),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: const Color(0xFFE8E6EA), width: 1)),
                    child: const Center(
                        child: Image(
                      image: AssetImage('assets/images/send.png'),
                      width: 24,
                      height: 24,
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 29.1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 40.2),
                      child: SizedBox(
                        width: 66,
                        height: 24,
                        child: Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 167.97,
                    ),
                    Container(
                        width: 61,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade100,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/local-two.png'),
                              width: 14,
                              height: 14,
                            ),
                            SizedBox(
                              width: 25,
                              height: 18,
                              child: Center(
                                child: Text(
                                  '1 km',
                                  style: TextStyle(
                                      color: Color(0xFFE94057),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 40.1,
                  ),
                  child: SizedBox(
                    width: 160,
                    height: 21,
                    child: Text(
                      'Chicago, IL United States',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 29.95,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.29),
              child: SizedBox(
                width: 47,
                height: 24,
                child: Text(
                  'About',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.33),
              child: SizedBox(
                width: 295,
                height: 63,
                child: Text(
                  'My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.29),
              child: SizedBox(
                width: 71,
                height: 21,
                child: Text(
                  'Read more',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFE94057),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              height: 29.93,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.46),
              child: SizedBox(
                width: 65,
                height: 24,
                child: Text(
                  'Interests',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              height: 9.89,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isTravelling = !isTravelling;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.5),
                    child: Container(
                      width: 92,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: isTravelling
                                  ? const Color(0xFFE94057)
                                  : const Color(0xFFE8E6EA),
                              width: 1)),
                      child: isTravelling
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: Center(
                                        child: Image(
                                            image: AssetImage(
                                                'assets/images/check.png'),
                                            color: Color(0xFFE94057)))),
                                SizedBox(
                                    width: 61,
                                    height: 21,
                                    child: Center(
                                        child: Text(
                                      "Travelling",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: isTravelling
                                            ? const Color(0xFFE94057)
                                            : Colors.black,
                                      ),
                                    ))),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: 76,
                                    height: 21,
                                    child: Center(
                                        child: Text(
                                      "Travelling",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: isTravelling
                                            ? const Color(0xFFE94057)
                                            : Colors.black,
                                      ),
                                    ))),
                              ],
                            ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 9.96,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isbooking = !isbooking;
                    });
                  },
                  child: Container(
                    width: 92,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: isbooking
                                ? const Color(0xFFE94057)
                                : const Color(0xFFE8E6EA),
                            width: 1)),
                    child: isbooking
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/check.png'),
                                          color: Color(0xFFE94057)))),
                              SizedBox(
                                  width: 61,
                                  height: 21,
                                  child: Center(
                                      child: Text(
                                    "Books",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: isbooking
                                          ? const Color(0xFFE94057)
                                          : Colors.black,
                                    ),
                                  ))),
                            ],
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 76,
                                  height: 21,
                                  child: Center(
                                      child: Text(
                                    "Books",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: isbooking
                                          ? const Color(0xFFE94057)
                                          : Colors.black,
                                    ),
                                  ))),
                            ],
                          ),
                  ),
                ),
                const SizedBox(
                  width: 9.96,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMusic = !isMusic;
                    });
                  },
                  child: Container(
                    width: 92,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color:
                                isMusic ? const Color(0xFFE94057) : const Color(0xFFE8E6EA),
                            width: 1)),
                    child: isMusic
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/check.png'),
                                          color: Color(0xFFE94057)))),
                              SizedBox(
                                  width: 61,
                                  height: 21,
                                  child: Center(
                                      child: Text(
                                    "Music",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: isMusic
                                          ? const Color(0xFFE94057)
                                          : Colors.black,
                                    ),
                                  ))),
                            ],
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 76,
                                  height: 21,
                                  child: Center(
                                      child: Text(
                                    "Music",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: isMusic
                                          ? const Color(0xFFE94057)
                                          : Colors.black,
                                    ),
                                  ))),
                            ],
                          ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9.89,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDancing = !isDancing;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.5),
                    child: Container(
                      width: 92,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: isDancing
                                  ? const Color(0xFFE94057)
                                  : const Color(0xFFE8E6EA),
                              width: 1)),
                      child: isDancing
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: Center(
                                        child: Image(
                                            image: AssetImage(
                                                'assets/images/check.png'),
                                            color: Color(0xFFE94057)))),
                                SizedBox(
                                    width: 61,
                                    height: 21,
                                    child: Center(
                                        child: Text(
                                      "Dancing",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: isDancing
                                            ? const Color(0xFFE94057)
                                            : Colors.black,
                                      ),
                                    ))),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: 76,
                                    height: 21,
                                    child: Center(
                                        child: Text(
                                      "Dancing",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: isDancing
                                            ? const Color(0xFFE94057)
                                            : Colors.black,
                                      ),
                                    ))),
                              ],
                            ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 9.96,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ismodeling = !ismodeling;
                    });
                  },
                  child: Container(
                    width: 92,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: ismodeling
                                ? const Color(0xFFE94057)
                                : const Color(0xFFE8E6EA),
                            width: 1)),
                    child: ismodeling
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Center(
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/check.png'),
                                          color: Color(0xFFE94057)))),
                              SizedBox(
                                  width: 61,
                                  height: 21,
                                  child: Center(
                                      child: Text(
                                    "Modeling",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: ismodeling
                                          ? const Color(0xFFE94057)
                                          : Colors.black,
                                    ),
                                  ))),
                            ],
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 76,
                                  height: 21,
                                  child: Center(
                                      child: Text(
                                    "Modeling",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: ismodeling
                                          ? const Color(0xFFE94057)
                                          : Colors.black,
                                    ),
                                  ))),
                            ],
                          ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 29.94,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.62),
                  child: SizedBox(
                    width: 53,
                    height: 24,
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(width: 197.94,),
                SizedBox(
                  width: 53,
                  height: 21,
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFE94057),
                        fontWeight: FontWeight.w700),
                  ),
                ),


              ],
            ),
            const SizedBox(height: 9.84,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.66),
                  child: Container(

                    width: 142,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage('assets/images/G1.jpeg'),fit: BoxFit.fill)
                    ),

                    ),
                  ),
                const SizedBox(width: 9.78,),
                Container(
                  width: 142,
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage('assets/images/G2.jpeg'),fit: BoxFit.fill)
                  ),

                ),

              ],
            ),
            const SizedBox(height: 9.89,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.89),
                  child: Container(

                    width: 92,
                    height: 122,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage('assets/images/g3.jpeg'),fit: BoxFit.fill)
                    ),

                    ),
                  ),
                const SizedBox(width: 9.86,),
                Container(
                  width: 92,
                  height: 122,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage('assets/images/g4.jpeg'),fit: BoxFit.fill)
                  ),

                ),
                const SizedBox(width: 9.86,),
                Container(
                  width: 92,
                  height: 122,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage('assets/images/g5.jpeg'),fit: BoxFit.fill)
                  ),

                ),

              ],
            ),

          ],
        ));
  }
}
