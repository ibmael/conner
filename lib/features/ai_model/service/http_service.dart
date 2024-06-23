import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

class ApiServiceNew {
  final Dio _dio = Dio();

  Future<Map<String, String>> uploadImage(File imageFile) async {
    const String url = 'https://abdelrahman12012-coon.hf.space/predict';

    try {
      // Determine the MIME type of the file
      String? mimeType = lookupMimeType(imageFile.path) ?? 'image/jpeg';

      // Prepare the form data
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          imageFile.path,
          filename: 'upload.jpg',
          contentType:
              MediaType(mimeType.split('/')[0], mimeType.split('/')[1]),
        ),
      });

      // Send the POST request
      Response response = await _dio.post(url, data: formData);

      // Check if the response is successful
      if (response.statusCode == 200) {
        // Parse the response data
        var jsonResponse = response.data;
        return {
          'prediction': jsonResponse['prediction'],
          'treatment': jsonResponse['treatment']
        };
      } else {
        return {
          'error': 'Error: ${response.statusCode}, ${response.statusMessage}'
        };
      }
    } on DioException catch (e) {
      if (e.response != null) {
        // The server responded with a status other than 2xx
        print('DioError: ${e.response!.statusCode} - ${e.response!.data}');
        return {
          'error': 'Error: ${e.response!.statusCode}, ${e.response!.statusMessage}'
        };
      } else {
        // The error is likely due to network issues or configuration problems
        print('DioError: ${e.message}');
        return {'error': 'Error: ${e.message}'};
      }
    } catch (e) {
      // Handle any other errors
      print('Error: $e');
      return {'error': 'Error: $e'};
    }
  }
}
