import 'dart:convert';
import 'package:http/http.dart' as http;

class GeminiService {
  static const String apiKey = "AIzaSyB6_c1Utb7ys1lbf8VFPaBvcHqVFrwR5Uc"; // 🔴 Mets ta clé API ici
  static const String baseUrl = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateText";

  static Future<String> getResponse(String prompt) async {
    final Uri url = Uri.parse("$baseUrl?key=$apiKey");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"prompt": {"text": prompt}}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["candidates"][0]["output"] ?? "Pas de réponse.";
    } else {
      return "Erreur API: ${response.statusCode}";
    }
  }
}
