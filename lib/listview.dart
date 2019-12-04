import 'package:flutter/material.dart';

class Install_ninja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.yellow.shade100,
        child: Material(
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('Ninja Number'),
              ),
              body: Center(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Center(
                          child: Center(
                            child: Text(
                              'Please Install Ninja Number',
                              style: TextStyle(fontSize: 19),
                            ),
                          )),
                    ),
                    Center(
                      child: OutlineButton(
                        child: Text('Install'),
                        onPressed: () {}, //callback when button is clicked
                        borderSide: BorderSide(
                          color: Colors.green, //Color of the border
                          style: BorderStyle.solid, //Style of the border
                          width: 0.8, //width of the border
                        ),
                        color: Colors.green,
                      ),

                    )

                  ],
                ),
              )),
        ));
  }
}
