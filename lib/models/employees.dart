// To parse this JSON data, do
//
//     final employees = employeesFromJson(jsonString);

import 'dart:convert';

List<Employees> employeesFromJson(String str) => List<Employees>.from(json.decode(str).map((x) => Employees.fromJson(x)));

String employeesToJson(List<Employees> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employees {
  Employees({
    this.id,
    this.name,
    this.age,
    this.department,
    this.address,
    this.mobileNumber,
    this.emailId,
  });

  int id;
  String name;
  int age;
  String department;
  String address;
  double mobileNumber;
  String emailId;

  factory Employees.fromJson(Map<String, dynamic> json) => Employees(
    id: json["Id"],
    name: json["Name"],
    age: json["Age"],
    department: json["Department"],
    address: json["Address"],
    mobileNumber: json["MobileNumber"],
    emailId: json["EmailId"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
    "Age": age,
    "Department": department,
    "Address": address,
    "MobileNumber": mobileNumber,
    "EmailId": emailId,
  };
}
