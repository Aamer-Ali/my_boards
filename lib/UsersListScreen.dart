import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:my_boards/models/employees.dart';
import 'package:dio/dio.dart';
import 'package:my_boards/network/rest_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<Employees> userList = [
    new Employees(
        id: 1,
        name: "AA",
        age: 30,
        department: "IT",
        address: "Aurangabad",
        mobileNumber: 9632587415,
        emailId: "aa@gmail.com"),
    new Employees(
        id: 2,
        name: "BB",
        age: 35,
        department: "HR",
        address: "Jalna",
        mobileNumber: 7564841254,
        emailId: "bb@gmail.com"),
    new Employees(
        id: 3,
        name: "CC",
        age: 27,
        department: "Operations",
        address: "Beed",
        mobileNumber: 8562147954,
        emailId: "cc@gmail.com"),
    new Employees(
        id: 4,
        name: "DD",
        age: 28,
        department: "Marketting",
        address: "Paithan",
        mobileNumber: 8564795415,
        emailId: "dd@gmail.com"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future getData() async {
    List<Employees> emp = List();
    final dio = Dio();
    final logger = Logger();
    final client = RestClient(dio);

    emp = await client.getEmployees();
    return emp;

    // client.getEmployees().then((value) {
    //   emp.addAll(value);
    //   // userList.addAll(value);
    //   return emp;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Employees"),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.none &&
                snap.hasData == null) {
              return Container(
                child: Text("No Data"),
              );
            }
            return ListView.builder(
                itemCount: snap.data.length,
                itemBuilder: (context, index) {
                  Employees employees = snap.data[index];
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      title: Text(employees.name),
                    ),
                  );
                });
          },
        ));
  }
}
