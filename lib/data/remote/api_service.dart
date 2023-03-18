import 'package:clean_architecture/data/remote/result.dart';

abstract class ApiService {
  Future<Result> get({required String path, Map<String, dynamic>? param});

  Future<Result> post({required String path, Map<String, dynamic>? body});

  Future<Result> put({required String path, Map<String, dynamic>? body, Map<String, dynamic>? param});

  Future<Result> delete({required String path, Map<String, dynamic>? body, Map<String, dynamic>? param});
}