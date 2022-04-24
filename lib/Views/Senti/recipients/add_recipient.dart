import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Authentication/widgets.dart';
import 'package:senti/Views/Senti/recipients/amount_exchange.dart';
import 'package:senti/constants.dart';
import 'package:senti/utilities.dart';

class AddRecipient extends StatefulWidget {
  const AddRecipient({Key? key}) : super(key: key);

  @override
  State<AddRecipient> createState() => _AddRecipientState();
}

class _AddRecipientState extends State<AddRecipient> {
  String country = "Kenya";
  String bank = "Select bank";
  String code = "254";
  String payoutMethod = "MPESA";
  TextEditingController fullname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController confirmMobile = TextEditingController();
  TextEditingController accountNumber = TextEditingController();
  TextEditingController bankBranch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: Utilities.getSize(context).height,
        width: Utilities.getSize(context).width,
        child: SafeArea(
            bottom: Platform.isAndroid,
            child: SingleChildScrollView(
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
                    "New recipient",
                    style:
                        Utilities.fontStyle(25, FontWeight.w700, Colors.black),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: Utilities.getSize(context).width,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.2)))),
                    child: InkWell(
                      onTap: () async {
                        try {
                          String selectedCountry = await showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return SafeArea(
                                  bottom: Platform.isAndroid,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 60),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        )),
                                    child: const CountryPicker(),
                                  ),
                                );
                              });
                          if (selectedCountry.isNotEmpty) {
                            country = selectedCountry.toString().split('|')[0];
                            code = selectedCountry.toString().split('|')[1];
                          }
                          setState(() {});
                        } catch (ex) {
                          print(ex);
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Country",
                            style: Utilities.fontStyle(
                                15, FontWeight.w600, const Color(0xffA4A2A2)),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                country,
                                style: Utilities.fontStyle(
                                    17, FontWeight.w600, Colors.black),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xffA4A2A2),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Utilities.getSize(context).width,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.2)))),
                    child: InkWell(
                      onTap: () async {
                        await showCupertinoModalPopup(
                            context: context,
                            builder: (context) => CupertinoActionSheet(
                                  title: Text("Please choose payout method",
                                      style: Utilities.fontStyle(
                                          14,
                                          FontWeight.w400,
                                          const Color(0xffA4A2A2))),
                                  actions: [
                                    CupertinoActionSheetAction(
                                        onPressed: () {
                                          payoutMethod = "Bank";
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.account_balance_rounded),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Bank",
                                              style: Utilities.fontStyle(
                                                  16,
                                                  FontWeight.w500,
                                                  Colors.black),
                                            ),
                                          ],
                                        )),
                                    CupertinoActionSheetAction(
                                        onPressed: () {
                                          payoutMethod = "MPESA";
                                          Navigator.pop(context, "MPESA");
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.phone_iphone_rounded),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "MPESA",
                                              style: Utilities.fontStyle(
                                                  16,
                                                  FontWeight.w500,
                                                  Colors.black),
                                            ),
                                          ],
                                        ))
                                  ],
                                  cancelButton: CupertinoActionSheetAction(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Cancel"),
                                  ),
                                ));
                        setState(() {});
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payout method",
                            style: Utilities.fontStyle(
                                15, FontWeight.w600, const Color(0xffA4A2A2)),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      payoutMethod == "MPESA"
                                          ? Icons.phone_iphone_rounded
                                          : Icons.account_balance_rounded,
                                      color: Colors.grey.shade600,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      payoutMethod,
                                      style: Utilities.fontStyle(
                                          17, FontWeight.w600, Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xffA4A2A2),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: payoutMethod == "Bank" ? 10 : 25,
                  ),
                  Visibility(
                    visible: payoutMethod == "MPESA",
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputField(label: "Full name", controller: fullname),
                        const SizedBox(
                          height: 25,
                        ),
                        Text("Mobile number",
                            style: Utilities.fontStyle(
                                15, FontWeight.w500, const Color(0xffA4A2A2))),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.2)))),
                              child: Text(
                                "+${code}",
                                style: Utilities.fontStyle(
                                    17, FontWeight.w600, Colors.black),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: PhoneInputField(
                                    label: "", controller: mobile)),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text("Retype Mobile number",
                            style: Utilities.fontStyle(
                                15, FontWeight.w500, const Color(0xffA4A2A2))),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Colors.black.withOpacity(0.2)))),
                              child: Text(
                                "+${code}",
                                style: Utilities.fontStyle(
                                    17, FontWeight.w600, Colors.black),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: PhoneInputField(
                                    label: "", controller: confirmMobile)),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                            "Ensure the recipient’s number is their correct Safaricom number. There is no guarantee of refund for the transfers to incorrect mobile numbers",
                            style: Utilities.fontStyle(
                                14, FontWeight.w400, const Color(0xffA4A2A2))),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: payoutMethod == "Bank",
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Utilities.getSize(context).width,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black.withOpacity(0.2)))),
                          child: InkWell(
                            onTap: () async {
                              try {
                                bank = await showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) {
                                      return SafeArea(
                                        bottom: Platform.isAndroid,
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 60),
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              )),
                                          child: const BankPicker(),
                                        ),
                                      );
                                    });

                                setState(() {});
                              } catch (ex) {
                                print(ex);
                              }
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select bank name",
                                  style: Utilities.fontStyle(15,
                                      FontWeight.w600, const Color(0xffA4A2A2)),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      bank,
                                      style: Utilities.fontStyle(
                                          17, FontWeight.w600, Colors.black),
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xffA4A2A2),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        InputField(
                            label: "Account number", controller: accountNumber),
                        const SizedBox(
                          height: 25,
                        ),
                        InputField(
                            label: "Bank branch", controller: bankBranch),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                            "Ensure the recipient’s bank details are correct. There is no guarantee of refund for the transfers to incorrect acount numbers",
                            style: Utilities.fontStyle(
                                14, FontWeight.w400, const Color(0xffA4A2A2))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AmountExchange()));
                    },
                    child: Container(
                      width: Utilities.getSize(context).width,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        "Save and continue",
                        textAlign: TextAlign.center,
                        style: Utilities.fontStyle(
                            16, FontWeight.bold, Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class CountryPicker extends StatefulWidget {
  const CountryPicker({Key? key}) : super(key: key);

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  TextEditingController searchText = TextEditingController();
  var searchResults = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xfff7f7f7),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
          child: TextField(
            controller: searchText,
            cursorColor: Colors.black,
            style: Utilities.fontStyle(17, FontWeight.w700, Colors.black),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                isCollapsed: true,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "Search country",
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      searchText.text = "";
                      searchResults = [];
                    });
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    CupertinoIcons.clear,
                    color: Colors.black,
                  ),
                ),
                prefixIcon: GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: const Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.black,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                hintStyle: Utilities.fontStyle(
                    15, FontWeight.w500, const Color(0xffA4A2A2))),
            onChanged: (value) {
              searchResults = [];
              for (var item in Utilities.countries) {
                if (item['country']
                    .toString()
                    .toLowerCase()
                    .contains(value.toString().toLowerCase())) {
                  searchResults.add(item);
                }
              }
              setState(() {});
            },
          ),
        ),
        Visibility(
          visible: searchResults.isEmpty,
          child: Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              itemCount: Utilities.countries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pop(context,
                        "${Utilities.countries[index]['country'].toString()}|${Utilities.countries[index]['code'].toString()}");
                  },
                  dense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  minLeadingWidth: 0,
                  title: Text(
                    Utilities.countries[index]['country'].toString(),
                    style:
                        Utilities.fontStyle(15, FontWeight.w400, Colors.black),
                  ),
                );
              },
            ),
          )),
        ),
        Visibility(
          visible: searchResults.isNotEmpty,
          child: Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pop(context,
                        "${searchResults[index]['country'].toString()}|${searchResults[index]['code'].toString()}");
                  },
                  dense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  minLeadingWidth: 0,
                  title: Text(
                    searchResults[index]['country'].toString(),
                    style:
                        Utilities.fontStyle(15, FontWeight.w400, Colors.black),
                  ),
                );
              },
            ),
          )),
        )
      ],
    );
  }
}

