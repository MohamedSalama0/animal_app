import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AIHandler {
  WidgetRef ref;
  //  final String value;
  AIHandler(this.ref) {
    // value = ref.read(apiKeyValue.notifier).state;
  }
  OpenAI initOpenAi() {
    return OpenAI.instance.build(
      token: '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',
      baseOption: HttpSetup(
        receiveTimeout: const Duration(seconds: 60),
        connectTimeout: const Duration(seconds: 60),
      ),
    );
  }

  Future<String> getResponse(String message) async {
    try {
      final request = ChatCompleteText(
        messages: [
          Map.of({"role": "user", "content": message})
        ],
        maxToken: 200,
        model: ChatModel.gptTurbo,
        // chatGptTurbo0301
      );

      final response = await initOpenAi().onChatCompletion(request: request);
      if (response != null) {
        return response.choices[0].message!.content.trim();
      }

      return 'Some thing went wrong';
    } catch (e) {
      print(e.toString());
      return 'Something happend ! , please try again later';
    }
  }

  /// [dispose api state]
  // void dispose() {
  // initOpenAi().onCompletion(request: CompleteText.);
  // }
}
