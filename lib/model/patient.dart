// To parse this JSON data, do
//
//     final patient = patientFromMap(jsonString);

import 'dart:convert';

Patient patientFromMap(String str) => Patient.fromMap(json.decode(str));

String patientToMap(Patient data) => json.encode(data.toMap());

class Patient {
  Patient({
    required this.patient,
  });

  List<PatientElement> patient;

  factory Patient.fromMap(Map<String, dynamic> json) => Patient(
        patient: List<PatientElement>.from(
            json["patient"].map((x) => PatientElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "patient": List<dynamic>.from(patient.map((x) => x.toMap())),
      };
}

class PatientElement {
  PatientElement({
    required this.id,
    required this.name,
    required this.nhid,
    required this.age,
    required this.address,
    required this.phoneNumber,
    required this.medicalReports,
    required this.xRayReports,
  });

  String id;
  String name;
  String nhid;
  int age;
  String address;
  String phoneNumber;
  List<String> medicalReports;
  List<String> xRayReports;

  factory PatientElement.fromMap(Map<String, dynamic> json) => PatientElement(
        id: json["_id"],
        name: json["name"],
        nhid: json["NHID"],
        age: json["age"],
        address: json["address"],
        phoneNumber: json["phoneNumber"],
        medicalReports: List<String>.from(json["medicalReports"].map((x) => x)),
        xRayReports: List<String>.from(json["xRayReports"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "NHID": nhid,
        "age": age,
        "address": address,
        "phoneNumber": phoneNumber,
        "medicalReports": List<dynamic>.from(medicalReports.map((x) => x)),
        "xRayReports": List<dynamic>.from(xRayReports.map((x) => x)),
      };
}
