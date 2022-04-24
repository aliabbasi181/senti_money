import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Senti/recipients/add_recipient.dart';
import 'package:senti/utilities.dart';

class RecepientsList extends StatefulWidget {
  const RecepientsList({Key? key}) : super(key: key);

  @override
  State<RecepientsList> createState() => _RecepientsListState();
}

class _RecepientsListState extends State<RecepientsList> {
  List<Map<String, dynamic>> recipients = [
    {"name": "Dennis Kamau", "account": "+254711305097"},
    {"name": "George Mukiri", "account": "ACC:2049219534"},
    {"name": "Beatrice Syombua", "account": "+254711305097"},
    {"name": "Faith Mukami", "account": "+254711305097"},
    {"name": "Hellen Munai", "account": "+254711305097"},
    {"name": "Millicent Omanga", "account": "ACC:2049219534"},
    {"name": "Nancy Kiragu", "account": "+254711305097"},
    {"name": "Teresia Mwende", "account": "ACC:2049219534"},
    {"name": "Ali Hassan Abbasi", "account": "+923404037045"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: Utilities.getSize(context).height,
          width: Utilities.getSize(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    bottom: 30, top: 10, left: 20, right: 20),
                width: Utilities.getSize(context).width,
                color: const Color(0xffEAEFF5),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recipients",
                        style: Utilities.fontStyle(
                            25, FontWeight.w700, Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddRecipient()));
                        },
                        child: Image.asset(
                          "assets/image/receipient_add_icon.png",
                          width: 22,
                          height: 22,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 15),
                  itemCount: recipients.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        height: 47,
                        width: 47,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xff005CEE),
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          recipients[index]['name']
                                  .toString()
                                  .split(' ')
                                  .first[0] +
                              recipients[index]['name']
                                  .toString()
                                  .split(' ')
                                  .last[0],
                          style: Utilities.fontStyle(
                              14, FontWeight.w400, Colors.white),
                        ),
                      ),
                      title: Text(
                        recipients[index]['name'],
                        style: Utilities.fontStyle(
                            17, FontWeight.w700, Colors.black),
                      ),
                      subtitle: Text(
                        recipients[index]['account'],
                        style: Utilities.fontStyle(
                            14, FontWeight.w400, const Color(0xffA4A2A2)),
                      ),
                    );
                  },
                ),
              ))
            ],
          )),
    );
  }
}
