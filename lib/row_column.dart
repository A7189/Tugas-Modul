import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("OVO"),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: Text("Promo"),
              )
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images.jpeg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Text("OVO Cash", style: TextStyle(color: Colors.white)),
                  Text("Total saldo:", style: TextStyle(color: Colors.white)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rp.1.000.000",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("64 Poin"),
                        ),
                      ])
                ],
              ),
            ),
            Container(

            ),
            SizedBox(height: 15),
            Container(
              child:SingleChildScrollView( scrollDirection: Axis.horizontal,
                child: 
               Row(children: [
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 99, 99, 99)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/grad.jpeg"),
                      fit: BoxFit.cover,),
                      Text("FERAWR"),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 99, 99, 99)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/FERARI.jpeg"),
                      ),
                      Text("FERAWR")
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 99, 99, 99)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/FERARI.jpeg"),
                      ),
                      Text("FERAWR")
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 99, 99, 99)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("assets/FERARI.jpeg"),
                      ),
                      Text("FERAWR")
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 99, 99, 99)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('./ferari.jpeg'),
                      ),
                      Text("FERAWR")
                    ],
                  ),
                ),
                 SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 99, 99, 99)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('./ferari.jpeg'),
                      ),
                      Text("FERAWR")
                    ],
                  ),
                ),
                 SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('./ferari.jpeg'),
                      ),
                      Text("FERAWR")
                    ],
                  ),
                ),
                 SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 148,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(221, 99, 99, 99)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('./ferari.jpeg'),
                      ),
                      Text("FERAWR")
                    ],
                  ),
                ),
              ]),
            ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                image: DecorationImage(image: AssetImage("assset/grad.jpeg")),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                children: [
                  Row(
                    children: [Column()],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
