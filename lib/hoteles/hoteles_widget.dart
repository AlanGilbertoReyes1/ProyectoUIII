import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../hotel2/hotel2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelesWidget extends StatefulWidget {
  const HotelesWidget({Key key}) : super(key: key);

  @override
  _HotelesWidgetState createState() => _HotelesWidgetState();
}

class _HotelesWidgetState extends State<HotelesWidget> {
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
            fillColor: FlutterFlowTheme.of(context).primaryText,
            icon: Icon(
              Icons.arrow_forward,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Hotel2Widget(),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Servicios principales\n116 habitaciones para no fumadores\nServicio de limpieza diario\nRestaurantes\nTerraza en la azotea\nDesayuno disponible\nServicio a la habitación las 24 horas\nCentro de negocios abierto las 24 horas\nCentro de negocios\nTraslado desde/hacia el aeropuerto\nTraslado al aeropuerto\nTerraza\nRecepción disponible las 24 horas',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Image.network(
                  'https://raw.githubusercontent.com/AlanGilbertoReyes1/CentralSistem_6toJ/master/assets/images/nuevos-hoteles-abriran-mexico-2021-1.jpg',
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
