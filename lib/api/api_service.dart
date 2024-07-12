import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:todo_app/model/todo.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'http://localhost:3000')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/todo")
  Future<List<ToDo>> getToDos();

  @POST("/todo")
  Future<ToDo> createToDo();

  @PATCH("/todo")
  Future<ToDo> updateToDO(@Path('id') String id);
}
