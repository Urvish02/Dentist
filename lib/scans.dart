import 'package:dentist/xray_ct.dart';
import 'package:flutter/material.dart';

class scans extends StatefulWidget {
  static String id = 'scans';

  @override
  _scansState createState() => _scansState();
}

class _scansState extends State<scans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scans / Impressions'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, xrayct.id);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            FlatButton(
              onPressed: null,
              child: Icon(
                Icons.arrow_forward,
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
      body: Text('scans'),
    );
  }
}
