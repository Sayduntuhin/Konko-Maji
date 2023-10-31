import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:konko_maji/timedisplay.dart';

class Messages extends StatefulWidget{
  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(

          body:
          Column(
            children: [
              Container(
                width: 375,
                height: 44,
                decoration: BoxDecoration(
                ),
                child: Row(

                 // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: SizedBox(
                        width:54 ,
                        height: 18,
                        child: TimeDisplay(),
                      ),
                    ),
                    SizedBox(width: 219,),
                    SizedBox(width: 17,
                      height: 10.667,
                      child: SvgPicture.asset('assets/images/Cellular Connection.svg'),
                    ),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 15.33,
                      height: 11,
                      child: SvgPicture.asset('assets/images/Wifi.svg')

                      //Image(image: AssetImage('assets/images/Wifi.png'),color: Colors.black,fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 5,),
                    SizedBox(width: 24.32804,
                      height:11.33333,
                      child: SvgPicture.asset('assets/images/Battery.svg',)
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: SizedBox(
                      width: 199,
                      height: 51,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('Message',style: TextStyle(
                          fontSize:34,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(width: 40,),
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFFE8E6EA), width: 1)),
                    child:  Center(
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset('assets/images/setting-config (1).svg')

                        )

                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(15),
                  border:Border.all(color: Color(0xFFE8E6EA),width: 1)
                ),
                width: 295,
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search.',
                      border: InputBorder.none,
                      icon: Icon(Icons.search_sharp,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 128,
                child: Column(
                  children: [
                    const SizedBox(
                      width: 291,
                      height: 27,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text('Activities',style: TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                        ),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SizedBox(
                        height: 91,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildContactAvatar('You', 'assets/images/c1.png'),
                            buildContactAvatar('Emma', 'assets/images/c2.jpeg'),
                            buildContactAvatar('Eva', 'assets/images/c3.jpeg'),
                            buildContactAvatar('Sopia', 'assets/images/c4.jpeg'),
                            buildContactAvatar('Moane', 'assets/images/G1.jpeg'),
                            buildContactAvatar('Julie', 'assets/images/g5.jpeg'),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:40, right: 135),
                child: const SizedBox(
                  width: 200,
                  height: 27,
                  child: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text('Messages',style: TextStyle(
                        fontSize:18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Expanded(
                  child: ListView(
                    padding: const EdgeInsets.only(left: 40,),
                    children: [
                      buildConversationRow(
                          'Emelie', '' ,'Sticker 😍', 'assets/images/d1.png','23 min', 1),
                      buildConversationRow(
                          'Abigail', '', 'Typing..', 'assets/images/d2.png','27 min', 2),
                      buildConversationRow(
                          'Elizabeth', '' ,'Ok, see you then.', 'assets/images/d3.jpeg', '33 min',0),
                      buildConversationRow(
                          'Penelope','You: ' , 'Hey! What’s up, long time..', 'assets/images/d4.png', '50 min',0),
                      buildConversationRow(
                          'Chloe', 'You: ' ,'Hello how are you?', 'assets/images/d6.jpeg','55 min', 0),

                      buildConversationRow('Grace','You: ' , 'Great I will write later..', 'assets/images/d5.jpeg','1 hour', 0),
                      buildConversationRow(
                          'Mira', '' ,'Sticker 😍', 'assets/images/d1.png','7 hour', 6),

                    ],
                  ),
                ),
              )
            ],

          ),


        );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          SizedBox(
            width: 66,
            height: 66,
            child: UserAvatar(
              filename: filename,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            width: 66,
            height: 21,
            child: Center(
              child: Text(
                name,
                style: const TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column buildConversationRow(
      String name, String you, String message, String filename,String time, int msgCount) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    width: 56,
                    height: 56,
                    child: UserAvatar(filename: filename)),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 169,
                          height: 21,
                          child: Text(
                            name,
                            style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 14),
                          ),
                        ),
                        SizedBox(width: 30,),
                        SizedBox(
                          width: 40,
                          height: 18,
                          child:  Text(
                            time,
                            style: TextStyle(fontSize: 12,color: Color(0xFFADAFBB),fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 189,
                          height: 21,
                          child: Row(
                            children: [
                              Text(
                                you,
                                style: const TextStyle(color: Color(0xFFADAFBB),fontWeight: FontWeight.w400,fontSize: 14),
                              ),
                              Text(
                                message,
                                style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        if (msgCount > 0)
                          SizedBox(
                            width: 18,
                            height: 18,
                            child: CircleAvatar(
                              backgroundColor:  Colors.red.shade400,
                              child: Text(
                                msgCount.toString(),
                                style:
                                const TextStyle(fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )
                      ],
                    ),
                  ],
                )
              ],
            ),
            /*Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  const
                  Text(
                    '16:35',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style:
                        const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              ),
            )*/
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.5),
          child: Container(
             width: 229,
            child: const Divider(
              thickness: 1,
              color: Color.fromRGBO(232, 230, 234, 1),
              height: 16,
            ),
          ),
        )
      ],
    );
  }
}
class UserAvatar extends StatefulWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  State<UserAvatar> createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()
      {
        setState(() {
          isClick = !isClick;
          isClick = true;
        });

      },
      child: isClick ?
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white,width: 2)
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: Image.asset('${widget.filename}').image,
          ),
        ),
      ) :

      Container(
        decoration: BoxDecoration(
         shape: BoxShape.circle,
          border: Border.all(color: Color.fromRGBO(255, 113, 33, 1),width: 2)
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: Image.asset('${widget.filename}').image,
          ),
        ),
      ),
    );
  }
}