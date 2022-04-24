import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Senti/transaction_success.dart';
import 'package:senti/constants.dart';
import 'package:senti/utilities.dart';

class AmountExchange extends StatefulWidget {
  const AmountExchange({Key? key}) : super(key: key);

  @override
  State<AmountExchange> createState() => _AmountExchangeState();
}

class _AmountExchangeState extends State<AmountExchange> {
  TextEditingController amountInput = TextEditingController();
  TextEditingController exchangedAmount = TextEditingController();
  @override
  void initState() {
    exchangedAmount.text = "28,470.00";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Utilities.getSize(context).height,
        width: Utilities.getSize(context).width,
        child: SafeArea(
            bottom: Platform.isAndroid,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xffA4A2A2),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Amount",
                        style: Utilities.fontStyle(
                            25, FontWeight.w700, Colors.black),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1.5,
                                  color: Colors.black.withOpacity(0.06))),
                        ),
                        width: Utilities.getSize(context).width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your send",
                                    style: Utilities.fontStyle(
                                        14,
                                        FontWeight.w600,
                                        const Color(0xffA4A2A2)),
                                  ),
                                  TextField(
                                    controller: amountInput,
                                    cursorColor: const Color(0xffA4A2A2),
                                    style: Utilities.fontStyle(
                                        40,
                                        FontWeight.w800,
                                        const Color(0xffA4A2A2)),
                                    decoration: InputDecoration(
                                      hintText: "0.00",
                                      hintStyle: Utilities.fontStyle(
                                          40,
                                          FontWeight.w800,
                                          const Color(0xffA4A2A2)),
                                      isCollapsed: true,
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      // contentPadding: const EdgeInsets.only(
                                      //     top: 10, bottom: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 113,
                              height: 40,
                              margin: const EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.04),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "USD",
                                    style: Utilities.fontStyle(
                                        18, FontWeight.w900, Colors.black),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xffA4A2A2),
                                    size: 30,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1.5,
                                  color: Colors.black.withOpacity(0.06))),
                        ),
                        width: Utilities.getSize(context).width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "They receive",
                                    style: Utilities.fontStyle(
                                        14,
                                        FontWeight.w600,
                                        const Color(0xffA4A2A2)),
                                  ),
                                  TextField(
                                    controller: exchangedAmount,
                                    cursorColor: const Color(0xffA4A2A2),
                                    style: Utilities.fontStyle(
                                        40, FontWeight.w800, Colors.black),
                                    decoration: InputDecoration(
                                      hintText: "0.00",
                                      hintStyle: Utilities.fontStyle(
                                          40, FontWeight.w800, Colors.black),
                                      isCollapsed: true,
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      // contentPadding: const EdgeInsets.only(
                                      //     top: 10, bottom: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 113,
                              height: 40,
                              margin: const EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.04),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "KES",
                                    style: Utilities.fontStyle(
                                        18, FontWeight.w900, Colors.black),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xffA4A2A2),
                                    size: 30,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 170,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1 USD",
                            style: Utilities.fontStyle(
                                20, FontWeight.w700, const Color(0xffA4A2A2)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xffA4A2A2),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "113.88 KES",
                            style: Utilities.fontStyle(
                                20, FontWeight.w700, Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Compare our FX rate, see why thousabds trust sending money through Senti",
                          textAlign: TextAlign.center,
                          style: Utilities.fontStyle(
                              13, FontWeight.w400, const Color(0xffA4A2A2)),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(6)),
                          height: 60,
                          width: 193,
                          child: Text(
                            "COMPARE FX RATE",
                            style: Utilities.fontStyle(
                                14, FontWeight.w800, Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return SafeArea(
                            bottom: Platform.isAndroid,
                            child: Container(
                              margin: const EdgeInsets.only(top: 150),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  )),
                              child: const ConfirmTransfer(),
                            ),
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: Utilities.getSize(context).width,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    color: Constants.primaryColor,
                    child: Text(
                      "NEXT",
                      style: Utilities.fontStyle(
                          16, FontWeight.w800, Colors.white),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class ConfirmTransfer extends StatefulWidget {
  const ConfirmTransfer({Key? key}) : super(key: key);

  @override
  State<ConfirmTransfer> createState() => _ConfirmTransferState();
}

class _ConfirmTransferState extends State<ConfirmTransfer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: Platform.isAndroid,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(CupertinoIcons.clear)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Colors.black.withOpacity(0.06))),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Utilities.getSize(context).width * 0.25,
                    child: Text(
                      "Recipient",
                      style: Utilities.fontStyle(
                          14, FontWeight.w600, const Color(0xffA4A2A2)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dennis Kamau",
                          style: Utilities.fontStyle(
                              17, FontWeight.w700, Colors.black),
                        ),
                        Row(
                          children: [
                            Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/M-PESA_LOGO-01.svg/1200px-M-PESA_LOGO-01.svg.png",
                              width: 45,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "+254711305097(MPESA)",
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Utilities.fontStyle(
                                  12, FontWeight.w600, const Color(0xffA4A2A2)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Colors.black.withOpacity(0.06))),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Utilities.getSize(context).width * 0.25,
                    child: Text(
                      "Total sent",
                      style: Utilities.fontStyle(
                          14, FontWeight.w600, const Color(0xffA4A2A2)),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "250.00 USD",
                      style: Utilities.fontStyle(
                          17, FontWeight.w700, Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Colors.black.withOpacity(0.06))),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Utilities.getSize(context).width * 0.25,
                    child: Text(
                      "Exchange rate",
                      style: Utilities.fontStyle(
                          14, FontWeight.w600, const Color(0xffA4A2A2)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "1 USD",
                              style: Utilities.fontStyle(
                                  17, FontWeight.w700, Colors.black),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.black,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "113.88 KES",
                              style: Utilities.fontStyle(
                                  17, FontWeight.w700, Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Colors.black.withOpacity(0.06))),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Utilities.getSize(context).width * 0.25,
                    child: Text(
                      "Fees",
                      style: Utilities.fontStyle(
                          14, FontWeight.w600, const Color(0xffA4A2A2)),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "0.00 USD",
                      style: Utilities.fontStyle(
                          17, FontWeight.w700, Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Colors.black.withOpacity(0.06))),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Utilities.getSize(context).width * 0.25,
                    child: Text(
                      "Date funds Available",
                      style: Utilities.fontStyle(
                          14, FontWeight.w600, const Color(0xffA4A2A2)),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Mar 12, 2022",
                      style: Utilities.fontStyle(
                          17, FontWeight.w700, Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Colors.black.withOpacity(0.06))),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Utilities.getSize(context).width * 0.25,
                    child: Text(
                      "Total to recipient",
                      style: Utilities.fontStyle(
                          14, FontWeight.w600, const Color(0xffA4A2A2)),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "28,470.00 KES",
                      style: Utilities.fontStyle(
                          17, FontWeight.w700, Colors.black),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransactionSuccess()));
              },
              child: Container(
                width: Utilities.getSize(context).width,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  "Confirm transfer",
                  textAlign: TextAlign.center,
                  style: Utilities.fontStyle(16, FontWeight.bold, Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
