import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Información de la Calabresa")),
      body: SfPdfViewer.asset('assets/mono_calabresa.pdf'),
    );
  }
}