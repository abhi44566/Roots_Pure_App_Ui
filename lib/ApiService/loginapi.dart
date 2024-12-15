import 'dart:convert';
import 'package:roots_pure/Models/profile_update_model.dart';
import '../Models/forget_password_model.dart';
import '../Models/list_attandance_model.dart';
import '../Models/login_roots_modlels.dart';
import 'package:http/http.dart' as http;
import '../Models/mark_attandance_model.dart';
import '../Models/product_model.dart';
import '../Models/sinup_model.dart';
import '../Models/upload_product_model.dart';

class ApiService {
  static const String baseUrl = 'https://sales-report.brijeshkannaujiya.com/';
  //static const String baseUrl = 'https://shozoo.co.in/api/mt3';
  Future login(String email, String password) async {
    final url = Uri.parse('$baseUrl/login.php');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
            {
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print("Decoed Data : $responseData");
        if (responseData['status'] == 'error') {
          // Return error response
          return Login_Model.fromJson(responseData);
        } else {
          // Return success response with user data
          return Login_Model.fromJson(responseData);
        }
      }
    } catch (e) {
      print("object catch");
      // Return error response
      return {
        'success': false,
        'message': 'An error occurred: $e',
      };
    }
  }

  // Future<User?> login(String email, String password) async {
  //   final url = Uri.parse('$baseUrl/login.php');
  //   // print('Requesting URL: $url');
  //
  //   try {
  //     final response = await http.post(
  //       url,
  //       headers: {
  //         'Content-Type': 'application/json',
  //       },
  //       body: jsonEncode({
  //         'email': email,
  //         'password': password,
  //       }),
  //     );
  //
  //     // print('Response status: ${response.statusCode}');
  //     // print('Response body: ${response.body}');
  //
  //     if (response.statusCode == 200) {
  //       final responseData = jsonDecode(response.body);
  //       print('Response Data: $responseData');
  //       if( responseData['status']=='error'){
  //         throw Exception('Invalid login credentials');
  //       }
  //       return User.fromJson(responseData);
  //
  //       // if (responseData['id'] != null) {
  //       //   return User.fromJson(responseData);
  //       // } else {
  //       //   throw Exception('Invalid login credentials');
  //       // }
  //     } else {
  //       throw Exception('Failed to login: ${response.reasonPhrase}');
  //     }
  //   } catch (e) {
  //     // print('Error: $e');
  ///registration api calling
  Future SignUp(Map<String, dynamic> map) async {
    print("User Map : $map");
    final url = Uri.parse('$baseUrl/register.php');
    print('Requesting URL: $url');
     //print(mobile);
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(map),
      );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        print("Decoed Data :${responseData}");
        return SignUpModel.fromJson(responseData);
      } else {
        throw Exception('Failed to sign up: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future MarkAttandanceApi(Map<String, dynamic> map) async {
    print(map);
    final Url = Uri.parse('$baseUrl/attendance.php');
    try {
      final response = await http.post(
        Url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(map),
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        print("Decoed Data :${responseData}");
        return MarkAttandance.fromJson(responseData);
      } else {
        throw Exception('Failed to sign up: ${response.reasonPhrase}');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future GetAttandanceApi(Map<String, dynamic> map) async {
    print(map);
    final Url = Uri.parse('$baseUrl/attendance.php');
    try {
      final response = await http.post(
        Url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(map),
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        print("Decoed Data :${responseData}");
        return ListAttandance.fromJson(responseData);
      } else {
        throw Exception('Failed to sign up: ${response.reasonPhrase}');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  // Future ProductListApi() async {
  //
  //   final Url = Uri.parse('$baseUrl/products.php');
  //   try {
  //     final response = await http.get(
  //       Url,
  //       headers: {
  //         'Content-Type': 'application/json',
  //       }
  //     );
  //     if (response.statusCode == 200) {
  //       var responseData = jsonDecode(response.body);
  //       print("Decode Data :${responseData}");
  //       return Product_Model.fromJson(responseData);
  //     } else {
  //       throw Exception('Not Data Reserved: ${response.reasonPhrase}');
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
  Future ProductApi() async {
    final Url = Uri.parse('$baseUrl/products.php');
    try {
      final response = await http.get(
        Url,
        headers: {
          'Content-Type': 'application/json',
        }
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        print("Decode Data :${responseData}");
        return Product_Model.fromJson(responseData);
      } else {
        throw Exception('Not Data Reserved: ${response.reasonPhrase}');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  ///change password ka api servoce
  Future<ForgetPassword_Model?> changePassword(String email, String newPassword) async {
    try {
      final Uri url = Uri.parse('$baseUrl/change_password.php');
      final response = await http.post(
        url,
        body: json.encode({'email': email, 'new_password': newPassword}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return ForgetPassword_Model.fromJson(data);
      } else {
        print('Error: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  ///upload product ka api service
  Future<Upload_Product_Model?> uploadProduct(Product product) async {
    final url = Uri.parse("$baseUrl/add_product.php");
    var productJson = product.toJson();
    productJson.remove('id');
    print('Sending data: $productJson');
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(productJson),
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        print(jsonResponse);
        return Upload_Product_Model.fromJson(jsonResponse);
      } else {
        print('Error: ${response.statusCode} - ${response.body}');
        return null;
      }
    } catch (e) {
      print('Exception: $e');
      return null;
    }
  }

  Future uploadImage(String filePath) async {
    try {
      final Uri uploadUrl = Uri.parse('$baseUrl/upload.php');
      var request = http.MultipartRequest('POST', uploadUrl);
      request.files.add(await http.MultipartFile.fromPath('file', filePath));

      var response = await request.send();

      if (response.statusCode == 200) { 
        final responseData = await response.stream.bytesToString(); 
        final json = jsonDecode(responseData);
        // print(json['file_path']);
        // return json.file_path;
        return json['file_path'];
      } else {
        return 'Failed to upload image: ${response.statusCode}';
      }
    } catch (e) {
      return 'Error occurred: $e';
    }
  }




  Future UpdateProfile(String status, String message) async {
    final Url = Uri.parse('$baseUrl/update_profile.php');
    try {
      final response = await http.put(Url,
        headers: {
          'Content-Type': 'application/json',
        },
        body:{
          'status': status,
          'message': message,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final  jsonResponse = json.decode(response.body);
        print(jsonResponse);
        return ProfileUpdate_Model.fromJson(jsonResponse);

      } else {
        throw Exception("Failed to update profile: ${response.statusCode}");
      }
    }catch(e){
      print(e.toString());
    }
  }
}


// hitAllProductAPI() async {
//   var api = "${Api_Url}endpoint=${EndPoints.allProducts}";
//   print("apiCartList :$api");
//   try {
//     // var response =
//     // await GetConnect().get(api).timeout(const Duration(seconds: 60));
//     var response =
//     await http.get(Uri.parse(api)).timeout(const Duration(seconds: 60));
//     log("All Product CatItem count Response :: ${response.statusCode}");
//
//     if (response.statusCode == 200) {
//       var decodedData = jsonDecode(response.body);
//       print("decodedData  :$decodedData");
//       if (decodedData['success'] == true) {
//         // print("Decoded data :=> ${decodedData['data']}");
//         return ProductModel.fromJson(decodedData);
//       } else {
//         print("else ");
//         // return decodedData['message'];
//         throw Exception(decodedData['message'] ?? 'Unknown error');
//       }
//     }
//   } on SocketException {
//     throw Exception('No Internet Connection');
//   }
// }
