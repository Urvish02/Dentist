import 'package:dentist/Treatment_plan.dart';
import 'package:flutter/material.dart';

class PatientDetails extends StatefulWidget {
  static String id = 'patient_details';

  @override
  _PatientDetailsState createState() => _PatientDetailsState();
}

enum ans1 { a, b, c }

class _PatientDetailsState extends State<PatientDetails> {
  ans1 star1 = ans1.a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Patient Data'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                onPressed: null,
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, Treatmentplan.id);
                  print('dsa');
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
              height: 7,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Surname',
                  labelText: 'Surname',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey[300],
                  filled: true),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Your Name',
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey[300],
                  filled: true),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Father Name',
                  labelText: 'Father Name',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey[300],
                  filled: true),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'Gender :',
              style: TextStyle(fontSize: 20.0),
            ),
            ListTile(
              title: const Text('Male'),
              leading: Radio(
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
              title: const Text('Female'),
              leading: Radio(
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
              title: const Text('Other'),
              leading: Radio(
                value: ans1.c,
                groupValue: star1,
                onChanged: (ans1 value) {
                  setState(() {
                    star1 = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 9,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'DOB',
                  labelText: 'Date of Birth',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey[300],
                  filled: true),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey[300],
                  filled: true),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'Enter your comment :',
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "comment",
                  labelText: "Enter your comment",
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
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey[300],
                  filled: true),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail Address',
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.grey[300],
                  filled: true),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 8,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text('Submit'),
            )
          ],
        ));
  }
}
