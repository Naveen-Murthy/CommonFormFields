import 'package:flutter/material.dart';

class FormOutput extends StatefulWidget {
  var data;
  FormOutput({
    this.data,
  });
  @override
  _FormOutputState createState() => _FormOutputState();
}

class _FormOutputState extends State<FormOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Output'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            print(widget.data);
          },
          child: Text('Click here to see data in console'),
        ),
      ),
    );
  }
}
