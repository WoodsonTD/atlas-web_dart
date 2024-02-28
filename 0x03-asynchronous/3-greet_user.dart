import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    String username = userMap['username'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool credentials = await checkCredentials();
    if (credentials == true) {
      print('There is a user: $credentials');
      return await greetUser();
    } else {
      print('There is a user: $credentials');
      return 'Wrong credentials';
      }
  } catch (e) {
    return 'error caught: $e';
  }
}
