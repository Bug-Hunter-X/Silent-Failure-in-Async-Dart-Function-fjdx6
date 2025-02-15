```dart
Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return jsonData; // Return the data
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Re-throw the exception to be handled by the caller
    rethrow; // This allows the calling function to handle the error.
  }
}
```