```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data like jsonData['key']
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('Error fetching data: $e');
    // Rethrow the exception to be handled higher up in the call stack.
    rethrow; //Important to rethrow to allow handling higher up.
  }
}
```