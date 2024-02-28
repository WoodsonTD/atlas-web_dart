import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    String id = userMap['id'];
    String orders = await fetchUserOrders(id);
    List<dynamic> orderList = json.decode(orders);
    double total = 0;
    for (var order in orderList) {
      String price = await fetchProductPrice(order);
      total += json.decode(price);
    }
    return total;
  } catch (e) {
    return -1;
  }
}
