import 'package:flutter/material.dart';
import 'package:senti/utilities.dart';

class SendAgainUser extends StatelessWidget {
  String name;
  String? image = "";
  SendAgainUser({Key? key, required this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: image != null
                  ? DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image!))
                  : null,
              borderRadius: BorderRadius.circular(18),
              color: image == null ? Colors.grey : null),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: Utilities.fontStyle(14, FontWeight.w600, Colors.black),
        ),
      ],
    );
  }
}

class TransactionHistoryUserInstance extends StatelessWidget {
  String name;
  String? image = "";
  TransactionHistoryUserInstance({Key? key, required this.name, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              image: image != null
                  ? DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image!))
                  : null,
              borderRadius: BorderRadius.circular(100),
              color: image == null ? Colors.grey : null),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Utilities.fontStyle(15, FontWeight.w700, Colors.black),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "twahir@gmail.com",
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Utilities.fontStyle(
                    14, FontWeight.w600, Colors.grey.shade500),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$250",
              style: Utilities.fontStyle(16, FontWeight.w900, Colors.black),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              "2022-02-22",
              style: Utilities.fontStyle(
                  13, FontWeight.w600, Colors.grey.shade500),
            ),
          ],
        ),
      ],
    );
  }
}
