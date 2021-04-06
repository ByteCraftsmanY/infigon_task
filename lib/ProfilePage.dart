import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:infigon_task/Components/CardHeader.dart';
import 'package:infigon_task/Components/rowvalue.dart';
import 'package:infigon_task/Constant.dart';
import 'package:infigon_task/Provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String s;
    String t;
    String u;
    return Consumer<MyProvider>(
      builder: (context, value, child) {
        return Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    // color: kFontColors,
                    gradient: LinearGradient(
                        colors: [kFontColors, Colors.blueAccent[100]],
                        begin: Alignment.center),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Sign Out',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: value.img,
                        ),
                        title: Text(
                          'Virat Singh',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: Container(
                          height: 12,
                          child: Row(
                            children: [
                              Text(
                                'Target Industry : ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              DropdownButton<String>(
                                icon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                dropdownColor: kFontColors,
                                underline: Container(
                                  height: 0,
                                ),
                                value: value.dsl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10),
                                onChanged: (String newValue) {
                                  value.dslChange(newValue);
                                },
                                items:
                                    value.industy.map<DropdownMenuItem<String>>(
                                  (String val) {
                                    return DropdownMenuItem(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 3,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '100% Completed',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CardHeading(
                                label: 'Personal',
                                fun: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          child: ListView(
                                            children: [
                                              Flexible(
                                                child: Container(
                                                  margin: EdgeInsets.all(30),
                                                  child: Center(
                                                    child: Text(
                                                      'Update Personal Data',
                                                      style: TextStyle(
                                                          fontSize: 30),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              ListTile(
                                                trailing: IconButton(
                                                  icon:
                                                      Icon(Icons.upload_sharp),
                                                  onPressed: () {
                                                    value.change(
                                                        s: t, key: 'dob');
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                leading: Icon(
                                                    Icons.calendar_today_sharp),
                                                title: TextField(
                                                  onChanged: (val) {
                                                    t = val;
                                                  },
                                                  decoration:
                                                      kInputDecoration.copyWith(
                                                          hintText:
                                                              'Enter Date of Birth'),
                                                ),
                                              ),
                                              ListTile(
                                                trailing: IconButton(
                                                  icon:
                                                      Icon(Icons.upload_sharp),
                                                  onPressed: () {
                                                    value.change(
                                                        s: s, key: 'email');
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                leading: Icon(Icons.email),
                                                title: TextField(
                                                  decoration:
                                                      kInputDecoration.copyWith(
                                                          hintText:
                                                              'Enter Email'),
                                                  onChanged: (val) {
                                                    s = val;
                                                  },
                                                ),
                                              ),
                                              ListTile(
                                                trailing: IconButton(
                                                  icon:
                                                      Icon(Icons.upload_sharp),
                                                  onPressed: () {
                                                    value.change(
                                                        s: u, key: 'loc');
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                leading:
                                                    Icon(Icons.location_on),
                                                title: TextField(
                                                  decoration:
                                                      kInputDecoration.copyWith(
                                                          hintText:
                                                              'Enter Location'),
                                                  onChanged: (val) {
                                                    u = val;
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                              ),
                              RowData(
                                  label: 'Date Of Birth',
                                  value: value.personal['dob']),
                              RowData(
                                  label: 'Email',
                                  value: value.personal['email']),
                              RowData(
                                  label: 'Location',
                                  value: value.personal['loc']),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CardHeading(
                                leading: FaIcon(FontAwesomeIcons.graduationCap),
                                label: 'Education',
                                fun: () {
                                  buildShowDialog(context);
                                },
                              ),
                              RowData(
                                  label: 'B-Tech in Softwere Engineering',
                                  value: value.education[
                                      'B-Tech in Software Engineering']),
                              RowData(
                                  label: 'Standard',
                                  value: value.education['Standard']),
                              RowData(
                                  label: 'Location',
                                  value: value.education['Location']),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CardHeading(
                                label: 'Experience',
                                fun: () {
                                  buildShowDialog(context);
                                },
                              ),
                              RowData(
                                  label: 'B-Tech in Softwere Engineering',
                                  value: value.experience[
                                      'B-Tech in Software Engineering']),
                              RowData(
                                  label: 'B-Tech in Softwere Engineering',
                                  value: value.experience[
                                      'B-Tech in Software Engineering']),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Suggetion will appear here'),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 30,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [kFontColors, Colors.blueAccent[100]],
                                begin: Alignment.center),
                          ),
                          child: Center(
                            child: Text(
                              'EDIT SUGGESTED TARGET',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.home,
                            color: kFontColors,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.compass),
                          onPressed: () {
                            buildShowBottomSheet(context, 'Explore');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.graduationCap),
                          onPressed: () {
                            buildShowBottomSheet(context, 'Institutes');
                          }),
                      IconButton(
                          icon: Icon(Icons.notifications_rounded),
                          onPressed: () {
                            buildShowBottomSheet(context, 'Notification');
                          }),
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.questionCircle),
                          onPressed: () {
                            buildShowBottomSheet(context, 'Help');
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Note'),
            content: Text(' this will work same as personal'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        });
  }

  PersistentBottomSheetController buildShowBottomSheet(
      BuildContext context, String value) {
    return showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.white,
            child: Center(
              child: Text(value),
            ),
          );
        });
  }
}
