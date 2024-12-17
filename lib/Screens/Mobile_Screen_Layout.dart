import 'package:flutter/material.dart';
import 'package:linkedin_clone/Widgets/ContactList.dart';
import 'package:linkedin_clone/colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: tabColor,
          onPressed: (){},child: Icon(Icons.comment,color: Colors.white,),),
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            "Whatsapp",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ))
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            tabs: [
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            )
          ]),
        ),
        body: Contactlist(),
      ),
    );
  }
}
