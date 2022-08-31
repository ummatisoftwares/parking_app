import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../parking_page/parking_page_widget.dart';
import '../welcom_page/welcom_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationPageWidget extends StatefulWidget {
  const LocationPageWidget({Key? key}) : super(key: key);

  @override
  _LocationPageWidgetState createState() => _LocationPageWidgetState();
}

class _LocationPageWidgetState extends State<LocationPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: 360,
        height: 800,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Copy_of_Smart_Parking_Navigator_UX.png',
            ).image,
          ),
          borderRadius: BorderRadius.circular(0),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 400, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: ParkingPageWidget(),
                    ),
                  );
                },
                text: 'Sure. I\'d Like that',
                options: FFButtonOptions(
                  width: 300,
                  height: 53,
                  color: Color(0xFF38B6FF),
                  textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Raleway',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: WelcomPageWidget(),
                    ),
                  );
                },
                text: 'Not now',
                options: FFButtonOptions(
                  height: 53,
                  color: Color(0x0038B6FF),
                  textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Raleway',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                  borderSide: BorderSide(
                    color: Color(0xFF00C2CB),
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                showLoadingIndicator: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
