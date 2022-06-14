import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AyudaWidget extends StatefulWidget {
  const AyudaWidget({Key key}) : super(key: key);

  @override
  _AyudaWidgetState createState() => _AyudaWidgetState();
}

class _AyudaWidgetState extends State<AyudaWidget> {
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
          'Ayuda al cliente ',
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
              ListTile(
                title: Text(
                  'Numero de apoyo',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Oficina\n656 207991\nCelular\n656 698 2018',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Destinos',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'DESTINOS\nGuadalajara\nQuerétaro\nPuebla',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Autobuses',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  'Futura\nPrimera Plus\nETN\nADO\nOmnibus de México\nTransportes del Norte\nTufesa\nGrupo Senda\nAutobuses Tap',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Ubicacion',
                  style: FlutterFlowTheme.of(context).title3,
                ),
                subtitle: Text(
                  '95 Donceles Col. Centro, Juarez City, 6020',
                  style: FlutterFlowTheme.of(context).subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
