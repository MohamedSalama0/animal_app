import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common/chat_item.dart';
import '../../common/custom_appbar.dart';
import '../../models/chat_model.dart';
import '../../providers/chats_provider.dart';
import '../../services/ai_handler.dart';
import '../component/toggle_bttn.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: const MyAppBar(
        title: 'How can I help you ;)',
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final chats = ref.watch(chatsProvider).reversed.toList();
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  reverse: true,
                  itemCount: chats.length,
                  itemBuilder: (context, index) => ChatItem(
                    text: chats[index].message,
                    isMe: chats[index].isMe,
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: TextAndVoiceField(),
          ),
        ],
      ),
    );
  }
}

enum InputMode {
  text,
  voice,
}

class TextAndVoiceField extends ConsumerStatefulWidget {
  const TextAndVoiceField({super.key});

  @override
  ConsumerState<TextAndVoiceField> createState() => _TextAndVoiceFieldState();
}

class _TextAndVoiceFieldState extends ConsumerState<TextAndVoiceField> {
  InputMode _inputMode = InputMode.voice;
  final _messageController = TextEditingController();
  // final VoiceHandler voiceHandler = VoiceHandler();
  bool isReplying = false;
  bool isListening = false;

  @override
  void initState() {
    // voiceHandler.initSpeech();
    super.initState();
  }

  AIHandler _openAI() {
    return AIHandler(ref);
  }

  @override
  void dispose() {
    _messageController.dispose();
    // _openAI().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final isListening =
    //     ref.watch(chatsProvider.notifier.select((value) => value.isListening));
    // final isReplying =
    //     ref.watch(chatsProvider.notifier.select((value) => value.isReplying));
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextField(
              controller: _messageController,
              onChanged: (value) {
                value.isNotEmpty
                    ? setInputMode(InputMode.text)
                    : setInputMode(InputMode.voice);
              },
              cursorColor: Theme.of(context).colorScheme.onPrimary,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 1,
        ),
        ToggleButton(
          isListening: isListening,
          isReplying: isReplying,
          inputMode: _inputMode,
          sendTextMessage: () {
            if (_messageController.text.isEmpty) return;
            final message = _messageController.text;
            _messageController.clear();
            sendTextMessage(message);
          },
          sendVoiceMessage: () {},
        )
      ],
    );
  }

  void setInputMode(InputMode inputMode) {
    setState(() {
      _inputMode = inputMode;
    });
  }

  void sendTextMessage(String message) async {
    setReplyingState();
    addToChatList(message, true, DateTime.now().toString());

    addToChatList('Typing...', false, 'typing');
    setInputMode(InputMode.voice);
    // reqeust
    final aiResponse = await _openAI().getResponse(message);
    removeTyping();

    addToChatList(aiResponse, false, DateTime.now().toString());

    setReplyingState();
  }

  void setReplyingState() {
    setState(() {
      isReplying = !isReplying;
    });
  }

  void setListeningState() {
    setState(() {
      isListening = !isListening;
    });
  }

  void removeTyping() {
    final chats = ref.read(chatsProvider.notifier);
    chats.removeTyping();
  }

  // add message to chat
  void addToChatList(String message, bool isMe, String id) {
    final chats = ref.read(chatsProvider.notifier);

    chats.add(ChatModel(
      id: id,
      message: message,
      isMe: isMe,
    ));

    // if (!isMe) VoiceHandler().speak(message);
  }
}
