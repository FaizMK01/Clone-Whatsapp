import 'package:flutter/material.dart';
import '../colors.dart';
import '../info.dart';
import 'chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                info[0]['profilePic'].toString(),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              info[0]['name'].toString(),
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          // Chat list expanded to fill the remaining space
          const Expanded(
            child: ChatList(),
          ),
          // Input area for messages
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            color: mobileChatBoxColor, // Chat box background color
            child: Row(
              children: [
                // Emoji button
                IconButton(
                  icon: const Icon(Icons.emoji_emotions, color: Colors.grey),
                  onPressed: () {},
                ),
                // Message input field
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: chatBarMessage, // Message box color
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                // Attach file button
                IconButton(
                  icon: const Icon(Icons.attach_file, color: Colors.grey),
                  onPressed: () {},
                ),
                // Camera button
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
