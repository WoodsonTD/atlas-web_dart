import 'dart:convert';

import '1-util.dart';

Future<String> getUserId() async {
  Map<String, dynamic> userMap = jsonDecode(await fetchUserData());
  return userMap['id'];
}
