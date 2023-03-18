import 'package:clean_architecture/data/remote/api_service.dart';
import 'package:clean_architecture/data/remote/result.dart';
import 'package:dio/dio.dart';
// using dio or httpClient
class ApiServiceImpl implements ApiService {

  Dio dio = Dio();

  ApiServiceImpl() {
    // config dio
  }

  @override
  Future<Result> delete({required String path, Map<String, dynamic>? body, Map<String, dynamic>? param}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Result> get({required String path, Map<String, dynamic>? param}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Result> post({required String path, Map<String, dynamic>? body}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<Result> put({required String path, Map<String, dynamic>? body, Map<String, dynamic>? param}) {
    // TODO: implement put
    throw UnimplementedError();
  }

}