class BankPicker extends StatefulWidget {
  const BankPicker({Key? key}) : super(key: key);

  @override
  State<BankPicker> createState() => _BankPickerState();
}

class _BankPickerState extends State<BankPicker> {
  TextEditingController searchText = TextEditingController();
  var searchResults = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Color(0xfff7f7f7),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
          child: TextField(
            controller: searchText,
            cursorColor: Colors.black,
            style: Utilities.fontStyle(17, FontWeight.w700, Colors.black),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                isCollapsed: true,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "Search bank",
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      searchText.text = "";
                      searchResults = [];
                    });
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    CupertinoIcons.clear,
                    color: Colors.black,
                  ),
                ),
                prefixIcon: GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: const Icon(
                    CupertinoIcons.arrow_left,
                    color: Colors.black,
                  ),
                ),
                contentPadding:
                    const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                hintStyle: Utilities.fontStyle(
                    15, FontWeight.w500, const Color(0xffA4A2A2))),
            onChanged: (value) {
              searchResults = [];
              for (var item in Utilities.kenyaBanksList) {
                if (item.toLowerCase().contains(value.toLowerCase())) {
                  searchResults.add(item);
                }
              }
              setState(() {});
            },
          ),
        ),
        Visibility(
          visible: searchResults.isEmpty,
          child: Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              itemCount: Utilities.countries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pop(context, Utilities.kenyaBanksList[index]);
                  },
                  dense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  minLeadingWidth: 0,
                  leading: Icon(
                    Icons.account_balance_rounded,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  title: Text(
                    Utilities.kenyaBanksList[index],
                    style:
                        Utilities.fontStyle(15, FontWeight.w400, Colors.black),
                  ),
                );
              },
            ),
          )),
        ),
        Visibility(
          visible: searchResults.isNotEmpty,
          child: Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pop(context, searchResults[index]);
                  },
                  dense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  minLeadingWidth: 0,
                  leading: Icon(
                    Icons.account_balance_rounded,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  title: Text(
                    searchResults[index],
                    style:
                        Utilities.fontStyle(15, FontWeight.w400, Colors.black),
                  ),
                );
              },
            ),
          )),
        )
      ],
    );
  }
}
