// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class TranslationUtil {
//   static final String apiKey = 'AIzaSyCZrkyAKUFtybS9QqME7WAvZ0F250eL_rI';
//
//   static Future<String> translateText(String input) async {
//     var url = 'https://translation.googleapis.com/language/translate/v2?target=te&key=$apiKey&q=$input';
//
//     var response = await http.get(Uri.parse(url));
//     var responseBody = json.decode(response.body);
//
//     return responseBody['data']['translations'][0]['translatedText'];
//   }
// }
