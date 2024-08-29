import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Column(
          children: [
            Text("Pick your character!"), //header
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("Eevee dipilih");
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey),
                            ),
                            child: Image(
                              image: AssetImage("assets/eevee.png"),
                              width: MediaQuery.of(context).size.width * 0.5, // adjust the width based on screen size
                              height: MediaQuery.of(context).size.width * 0.5, // adjust the height based on screen size
                            ),
                          ),
                        ),
                        Text("Eeve!")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Squirtle dipilih");
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey),
                            ),
                            child: Image(
                              image: AssetImage("assets/squirtle.png"),
                              width: MediaQuery.of(context).size.width * 0.5, // adjust the width based on screen size
                              height: MediaQuery.of(context).size.width * 0.5, // adjust the height based on screen size
                            ),
                          ),
                        ),
                        Text("Squirtle!")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Snorlax dipilih");
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey),
                            ),
                            child: Image(
                              image: AssetImage("assets/snorlax.png"),
                              width: MediaQuery.of(context).size.width * 0.5, // adjust the width based on screen size
                              height: MediaQuery.of(context).size.width * 0.5, // adjust the height based on screen size
                            ),
                          ),
                        ),
                        Text("Snorlax!")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Bullbasaur dipilih");
                  },
                  child: Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: const Color.fromARGB(255, 158, 158, 158)),
                            ),
                            child: Image(
                              image: AssetImage("assets/bullbasaur.png"),
                              width: MediaQuery.of(context).size.width * 0.5, // adjust the width based on screen size
                              height: MediaQuery.of(context).size.width * 0.5, // adjust the height based on screen size
                            ),
                          ),
                        ),
                        Text("Bullbasaur")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}