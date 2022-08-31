import 'package:firebase_database/firebase_database.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParkingPageWidget extends StatefulWidget {
  const ParkingPageWidget({Key? key}) : super(key: key);

  @override
  _ParkingPageWidgetState createState() => _ParkingPageWidgetState();
}

class _ParkingPageWidgetState extends State<ParkingPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Map<String,String> firebaseData = new Map();

  getParkingStatus() async {
    DatabaseReference ref = FirebaseDatabase.instance.ref('Parking');
    final snapshot = await ref.get();
    firebaseData = Map<String, String>.from(snapshot.value as dynamic);

    ref.onValue.listen((DatabaseEvent event) {
      firebaseData = Map<String, String>.from(event.snapshot.value as dynamic);
      setState(() {
        firebaseData;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getParkingStatus();
  }

  @override
  Widget build(BuildContext context) {
    print(firebaseData['Parking 3 Status']);
    print(firebaseData);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset(
                'assets/images/albfo_3.png',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(28, 0, 28, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 16 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 17 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 18 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 19 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 20 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 46,
                          height: 100,
                          decoration: BoxDecoration(),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: firebaseData["Parking 11 Status"] == "Occupied"? BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: Image.asset(
                                      'assets/images/left.png',
                                    ).image,
                                  ),
                                ) : BoxDecoration(),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: firebaseData["Parking 12 Status"] == "Occupied"? BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: Image.asset(
                                      'assets/images/left.png',
                                    ).image,
                                  ),
                                ) : BoxDecoration(),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: firebaseData["Parking 13 Status"] == "Occupied"? BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: Image.asset(
                                      'assets/images/left.png',
                                    ).image,
                                  ),
                                ) : BoxDecoration(),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: firebaseData["Parking 14 Status"] == "Occupied"? BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.asset(
                                    'assets/images/left.png',
                                  ).image,
                                ),
                              ) : BoxDecoration(),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: firebaseData["Parking 15 Status"] == "Occupied"? BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.asset(
                                    'assets/images/left.png',
                                  ).image,
                                ),
                              ) : BoxDecoration(),
                            ),
                          ],
                        ),
                        Container(
                          width: 22,
                          height: 100,
                          decoration: BoxDecoration(),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: firebaseData["Parking 10 Status"] == "Occupied"? BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.asset(
                                    'assets/images/left.png',
                                  ).image,
                                ),
                              ) : BoxDecoration(),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: firebaseData["Parking 9 Status"] == "Occupied"? BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.asset(
                                    'assets/images/left.png',
                                  ).image,
                                ),
                              ) : BoxDecoration(),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: firebaseData["Parking 8 Status"] == "Occupied"? BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.asset(
                                    'assets/images/left.png',
                                  ).image,
                                ),
                              ) : BoxDecoration(),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: firebaseData["Parking 7 Status"] == "Occupied"? BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.asset(
                                    'assets/images/left.png',
                                  ).image,
                                ),
                              ) : BoxDecoration(),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: firebaseData["Parking 6 Status"] == "Occupied"? BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.asset(
                                    'assets/images/left.png',
                                  ).image,
                                ),
                              ) : BoxDecoration(),
                            ),
                          ],
                        ),
                        Container(
                          width: 34,
                          height: 100,
                          decoration: BoxDecoration(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 50,
                                height: 40,
                                decoration: firebaseData["Parking 5 Status"] == "Occupied"? BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: Image.asset(
                                      'assets/images/left.png',
                                    ).image,
                                  ),
                                ) : BoxDecoration(),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 4 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 3 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 2 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 40,
                                  decoration: firebaseData["Parking 1 Status"] == "Occupied"? BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset(
                                        'assets/images/left.png',
                                      ).image,
                                    ),
                                  ) : BoxDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              Container(
                width: 100,
                height: 250,
                decoration: BoxDecoration(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
