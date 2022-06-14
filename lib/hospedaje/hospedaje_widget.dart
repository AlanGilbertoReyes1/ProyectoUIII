import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../hoteles/hoteles_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HospedajeWidget extends StatefulWidget {
  const HospedajeWidget({Key key}) : super(key: key);

  @override
  _HospedajeWidgetState createState() => _HospedajeWidgetState();
}

class _HospedajeWidgetState extends State<HospedajeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Hospedaje ',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
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
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://raw.githubusercontent.com/AlanGilbertoReyes1/CentralSistem_6toJ/master/assets/images/camiopn%207.jpg',
                  width: double.infinity,
                  height: 320,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                'Hotel Catedral',
                style: FlutterFlowTheme.of(context).title2,
              ),
              Text(
                '116 habitaciones para no fumadores\nServicio de limpieza diario\nRestaurantes\nTerraza en la azotea\nDesayuno disponible\nServicio a la habitación las 24 horas\nCentro de negocios abierto las 24 horas\nCentro de negocios\nTraslado desde/hacia el aeropuerto\nTraslado al aeropuerto\nTerraza\nRecepción disponible las 24 hora',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FlutterFlowIconButton(
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
                        builder: (context) => HotelesWidget(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
