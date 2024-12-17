import 'package:flutter/material.dart';
import 'package:linkedin_clone/Screens/mobilechat_screen.dart';
import 'package:linkedin_clone/colors.dart';

import '../info.dart';

class Contactlist extends StatelessWidget {
  const Contactlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
    itemCount: info.length,
    itemBuilder: (context, index) {
      return Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileChatScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    
                    info[index]['profilePic'].toString()
                  ),
                ),
                title: Text(
                  info[index]['name'].toString(),
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    info[index]['message'].toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          const Divider(
            color: dividerColor,
            indent: 85,
          ), // Add divider after each ListTile
        ],
      );
    },
  ),
    );
  }
}
