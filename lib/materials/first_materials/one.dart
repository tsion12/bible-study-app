import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

Future<File> getFileFromAsset(String asset) async {
  try {
    var data = await rootBundle.load(asset);
    var bytes = data.buffer.asUint8List();
    var dir = await getApplicationDocumentsDirectory();
    File file = File("${dir.path}/try.pdf");

    File assetFile = await file.writeAsBytes(bytes);
    return assetFile;
  } catch (e) {
    throw Exception("Error loading pdf");
  }
}

class OneStudy extends StatefulWidget {
  @override
  _OneStudyState createState() => _OneStudyState();
}

class _OneStudyState extends State<OneStudy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
