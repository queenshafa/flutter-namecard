import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'namecard',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff390038),
              Color(0xffB301B1),
              Color(0xff5D0093),
              Color(0xff3A086F),
              Color(0xff2B0058),
              Color(0xff0A0113)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                  width: 400,
                  height: 820,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.center,
                        width: 350,
                        height: 100,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff390038),
                                  Color(0xffB301B1),
                                  Color(0xff5D0093),
                                  Color(0xff3A086F),
                                  Color(0xff2B0058),
                                  Color(0xff0A0113)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/profile_pict.png',
                              width: 80,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Queen!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 70),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 350,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xff390038),
                                  Color(0xffB301B1),
                                  Color(0xff5D0093),
                                  Color(0xff3A086F),
                                  Color(0xff2B0058),
                                  Color(0xff0A0113)
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: const Text(
                          'Tech Enthusiast',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 24),
                            padding: const EdgeInsets.all(12),
                            width: 195,
                            height: 240,
                            decoration: const BoxDecoration(
                                color: Color(0xff2B0058),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Biodata!',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 150,
                                height: 120,
                                decoration: const BoxDecoration(
                                    color: Color(0xff3A1264),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'I like..',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Cars, cars, cars, cars, F1, Max Verstappen, Lewis Hamilton',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                width: 150,
                                height: 120,
                                decoration: const BoxDecoration(
                                    color: Color(0xff5D0093),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'I don\'t like..',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Cars, cars, cars, cars, F1, Max Verstappen, Lewis Hamilton',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            width: 150,
                            height: 300,
                            decoration: const BoxDecoration(
                                color: Color(0xff5D0093),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Social',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Cars, cars, cars, cars, F1, Max Verstappen, Lewis Hamilton',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                width: 190,
                                height: 100,
                                decoration: const BoxDecoration(
                                    color: Color(0xff5D0093),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '70+',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 35),
                                        ),
                                        // SizedBox(
                                        //   height: 8,
                                        // ),
                                        Text(
                                          'Projects',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '15+',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 35),
                                        ),
                                        // SizedBox(
                                        //   height: 8,
                                        // ),
                                        Text(
                                          'Certificates',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Image.asset(
                                'assets/images/decoration.png',
                                width: 190,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
