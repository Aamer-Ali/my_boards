import 'package:json_annotation/json_annotation.dart';
import 'package:my_boards/models/employees.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';


@RestApi(
    baseUrl: "https://personal-g78w54zd.outsystemscloud.com/SqlTest11/rest/EmployeesApi/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/GetEmployees')
  Future<List<Employees>> getEmployees();

}



