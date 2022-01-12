import 'package:dama_manager/model/user/user.dart';
import 'package:flutter/material.dart';

import 'round_border_content_wrapper.dart';
import '../model/user/user.dart';

class UserSection extends StatelessWidget {
  const UserSection({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return RoundBorderContentWrapper(
      padding: const EdgeInsets.all(0),
      width: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              color: Colors.blue.shade400,
            ),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.grey.shade400),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _contentForm(
                contentTitle: '다마',
                innerContent: Text(
                  user.dama.toString(),
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w400),
                ),
              ),
              _contentForm(
                contentTitle: '다마',
                innerContent: Text(
                  user.dama.toString(),
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w400),
                ),
              ),
              _contentForm(
                contentTitle: '다마',
                innerContent: Text(
                  user.dama.toString(),
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _contentForm({
    required String contentTitle,
    required Widget innerContent,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(contentTitle, style: const TextStyle(fontSize: 12.5)),
          const SizedBox(height: 3),
          innerContent,
        ],
      ),
    );
  }

  Widget get _winIcon {
    return CircleAvatar(
      radius: 14,
      backgroundColor: Colors.green.shade400,
      child: const Center(
        child: Text(
          'W',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget get _loseIcon {
    return CircleAvatar(
      radius: 14,
      backgroundColor: Colors.red.shade400,
      child: const Center(
        child: Text(
          'L',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}