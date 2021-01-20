import 'package:dentist/patient_details.dart';
import 'package:dentist/photo_details.dart';
import 'package:flutter/material.dart';

class Treatmentplan extends StatefulWidget {
  static String id = 'Treatment_plan';

  @override
  _TreatmentplanState createState() => _TreatmentplanState();
}

enum ans1 { a, b, c }
enum ans2 { a, b, c, d }
enum ans3 { a, b }
enum ans4 { a, b }
enum ans5 { a, b }

class _TreatmentplanState extends State<Treatmentplan> {
  ans1 star1 = ans1.a;
  ans2 star2 = ans2.a;
  ans3 star3 = ans3.a;
  ans4 star4 = ans4.a;
  ans5 star5 = ans5.a;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treatment Plan'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, PatientDetails.id);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, photodetails.id);
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
            FlatButton(
              onPressed: null,
              child: Icon(Icons.close),
            ),
            FlatButton(
              onPressed: null,
              child: Icon(Icons.check),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 13,
          ),
          Text(
            '1. Preferred treatment for',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          ListTile(
            title: const Text(
              'only the upper jaw',
            ),
            leading: Radio(
              activeColor: Colors.pinkAccent,
              value: ans1.a,
              groupValue: star1,
              onChanged: (ans1 value) {
                setState(() {
                  star1 = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              'only the lower jaw',
            ),
            leading: Radio(
              activeColor: Colors.pinkAccent,
              value: ans1.b,
              groupValue: star1,
              onChanged: (ans1 value) {
                setState(() {
                  star1 = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              'upper and lower jaw',
            ),
            leading: Radio(
              activeColor: Colors.pinkAccent,
              value: ans1.c,
              groupValue: star1,
              onChanged: (ans1 value) {
                setState(() {
                  star1 = value;
                });
              },
            ),
          ),
          Builder(builder: (context) {
            if (star1 == ans1.c)
              return Column(
                children: [
                  Text(
                    '1(a). Aligner production',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  ListTile(
                    title: Text('answer 1'),
                    leading: Radio(
                      activeColor: Colors.black,
                      value: ans5.a,
                      groupValue: star5,
                      onChanged: (ans5 value) {
                        setState(() {
                          star5 = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('answer 2'),
                    leading: Radio(
                      activeColor: Colors.black,
                      value: ans5.b,
                      groupValue: star5,
                      onChanged: (ans5 value) {
                        setState(() {
                          star5 = value;
                        });
                      },
                    ),
                  ),
                ],
              );
            else
              return Container(
                width: 0,
                height: 0,
              );
          }),
          SizedBox(
            height: 13,
          ),
          Text(
            '2. Provide treatment in the area',
            style: TextStyle(fontSize: 20.0),
          ),
          ListTile(
            title: const Text('About the frontal region (3-3)'),
            leading: Radio(
              activeColor: Colors.teal,
              value: ans2.a,
              groupValue: star2,
              onChanged: (ans2 value) {
                setState(() {
                  star2 = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('frontal and lateral sections (5-5)'),
            leading: Radio(
              activeColor: Colors.teal,
              value: ans2.b,
              groupValue: star2,
              onChanged: (ans2 value) {
                setState(() {
                  star2 = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('whole jaw (7-7)'),
            leading: Radio(
              activeColor: Colors.teal,
              value: ans2.c,
              groupValue: star2,
              onChanged: (ans2 value) {
                setState(() {
                  star2 = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('other'),
            leading: Radio(
              activeColor: Colors.teal,
              value: ans2.d,
              groupValue: star2,
              onChanged: (ans2 value) {
                setState(() {
                  star2 = value;
                });
              },
            ),
          ),
          Builder(builder: (context) {
            if (star2 == ans2.d)
              return TextField(
                decoration: InputDecoration(
                    hintText: "Enter your comment",
                    labelStyle: TextStyle(fontSize: 2),
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: UnderlineInputBorder()),
                obscureText: false,
                maxLines: 2,
              );
            else
              return Container(
                width: 0,
                height: 0,
              );
          }),
          SizedBox(
            height: 13,
          ),
          Text(
            '3. When using additional equipment, do',
            style: TextStyle(fontSize: 20.0),
          ),
          ListTile(
            title: const Text('Button cutouts'),
            leading: Radio(
              activeColor: Colors.green,
              value: ans3.a,
              groupValue: star3,
              onChanged: (ans3 value) {
                setState(() {
                  star3 = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('hooks'),
            leading: Radio(
              activeColor: Colors.green,
              value: ans3.b,
              groupValue: star3,
              onChanged: (ans3 value) {
                setState(() {
                  star3 = value;
                });
              },
            ),
          ),
          Text(
            '4. Desired class at  the end of treatment',
            style: TextStyle(fontSize: 20.0),
          ),
          ListTile(
            title: const Text('do not change the closing class'),
            leading: Radio(
              activeColor: Colors.orangeAccent,
              value: ans4.a,
              groupValue: star4,
              onChanged: (ans4 value) {
                setState(() {
                  star4 = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('About to achieve class'),
            leading: Radio(
              activeColor: Colors.orangeAccent,
              value: ans4.b,
              groupValue: star4,
              onChanged: (ans4 value) {
                setState(() {
                  star4 = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 13,
          ),
          CheckboxListTile(
            title: const Text('There are missing / '
                'extracted teeth, '
                'crowns or activators'),
            activeColor: Colors.black,
            value: checkboxValue,
            onChanged: (bvalue) {
              setState(() {
                checkboxValue = bvalue;
              });
            },
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Special instructions :',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "instructions",
                labelText: "Special instructions",
                labelStyle: TextStyle(fontSize: 2),
                fillColor: Colors.grey[300],
                filled: true,
                border: UnderlineInputBorder()),
            obscureText: false,
            maxLines: 2,
          ),
          SizedBox(
            height: 13,
          ),
        ],
      ),
    );
  }
}
