import 'package:flutter/material.dart';

class Eg1WidgetsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Eg1WidgetsState();
  }
}

class Eg1WidgetsState extends State<Eg1WidgetsApp> {
  List _fruits = ["Apple", "Banana", "Pineapple", "Mango", "Grapes"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectedFruit;
  int buttonClickCount = 0;

  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(_fruits);
    _selectedFruit = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = new List();
    for (String fruit in fruits) {
      items.add(new DropdownMenuItem(value: fruit, child: new Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      _selectedFruit = selectedFruit;
    });
  }

  void setButtonPressed() {
    setState(() {
      buttonClickCount++;
    });
  }

  Widget listItem(int position) {
    return new Text("Position " + position.toString());
  }

  List<Widget> getListItems() {
    List<Widget> items = new List();

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Container(
          child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Please choose a fruit: "),
                  new Padding(
                    padding: EdgeInsets.all(5),
                    child: new DropdownButton(
                      value: _selectedFruit,
                      items: _dropDownMenuItems,
                      onChanged: changedDropDownItem,
                    ),
                  ),
                  new PaddingText(text: "You selected 33 $_selectedFruit"),
                  new Text("Count is $buttonClickCount"),
                  new Padding(
                    padding: EdgeInsets.all(20),
                    child: new Table(
                      border: TableBorder.all(color: Colors.blue, width: 2.0),
                      children: <TableRow>[
                        new TableRow(children: <Widget>[
                          new PaddingText(text: "Siva is a good boy"),
                          new PaddingText(text: "Peter")
                        ]),
                        new TableRow(children: <Widget>[
                          new FlatButton(
                            onPressed: setButtonPressed,
                            child: new Text("SSSS"),
                            color: Colors.amber,
                          ),
                          new PaddingText(text: "OK I Understand.")
                        ])
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: setButtonPressed,
                    child: new Text("Hello"),
                    color: Colors.blue,
                  ),
                  new SivaButton(expand: Expanded(child: Text('Hello')),text: 'Hai',),
                  //new SivaButton(text: "Isn't this awesome"),
                  new Expanded(
                    child: new ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, position) {
                        return Expanded(
                          child: listItem(position),
                        );
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class SivaButton extends StatelessWidget {
  SivaButton({this.text,this.expand});
   Widget expand;
  String text = "ddd";

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          // lighter gradient effect
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.green]),
            color: Colors.red),
        child: new Padding(
          padding: EdgeInsets.all(10),
          child: new Text(text),
        ));
  }
}

class PaddingText extends StatelessWidget {
  PaddingText({this.text});

  String text = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: new Text(text),
    );
  }
}
