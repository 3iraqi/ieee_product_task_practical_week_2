//Practical Week 2
import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

void main() => runApp(const ProductTask());

class ProductTask extends StatefulWidget {
  const ProductTask({Key? key}) : super(key: key);

  @override
  State<ProductTask> createState() => _ProductTaskState();
}

class _ProductTaskState extends State<ProductTask> {
  double star = 4.0;
  int productNumber = 1;
  String size = "m";
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xff1A1A1A),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
            elevation: 0,
            leading: const Icon(Icons.keyboard_arrow_left_sharp),
            actions: const [
              Icon(Icons.favorite_border),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.shopping_bag_outlined)
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          width: 320,
                          height: 450,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                            image: DecorationImage(
                              image: AssetImage("Assets/images/img.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  size = "s";
                                });
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: size == "s" ? Colors.red : const Color(0xff303030),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  "S",
                                  style: TextStyle(fontFamily: "Audiowide", fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  size = "m";
                                });
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: size == "m" ? Colors.red : const Color(0xff303030),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  "M",
                                  style: TextStyle(fontFamily: "Audiowide", fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  size = "l";
                                });
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: size == "l" ? Colors.red : const Color(0xff303030),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  "L",
                                  style: TextStyle(fontFamily: "Audiowide", fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  size = "xl";
                                });
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: size == "xl" ? Colors.red : const Color(0xff303030),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  "XL",
                                  style: TextStyle(fontFamily: "Audiowide", fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  size = "2xl";
                                });
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: size == "2xl" ? Colors.red : const Color(0xff303030),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  "2XL",
                                  style: TextStyle(fontFamily: "Audiowide", fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                                )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Belgium EURO",
                        style: TextStyle(fontFamily: "Audiowide", fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "20/21 Away by Adidas",
                        style: TextStyle(fontFamily: "Audiowide", fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white54),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Rate(
                              iconSize: 30,
                              color: Colors.red,
                              allowHalf: false,
                              allowClear: false,
                              initialValue: star,
                              readOnly: false,
                              onChange: (value) => setState(() {
                                value != 0 ? star = value : null;
                              }),
                            ),
                            const SizedBox(
                              width: 05,
                            ),
                            Text(
                              star.toString(),
                              style: const TextStyle(fontFamily: "Audiowide", fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white54),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Container(
                              decoration: const BoxDecoration(color: Colors.white12, borderRadius: BorderRadius.all(Radius.circular(15))),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            productNumber == 1 ? null : productNumber--;
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(5))),
                                          child: const Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      productNumber.toString(),
                                      style: const TextStyle(fontSize: 20, fontFamily: "Audiowide", color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            productNumber++;
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(5))),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Details",
                                  style: TextStyle(fontSize: 15, color: Colors.white60, fontFamily: "Audiowide"),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "material: ",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white, fontFamily: "Audiowide"),
                                    ),
                                    Text(
                                      "Polyester",
                                      style: TextStyle(fontSize: 12, color: Colors.white70, fontFamily: "Audiowide"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Shipping: ",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white, fontFamily: "Audiowide"),
                                    ),
                                    Text(
                                      "In 5 to 6 Days",
                                      style: TextStyle(fontSize: 12, color: Colors.white70, fontFamily: "Audiowide"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Returns: ",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white, fontFamily: "Audiowide"),
                                    ),
                                    Text(
                                      "Within 20 Days",
                                      style: TextStyle(fontSize: 12, color: Colors.white70, fontFamily: "Audiowide"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            Container(
                              width: 90,
                              height: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: Colors.red),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$89 ",
                                    style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "Audiowide"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
