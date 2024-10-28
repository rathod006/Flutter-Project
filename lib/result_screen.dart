import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kalkulator BMI',
          style: TextStyle(
              fontFamily: 'ManropeBold', fontSize: 32, color: Colors.white),
        ),
        backgroundColor: Color(0xFF376996),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF376996),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              color: Color(0xFF1F487E),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 16),
                  Text(
                      'Indeks BMI kamu adalah',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 17),
                  Container(
                    width: 256,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFF041F37),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Text(
                        '19.2',
                        style: TextStyle(
                          fontFamily: 'ManropeBold',
                          fontSize: 68,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  Center(
                    child: Text(
                        'Normal',
                      style: TextStyle(
                        fontFamily: 'ManropeBold',
                        fontSize: 39,
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 33),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              color: Color(0xFF1F487E),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 31),
                    child: Text(
                        'Kategori Indeks BMI*',
                      style: TextStyle(
                        fontFamily: 'ManropeBold',
                        fontSize: 20,
                        color: Colors.white
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 21),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 43),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '< 18.5',
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(width: 69),
                            Text(
                              'Dibawah Normal',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFF172747),
                        thickness: 1,
                        indent: 21,
                        endIndent: 21,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 43),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '18.5 - 22.9',
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(width: 69),
                            Text(
                              'Normal',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFF172747),
                        thickness: 1,
                        indent: 21,
                        endIndent: 21,
                      ),
                      Container(
                        // margin: const EdgeInsets.only(left: 43),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '23 - 24.9',
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              'Berlebih',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xFF172747),
                        thickness: 1,
                        indent: 21,
                        endIndent: 21,
                      ),
                      Container(
                        // margin: const EdgeInsets.only(left: 43),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '25 <=',
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              'Obesitas',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Abel',
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}