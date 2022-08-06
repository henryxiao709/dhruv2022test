import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:redback_mobile_app/Account.dart';
import 'package:redback_mobile_app/info_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 104, 75, 182),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 104, 75, 182),
        elevation: 0,
        centerTitle: true,
        title: Text('R E D B A C K'),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 230, 152, 129),
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                child: Text(
                  'REDBACK',
                  style: TextStyle(fontSize: 30),
                ),
              )),
              ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Here we will navigate to the accounts page
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Account(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.history_edu_rounded),
                title: Text(
                  'Fitness History',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Here we will navigate to the accounts page
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => InformationPage(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Here we will navigate to the accounts page
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Account(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.report_gmailerrorred),
                title: Text(
                  'Report an Issue',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Here we will navigate to the accounts page
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Account(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 230, 152, 129),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
              backgroundColor: Color.fromARGB(255, 230, 152, 129),
              color: Color.fromARGB(183, 255, 255, 255),
              activeColor: Color.fromARGB(255, 130, 235, 182),
              tabBackgroundColor: Color.fromARGB(55, 114, 243, 153),
              gap: 10,
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_rounded,
                  text: 'Friends',
                ),
                GButton(
                  icon: Icons.account_circle_rounded,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 16, 8, 16),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0xFF607D8B),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Run (KM)',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF555E6A),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '99.99',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Walk (KM)',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF555E6A),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '99.99',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Kcal Burned',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF555E6A),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '99.99',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Steps',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF555E6A),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '100000',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Color(0xFF380E4A),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0xFF607D8B),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 2, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  '99.99 KM',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFEF8B60),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Time: 00:00:00',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Kcal Burned: 99.99 kcal',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xB3FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 2, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  '99.99 KM',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFEF8B60),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Time: 00:00:00',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Kcal Burned: 99.99 kcal',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xB3FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 2, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  '99.99 KM',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFEF8B60),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Time: 00:00:00',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Kcal Burned: 99.99 kcal',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xB3FFFFFF),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 2, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  '99.99 KM',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFEF8B60),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Time: 00:00:00',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Text(
                                  'Kcal Burned: 99.99 kcal',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFCC645D),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 24, 0, 8),
                            child: ElevatedButton(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  child: const Text('Start New Workout'),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(180, 40),
                                    primary: Color(0xFFEF8B60),
                                    shape: RoundedRectangleBorder( //to set border radius to button
                                        borderRadius: BorderRadius.circular(8)),
                                  )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
