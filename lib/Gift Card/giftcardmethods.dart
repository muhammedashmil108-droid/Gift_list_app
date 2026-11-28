import 'package:flutter/material.dart';

Widget giftCard(
  String image,
  String name,
  String person,
  String price,
  String status,
  Color statusColor,
) {
  return Card(
    color: Colors.white,
    elevation: 2,
    margin:  EdgeInsets.only(bottom: 8),

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),

    child: Column(
      children: [

        // ListTile
        ListTile(
          contentPadding:  EdgeInsets.all(6),

          // Leading Image
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Three Texts
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                name,
                style:  TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),

               SizedBox(height: 8),

              Text(
                person,
                style:  TextStyle(
                  fontSize: 11,
                ),
              ),

               SizedBox(height: 5),

              Text(
                price,
                style:  TextStyle(
                  fontSize: 11,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),

        // Status Container
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin:  EdgeInsets.only(
              right: 8,
              bottom: 5,
            ),
            padding:  EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),

            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Text(
              status,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

      ],
    ),
  );
}