// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:healthcare_app/model/dactor_model.dart';
import 'package:healthcare_app/model/patient.dart';
import 'package:healthcare_app/theme/extention.dart';
import 'package:healthcare_app/theme/light_color.dart';
import 'package:healthcare_app/theme/text_styles.dart';
import 'package:healthcare_app/theme/theme.dart';
import 'package:healthcare_app/widget/progress_widget.dart';
import 'package:healthcare_app/widget/rating_start.dart';

class completePage extends StatefulWidget {
  completePage({Key? key, required this.model}) : super(key: key);
  final PatientElement model;

  @override
  _completePageState createState() => _completePageState();
}

class _completePageState extends State<completePage> {
  late PatientElement model;
  @override
  void initState() {
    model = widget.model;
    super.initState();
  }

  Widget MedicalReport(List a) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: a.length,
        itemBuilder: (BuildContext context, int index) {
          print("http://192.168.52.91:5002/getImage/" + a[index]);
          return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child:
                Image.network("http://192.168.52.91:5002/getImage/" + a[index]),
          );
        });
  }

  Widget XrayReport(List a) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: a.length,
        itemBuilder: (BuildContext context, int index) {
          print("http://192.168.52.91:5002/getImage/" + a[index]);
          return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child:
                Image.network("http://192.168.52.91:5002/getImage/" + a[index]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.extraLightBlue,
      appBar: AppBar(
        title: Text("Info of ${model.name}"),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
                width: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Text(
                      "Patient's Age: ${model.age}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    height: 100),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Text(
                      "Address: ${model.address}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    height: 100),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Text(
                      "Age: ${model.age}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    height: 100),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Text(
                      "Phone No: ${model.phoneNumber}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    height: 100),
              ),
              Center(
                child: Text(
                  "MEDICAL REPORTS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              MedicalReport(model.medicalReports),
              Center(
                child: Text(
                  "X-RAY REPORTS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              XrayReport(model.xRayReports),
            ],
          ),
        ),
      ),
    );
  }
}
