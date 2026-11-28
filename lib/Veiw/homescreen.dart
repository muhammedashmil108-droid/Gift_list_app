import 'package:flutter/material.dart';
import 'package:gift_list_app/Colors/appcolour.dart';
import 'package:gift_list_app/Gift%20Card/giftcardmethods.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColour.purple,
       title: Text(
        "GIFT LIST",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
       ),
       centerTitle: true,
         shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(15),
    ),
  ),
      ),
  body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:AppColour.backgroundGradient,
        ),

        child: Padding(
          padding: EdgeInsets.all(22),

          child: Column(
            children: [


              // Category Filters

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // All

                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: MainColour.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "All",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                  // Pending

                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Pending",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                    // Purchased
            Container(
              padding:  EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child:  Text(
                'Purchased',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 15,),
            

            // Gift cards

            Expanded(
              child:ListView(
                children: [

                  //  Watch
                  giftCard(
                    'assets/images/Giftcardbox.png',
                    'Watch',
                    'For : Friend',
                    '₹1500',
                    'Purchased',
                    Colors.green,
                  ),

                  

                // Headphone 
                  giftCard(
                    'assets/images/headphone.png',
                    'Watch',
                    'For : Friend',
                    '₹1500',
                    'Purchased',
                    Colors.green,
                  ),


                     

                //  Book
                  giftCard(
                    'assets/images/book.png',
                    'Watch',
                    'For : Friend',
                    '₹1500',
                    'Purchased',
                    Colors.green,
                  ),



               

                  //  Perfume
                  giftCard(
                    'assets/images/perfume.png',
                    'Watch',
                    'For : Friend',
                    '₹1500',
                    'Purchased',
                    Colors.green,
                  ),


                  
                ],
              ), 
              ),
          
                ],
              )
            ],
          ),
          ),
    
  )
  );
  }
}