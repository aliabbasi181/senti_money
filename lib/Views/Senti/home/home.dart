import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Senti/home/widgets.dart';
import 'package:senti/constants.dart';
import 'package:senti/utilities.dart';

class SentiHome extends StatefulWidget {
  const SentiHome({Key? key}) : super(key: key);

  @override
  State<SentiHome> createState() => _SentiHomeState();
}

class _SentiHomeState extends State<SentiHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Utilities.getSize(context).width,
                padding: const EdgeInsets.fromLTRB(22, 5, 22, 22),
                height: Utilities.getSize(context).height * 0.45,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome",
                                  style: Utilities.fontStyle(
                                      14, FontWeight.w400, Colors.white),
                                ),
                                Text(
                                  "Mary Kobia",
                                  style: Utilities.fontStyle(
                                      23, FontWeight.w600, Colors.white),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            padding: const EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.white,
                                      Colors.white.withOpacity(0.6),
                                      Colors.transparent
                                    ])),
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Constants.primaryColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://scontent.fisb20-1.fna.fbcdn.net/v/t1.6435-9/78858554_448878765774081_8438843148674793472_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=C707B9Pai8wAX8U6cRZ&_nc_ht=scontent.fisb20-1.fna&oh=00_AT_hEHi0-Vi9ds2WNHvziDPuGYe6f2Mw4hXMjX6orahOfA&oe=62853C3D")),
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 220,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.white.withOpacity(0.5),
                                  Colors.white.withOpacity(0.3),
                                  Colors.transparent
                                ]),
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Constants.primaryColor),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white.withOpacity(0.05)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Welcome",
                                        style: Utilities.fontStyle(
                                            14,
                                            FontWeight.w400,
                                            Colors.white.withOpacity(0.6)),
                                      ),
                                      Text(
                                        "\$2,589.00",
                                        style: Utilities.fontStyle(
                                            35, FontWeight.w800, Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 23,
                                        width: 60,
                                        padding: const EdgeInsets.only(left: 5),
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "USD",
                                              style: Utilities.fontStyle(
                                                  14,
                                                  FontWeight.w700,
                                                  Colors.white),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              size: 18,
                                              color:
                                                  Colors.white.withOpacity(0.7),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                                Divider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.15),
                                ),
                                Expanded(
                                    child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: AlignmentDirectional.center,
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: const Color(0xff2F75FD)),
                                        child: const Icon(
                                          CupertinoIcons.arrow_up_circle_fill,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                      Container(
                                        alignment: AlignmentDirectional.center,
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: const Color(0xff2F75FD)),
                                        child: const Icon(
                                          CupertinoIcons.arrow_down_circle_fill,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                      Container(
                                        alignment: AlignmentDirectional.center,
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: const Color(0xff2F75FD)),
                                        child: const Icon(
                                          CupertinoIcons.printer_fill,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                      Container(
                                        alignment: AlignmentDirectional.center,
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: const Color(0xff2F75FD)),
                                        child: const Icon(
                                          CupertinoIcons
                                              .list_bullet_below_rectangle,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                //height: Utilities.getSize(context).height * 0.45,
                width: Utilities.getSize(context).width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1), blurRadius: 15)
                    ],
                    color: const Color(0xffF6F6F6),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Send Again",
                      style: Utilities.fontStyle(
                          16, FontWeight.w600, Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: Utilities.getSize(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(25, 26, 29, 0.07),
                                blurRadius: 15)
                          ],
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SendAgainUser(
                              name: "Kamu",
                              image:
                                  "https://scontent.fisb20-1.fna.fbcdn.net/v/t1.6435-9/78858554_448878765774081_8438843148674793472_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=C707B9Pai8wAX8U6cRZ&_nc_ht=scontent.fisb20-1.fna&oh=00_AT_hEHi0-Vi9ds2WNHvziDPuGYe6f2Mw4hXMjX6orahOfA&oe=62853C3D"),
                          SendAgainUser(
                              name: "Jane",
                              image:
                                  "https://www.mensjournal.com/wp-content/uploads/2021/02/JaneLevy.jpg?w=1200&h=1080&crop=1&quality=86&strip=all"),
                          SendAgainUser(
                              name: "Moses",
                              image:
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Jane_Levy_WonderCon_2013.jpg/800px-Jane_Levy_WonderCon_2013.jpg"),
                          SendAgainUser(
                              name: "Eliza",
                              image:
                                  "https://m.media-amazon.com/images/M/MV5BODhhYjc3YmYtZWVhMC00NWIxLWIyYzUtMGU3Y2M0ZDE5YzA2XkEyXkFqcGdeQXVyMTA2NjA3NTgx._V1_.jpg"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sharepoint",
                      style: Utilities.fontStyle(
                          16, FontWeight.w600, Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: Utilities.getSize(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(25, 26, 29, 0.07),
                                blurRadius: 15)
                          ],
                          color: Colors.white),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "3500/",
                                  style: Utilities.fontStyle(
                                      17, FontWeight.w800, Colors.black),
                                  children: [
                                    TextSpan(
                                      text: "4k*",
                                      style: Utilities.fontStyle(
                                          15, FontWeight.w700, Colors.black),
                                    ),
                                  ]),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Redeem \$5 on your next 4K",
                              style: Utilities.fontStyle(
                                  12, FontWeight.w500, const Color(0xffA4A2A2)),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 15,
                              color: Colors.white,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Container(
                                      width: Utilities.getSize(context).width,
                                      height: 4,
                                      decoration: BoxDecoration(
                                          color: Constants.primaryColor
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.center,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 4,
                                            width: Utilities.getSize(context)
                                                    .width *
                                                0.65,
                                            decoration: BoxDecoration(
                                                color: Constants.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                          ),
                                          Container(
                                            height: 13,
                                            width: 13,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.white),
                                                color: Constants.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "3500k",
                              style: Utilities.fontStyle(
                                  14, FontWeight.w700, Colors.black),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Container(
                              width: Utilities.getSize(context).width * 0.25,
                              child: AvatarStack(
                                height: 33,
                                width: 33,
                                avatars: [
                                  for (var n = 0; n < 15; n++)
                                    NetworkImage(
                                        'https://i.pravatar.cc/150?img=$n'),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "15 Friends",
                                  style: Utilities.fontStyle(
                                      11, FontWeight.w700, Colors.black),
                                ),
                                Text(
                                  "DETAILS",
                                  style: Utilities.fontStyle(
                                      13, FontWeight.w700, Colors.black),
                                ),
                              ],
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Transaction history",
                      style: Utilities.fontStyle(
                          16, FontWeight.w600, Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                        padding: const EdgeInsets.all(20),
                        width: Utilities.getSize(context).width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(25, 26, 29, 0.07),
                                  blurRadius: 15)
                            ],
                            color: Colors.white),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TransactionHistoryUserInstance(
                                name: "Twahir Mohamed",
                                image:
                                    "https://i1.wp.com/thetractionstage.com/wp-content/uploads/2019/09/Twahir-and-Abdulaziz.jpg?fit=640%2C381&ssl=1",
                              ),
                              Divider(
                                height: 25,
                                thickness: 1,
                                color: Colors.black.withOpacity(0.09),
                              ),
                              TransactionHistoryUserInstance(
                                name: "George Mukiri",
                                image:
                                    "https://thumbnailer.mixcloud.com/unsafe/1200x628/profile/7/f/1/3/af27-3080-4fbe-9f70-1f8f0bbdd658",
                              ),
                              Divider(
                                height: 25,
                                thickness: 1,
                                color: Colors.black.withOpacity(0.09),
                              ),
                              TransactionHistoryUserInstance(
                                name: "Brian Mutwiri",
                                image:
                                    "https://media-exp1.licdn.com/dms/image/C4E03AQF_Jevd085p5A/profile-displayphoto-shrink_200_200/0/1634156741926?e=1654128000&v=beta&t=sP1AdjRXQxjAmC6epvoGkAFGVLlJbooCEOw71tUu0hg",
                              ),
                              Divider(
                                height: 25,
                                thickness: 1,
                                color: Colors.black.withOpacity(0.09),
                              ),
                              TransactionHistoryUserInstance(
                                name: "Ali Hassan Abbasi",
                                image:
                                    "https://scontent.fisb20-1.fna.fbcdn.net/v/t1.6435-9/78858554_448878765774081_8438843148674793472_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=C707B9Pai8wAX8U6cRZ&_nc_ht=scontent.fisb20-1.fna&oh=00_AT_hEHi0-Vi9ds2WNHvziDPuGYe6f2Mw4hXMjX6orahOfA&oe=62853C3D",
                              ),
                            ]))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
