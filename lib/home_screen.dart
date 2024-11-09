import 'dart:math';

import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';


TextEditingController ageController = TextEditingController();
TextEditingController weightController = TextEditingController();
TextEditingController heightController = TextEditingController();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF376996),
        appBar: AppBar(
          title: Text(
            'Kalkulator BMI',
            style: TextStyle(
                fontFamily: 'ManropeBold', fontSize: 32, color: Colors.white),
          ),
          backgroundColor: Color(0xFF376996),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 20),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  color: Color(0xFF1F487E),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 24 ),
                      Container(
                        margin: const EdgeInsets.only(left: 21.9),
                        child: Text(
                          textAlign: TextAlign.left,
                          'Jenis Kelamin',
                          style: TextStyle(
                              fontFamily: 'ManropeBold',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 16.0),
                            child: const GenderSelectButton(),
                          )
                        ],
                      ),
                      Container(
                        child: const TextInputForm(),
                      ),
                      SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  double weight = double.parse(weightController.text);
                                  double height = double.parse(heightController.text)/100;
                                  double result = weight / pow(height, 2);
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return ResultScreen(result: result);
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff1D3461)
                                ),
                                child: Text(
                                  'Hitung Index',
                                  style: TextStyle(
                                      fontFamily: 'ManropeBold',
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                      SizedBox(height: 16)
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 31.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 4),
                      Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        color: Color(0xFF1F487E),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 18),
                            Container(
                              margin: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Apa itu BMI?',
                                style: TextStyle(
                                    fontFamily: 'ManropeBold',
                                    fontSize: 24,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              margin: const EdgeInsets.only(left: 16.0, right: 16.61),
                              child: Text(
                                'Body Mass Indexing atau BMI adalah suatu metode pengukuran yang digunakan untuk menentukan kategori berat badan ideal seseorang. Metode perhitungan ini awalnya dikembangkan pada abad 19 oleh Adolphe Quetelet. Adapun istilah lain dalam menyebut BMI adalah indeks massa tubuh (IMT).'
                                ,
                                style: TextStyle(
                                    fontFamily: 'Abel',
                                    fontSize: 16,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            SizedBox(height: 22)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]
          ),
        )
    );
  }
}



class TextInputForm extends StatelessWidget {
  const TextInputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 31),
          child: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 62,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF1d3461)
                    ),
                    child: TextField(
                      controller: ageController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                          fontFamily: 'ManropeBold',
                          fontSize: 36,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Umur',
                    style: TextStyle(
                        fontFamily: 'ManropeBold',
                        fontSize: 16,
                        color: Colors.white
                    ),
                  )
                ],
              ),
              SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 62,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF1d3461)
                    ),
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                      style: TextStyle(
                          fontFamily: 'ManropeBold',
                          fontSize: 36,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Berat (kg)',
                    style: TextStyle(
                        fontFamily: 'ManropeBold',
                        fontSize: 16,
                        color: Colors.white
                    ),
                  )
                ],
              ),
              SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 62,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF1d3461)
                    ),
                    child: TextField(
                      controller: heightController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,

                      ),
                      style: TextStyle(
                          fontFamily: 'ManropeBold',
                          fontSize: 36,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Tinggi (cm)',
                    style: TextStyle(
                        fontFamily: 'ManropeBold',
                        fontSize: 16,
                        color: Colors.white
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}


enum Gender { pria, wanita }

class GenderSelectButton extends StatefulWidget {
  const GenderSelectButton({super.key});

  @override
  _GenderSelectState createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelectButton> {
  Gender? _gender = Gender.pria;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          width: 349,
          height: 62,
          decoration: BoxDecoration(
              color: Color(0xFF1d3461),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: ListTile(
              title: const Text(
                'Pria',
                style: TextStyle(
                    fontFamily: 'Abel', fontSize: 25, color: Colors.white),
              ),
              leading: Radio<Gender>(
                value: Gender.pria,
                groupValue: _gender,
                onChanged: (Gender? value) {
                  setState(() {
                    _gender = value;
                  });
                },
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
          width: 349,
          height: 62,
          decoration: BoxDecoration(
              color: Color(0xFF1d3461),
              borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            title: const Text('Wanita',
                style: TextStyle(
                    fontFamily: 'Abel', fontSize: 25, color: Colors.white)),
            leading: Radio<Gender>(
              value: Gender.wanita,
              groupValue: _gender,
              onChanged: (Gender? value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
