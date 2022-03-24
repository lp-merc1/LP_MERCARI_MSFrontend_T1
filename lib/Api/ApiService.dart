import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:healthcare_app/model/patient.dart';

class ApiServices {
  static final String ur = "http://192.168.52.91:5002/";
  static List<PatientElement> data = [];
  static Future<Uri> getApiURL(String url) async {
    Uri uri = Uri.parse(url);
    return uri;
  }

  static Future<List<PatientElement>> gpt(String type) async {
    final Uri uri = await getApiURL(ur + type);
    var response = await http.get(uri);
    print(response.body);

    var convert = json.decode(response.body);
    Map<String, dynamic> listVideo = convert;
    Patient pt = Patient.fromMap(listVideo);
    data = pt.patient;
    return data;
  }
}
