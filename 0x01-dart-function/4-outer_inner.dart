void outer(String name, String id) {
  print(inner(name, id));
}

String inner(String name, String id) {
  // Split name into first and last name
  List<String> names = name.split(" ");
  String firstName = names[0];
  String lastName = names[1];

  // Get first initial of the last name
  String initials = lastName[0];

  return "Hello Agent $initials.$firstName your id is $id";
}
