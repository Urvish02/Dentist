import 'package:dentist/Treatment_plan.dart';
import 'package:dentist/xray_ct.dart';
import 'package:flutter/material.dart';

class photodetails extends StatefulWidget {
  static String id = 'photo_details';

  @override
  _photodetailsState createState() => _photodetailsState();
}

class _photodetailsState extends State<photodetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, Treatmentplan.id);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, xrayct.id);
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
      body: Text('photodetails'),
    );
  }
}
