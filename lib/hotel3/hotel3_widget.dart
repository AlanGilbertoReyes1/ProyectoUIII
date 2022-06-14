import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hotel3Widget extends StatefulWidget {
  const Hotel3Widget({Key key}) : super(key: key);

  @override
  _Hotel3WidgetState createState() => _Hotel3WidgetState();
}

class _Hotel3WidgetState extends State<Hotel3Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Hoteles',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InicioWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Camino Real Polanco Mexico\n',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'Servicios principales\n712 habitaciones para no fumadores\nServicio de limpieza diario\nRestaurantes y bar o lounge\nAlberca al aire libre\nDesayuno disponible\nGimnasio\nValet parking\nServicio a la habitación las 24 horas\n2 cafeterías\nServicio de niñera en la habitación\nCentro de conferencias\nCentro de negocios',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Image.network(
                  'https://raw.githubusercontent.com/AlanGilbertoReyes1/CentralSistem_6toJ/master/assets/images/arbisoftimages-158935-piscina2-961686.jpg',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
