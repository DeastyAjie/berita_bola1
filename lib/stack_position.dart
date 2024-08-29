import 'package:flutter/material.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.width(context).size.width,
              decoration: BoxDecoration(
              color: Colors.purple, 
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                )
              ),
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    child: Image(
                      image: AssetImage("assets/uang.png"), //width: MediaQuery.of(context).size.width * 35 / 100,
                      width: 150,
                     ),          
                   ),
                   Positioned(
                    top : 170,
                    child: Text(
                      "Saldo Rp. 1.000.000,-",
                       style: TextStyle(fontSize:14),
                      )  
                    )
                ],
              )
              
              // Column(
              //   children: [
              //     Image(image: AssetImage("assets/uang.png"),
              //     width: MediaQuery.of(context).size.width * 35 / 100,
              //     width: 150,
              //     ),               
              //     Container(
              //       width: MediaQuery.of(context).size.width,
              //       padding: EdgeInsets.only(left:8, right: 8),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             "Saldo : Rp. 1.000.000,-",
              //           style: TextStyle(fontSize:14),
              //           ),
              //           Icon(
              //             Icons.person
              //             size: 40,
              //             )
              //         ],
              //       ),
              //     )
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}