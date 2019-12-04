import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/listview.dart';

class drawer_state extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return drawer();
  }

}
class drawer extends State<drawer_state> {
  bool _value1 = true;
  bool _value2 = false;
  int count=0;
  void _onChanged1(bool value) => setState(() => _value1 = value);
  void _onChanged2(bool value) => setState(() => _value2 = value);
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
    return new Container(
      padding: EdgeInsets.zero,
      child: Column(
        children: <Widget>[
          build_Header(context),
          build_pop_up(context),
          build_Count_messages(),
          Container(
            margin: EdgeInsets.only(left: 12.3, right: 12.3),
            child: Divider(
              thickness: 0.9,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: buildAllMenus(context),
          ),
          Container(
            height: 55.3,
            color: Colors.redAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text('Hold My Calls',style: TextStyle(fontSize: 19,color: Colors.white),),
                  padding: EdgeInsets.all(15.3),
                ),

                Switch(
                  value: false,
                  onChanged: _onChanged1,
                  activeColor: Colors.yellow,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  activeTrackColor: Colors.white,
                  inactiveThumbColor: Colors.green,
                )

              ],
            ),
          )
        ],
      ),
    );
  }

  Widget build_Header(BuildContext context) {
    return new DrawerHeader(
      padding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.zero,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [Colors.redAccent, Colors.orange],
              begin: Alignment.centerRight,
              end: new Alignment(-1.0, -4.0)),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/Install_ninja');
                    }),
                Container(
                  margin: EdgeInsets.only(top: 12.3, left: 26.3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/Images/ninja_logo.jpg'),
                        radius: 30.9,
                        child: Container(
                          margin: EdgeInsets.only(left: 12.6),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 9.3),
                                child: Text(
                                  'Ninja'.toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 9.3),
                                    child: Text(
                                      'number'.toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              heightFactor: 3.9,
              child: Text('Life is calling always Answer',style: TextStyle(color: Colors.white,fontSize: 17),),
            )
          ],
        ),
      ),
    );
  }

  Widget buildFooter() {
    return Container(
      color: Colors.orange,
      child: Row(
        children: <Widget>[
          Padding(
              child: Text(
                "Terms",
                style: TextStyle(color: Colors.white),
              ),
              padding: EdgeInsets.zero),
          SafeArea(
              child: Icon(
                Icons.edit,
              )),
          SafeArea(
              child: Icon(
                Icons.delete,
                color: Colors.red,
              )),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Welcome to ninja number",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            )),
        Icon(
          Icons.star,
          size: 100,
          color: Colors.green,
        )
      ],
    );
  }

  Widget buildAllMenus(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                  leading: Icon(
                    Icons.assessment,
                    size: 32,
                    color: Colors.grey,
                  ),
                  title: Container(
                    child: Text(
                      'Reports',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              ListTile(
                leading: Icon(
                  Icons.flare,
                  size: 32,
                  color: Colors.grey,
                ),
                title: Container(
                  child: Text(
                    'Refferals',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.lightbulb_outline,
                  size: 32,
                  color: Colors.grey,
                ),
                title: Container(
                  child: Text(
                    'Insights',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
                title: Container(
                  child: Text(
                    'NinjaBot',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  size: 32,
                  color: Colors.grey,
                ),
                title: Container(
                  child: Text(
                    'About',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  size: 32,
                  color: Colors.grey,
                ),
                title: Container(
                  child: Text(
                    'Help',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.swap_horiz,
                  size: 32,
                  color: Colors.grey,
                ),
                title: Container(
                  child: Text(
                    'Switch Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                child: buildlogout_pop(context),
              ),
              ListTile(
                leading: Icon(
                  Icons.rate_review,
                  size: 32,
                  color: Colors.grey,
                ),
                title: Container(
                  child: Text(
                    'Review us',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Install_ninja()),
                  );
                },
              )
            ],
          ),
        ));
  }

  Widget buildlogout_pop(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(
          Icons.input,
          size: 32,
          color: Colors.grey,
        ),
        title: Container(
          child: Text(
            'Log out',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return new Dialog(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          style: BorderStyle.solid, color: Colors.white),
                      borderRadius: BorderRadius.circular(10.3)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12.6, top: 22.6),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Do you want to Logout',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            margin: EdgeInsets.only(top: 12.6, bottom: 10.6),
                          ),
                        ],
                      ),
                      Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 23.6,
                          indent: 15.3,
                        ),
                        //margin: EdgeInsets.only(right: 12.6),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              child: FlatButton(
                                onPressed: () => Navigator.pop(context),
                                child: SafeArea(
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 17),
                                    )),
                              ),
                              margin: EdgeInsets.only(bottom: 12.3),
                            ),
                            Container(
                              child: FlatButton(
                                child: SafeArea(
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 17),
                                    )),
                                onPressed: () => Navigator.pop(context),
                              ),
                              margin: EdgeInsets.only(bottom: 12.3),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              });
        },
      ),
    );
  }

  Widget build_Count_messages() {
    return Container(
        margin: EdgeInsets.all(6.3),
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone_in_talk,
                  color: Colors.green,
                ),
                Row(children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          count.toString(),
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        margin: EdgeInsets.only(left: 9.6),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Calls received',
                              style:
                              TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            margin: EdgeInsets.only(left: 9.6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 9.3, top: 12.9, right: 4.9),
              width: 1,
              color: Colors.grey,
              height: 35.3,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.message,
                  color: Colors.green,
                ),
                Row(children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          count.toString(),
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        margin: EdgeInsets.only(left: 9.6),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Texts received',
                              style:
                              TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            margin: EdgeInsets.only(left: 9.6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ));
  }

  Widget buildMenuItem(String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(name),
          padding: EdgeInsets.all(10.0),
        ),
        Container(
          height: 1,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget build_pop_up(BuildContext context) {
    return new Container(
      child: new RaisedButton(
        child: const Text('My Team Details'),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        splashColor: Colors.amberAccent,
        textColor: const Color(0xFFFFFFFF),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return new Dialog(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          style: BorderStyle.solid, color: Colors.white),
                      borderRadius: BorderRadius.circular(9.3)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          FlatButton(
                            child: CircleAvatar(
                              child: Icon(
                                Icons.close,
                                color: Colors.grey,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Center(
                            child: Container(
                              child: Text(
                                'My Team',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                              margin: EdgeInsets.only(top: 30.6, bottom: 6.6),
                            ),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 23.6,
                          indent: 15.3,
                        ),
                        margin: EdgeInsets.only(right: 12.6),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12.3)),
                              child: Image.asset(
                                'assets/Images/ninja_logo.jpg',
                                height: 45.3,
                              ),
                              margin: EdgeInsets.only(left: 12.6),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text('these ate gfdg gfjhkfjl')
                                    ],
                                  )
                                ],
                              ),
                              margin: EdgeInsets.only(left: 12.3),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
