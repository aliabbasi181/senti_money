import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senti/Views/Authentication/enter_person_details.dart';
import 'package:senti/utilities.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({Key? key}) : super(key: key);

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  TextEditingController searchText = TextEditingController();
  var searchResults = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: Utilities.getSize(context).height,
        width: Utilities.getSize(context).width,
        child: SafeArea(
          bottom: Platform.isAndroid,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: const Color(0xfff7f7f7),
                child: TextField(
                  controller: searchText,
                  cursorColor: Colors.black,
                  style: Utilities.fontStyle(17, FontWeight.w700, Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      isCollapsed: true,
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Search country",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            searchText.text = "";
                            searchResults = [];
                          });
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
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    "What country are you sending from?",
                    style:
                        Utilities.fontStyle(15, FontWeight.w700, Colors.black),
                  ),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EnterPersonDetails(
                                        country: Utilities.countries[index],
                                      )));
                        },
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        visualDensity:
                            const VisualDensity(horizontal: 0, vertical: -4),
                        minLeadingWidth: 0,
                        title: Text(
                          Utilities.countries[index]['country'].toString(),
                          style: Utilities.fontStyle(
                              15, FontWeight.w400, Colors.black),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EnterPersonDetails(
                                        country: searchResults[index],
                                      )));
                        },
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        visualDensity:
                            const VisualDensity(horizontal: 0, vertical: -4),
                        minLeadingWidth: 0,
                        title: Text(
                          searchResults[index]['country'].toString(),
                          style: Utilities.fontStyle(
                              15, FontWeight.w400, Colors.black),
                        ),
                      );
                    },
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
