import 'package:dio/dio.dart';

// Note: Here you should setup youd Dio for http requests.
// You should write template requests such as: get and post.
// Docs: https://pub.dev/packages/dio
class DioClient {
  final _client = Dio(
    BaseOptions(
        // Here you can write some options for Dio, such as: headers, baseUrl,
        // queryParameters etc.
        ),
  );
}
