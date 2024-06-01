import 'package:google_generative_ai/google_generative_ai.dart';

class Gemini {
  static const String apiKey = "Enter your own API key here";

  Future<String> getResponse(String input) async {
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final content = [Content.text(input)];
    final response = await model.generate(content);
    return response.first ?? 'NULL';
  }
}
