import 'package:dama_manager/widget/user_section.dart';
import 'package:flutter/material.dart';

import 'model/user/user.dart';
import 'widget/round_border_content_wrapper.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  final userBox = await Hive.openBox<User>('USER_LIST');

  runApp(MyApp(userBox: userBox));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.userBox}) : super(key: key);

  final Box<User>? userBox;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userList = [];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.grey.shade500),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20).copyWith(top: 0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: userList.length,
              itemBuilder: (_, index) => UserSection(user: userList[index]),
          ),
        ),
      ),
    );
  }

  // List<Widget> _userSectionList(List<User> userList) {
  //   return userList.map((user) => UserSection(user: user)).toList();
  // }
}