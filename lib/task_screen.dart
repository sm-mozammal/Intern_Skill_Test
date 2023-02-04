import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skill_test/style/style.dart';
import 'package:skill_test/widgets/bottomnavigation.dart';
import 'package:skill_test/widgets/reminder_widgets.dart';
import 'package:skill_test/widgets/taskwidget.dart';

class taskScreen extends StatefulWidget {
  const taskScreen({Key? key}) : super(key: key);

  @override
  State<taskScreen> createState() => _taskScreenState();
}

class _taskScreenState extends State<taskScreen> {
  int currentPos = 0;
  final List<Widget> sliderList = [
    ReminderWidget(
        textTitle: 'Online Class Routine',
        textSubTitle: 'Save Date : 12/12/2022',
        img: 'images/todo1.png'),
    ReminderWidget(
        textTitle: 'Office Work List',
        textSubTitle: 'Save Date : 12/12/2022',
        img: 'images/todo2.png'),
    ReminderWidget(
        textTitle: 'Day Task',
        textSubTitle: 'Save Date : 12/12/2022',
        img: 'images/todo3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                FractionallySizedBox(
                  child: Image.asset(
                    'images/bg.png',
                    height: 386,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 24,
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 5, ),
                          title: Text(
                            'Hi, Habib 👋',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'inter',
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('Lets explore you notes',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'inter',
                                  color: Color(0xFFb2ffffff),
                                  fontWeight: FontWeight.w400)),
                          trailing: CircleAvatar(
                            backgroundColor: Color(0xFF24966D),
                            radius: 40,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage(
                                'images/img.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 165,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        //     shape: RoundedRectangleBorder(
                        // borderRadius: BorderRadius.circular(15)),
                          color: Color.fromRGBO(255, 255, 255, 0.1),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome to TickTick Task',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Inter'),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                  'Your one-stop app for task management. Simplify, track, and accomplish tasks with ease.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xb2ffffff),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter')),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xFF24966D)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            // side: BorderSide(color: Color(0xFFDC143C))
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.play_arrow_sharp,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'Watch Video',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Inter',
                                                fontSize: 12),
                                          ),
                                        ],
                                      )),
                                  Image.asset(
                                    'images/img_1.png',
                                    height: 78,
                                    width: 74,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Reminder Task',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        trailing: Text('See all',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                      Container(
                        height: 90,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ReminderWidget(
                                textTitle: 'Online Class Routine',
                                textSubTitle: 'Save Date : 12/12/2022',
                                img: 'images/todo1.png'),
                            ReminderWidget(
                                textTitle: 'Office Work List',
                                textSubTitle: 'Save Date : 12/12/2022',
                                img: 'images/todo2.png'),
                            ReminderWidget(
                                textTitle: 'Day Task',
                                textSubTitle: 'Save Date : 12/12/2022',
                                img: 'images/todo3.png'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 18,right: 18),
              title: Text('All Task',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF042E2B))),
              trailing: Text('See all',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w400,
                      color: Color(0xb2042e2b))),
            ),
            Container(
              height: 230,
              child: ListView(
                padding: EdgeInsets.only(left: 15,right: 15),
                children: [
                  allTaskWidget(
                      img: 'images/todo1.png',
                      textTitle: 'Online Class Routine',
                      textSubTitle: 'Save Date : 12/12/2022'),
                  allTaskWidget(
                      img: 'images/todo1.png',
                      textTitle: 'Online Class Routine',
                      textSubTitle: 'Save Date : 12/12/2022'),
                  allTaskWidget(
                      img: 'images/todo1.png',
                      textTitle: 'Online Class Routine',
                      textSubTitle: 'Save Date : 12/12/2022'),
                  allTaskWidget(
                      img: 'images/todo1.png',
                      textTitle: 'Online Class Routine',
                      textSubTitle: 'Save Date : 12/12/2022'),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
