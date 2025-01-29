```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process JSON data here.
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('SocketException: $e');
    // Handle socket exceptions specifically.
    // Maybe show a "No Internet" message
    rethrow; //Rethrow for further handling.
  } on FormatException catch (e) {
    print('FormatException: $e');
    // Handle format exceptions (invalid JSON)
    rethrow; //Rethrow for further handling.
  } catch (e) {
    print('Error fetching data: $e');
    // Handle other exceptions
    rethrow; //Rethrow for further handling.
  }
}
```