import 'package:flutter/material.dart';

@immutable
class CarItemField extends StatelessWidget {
  String desc;
  String title;
  CarItemField(this.desc, this.title);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.circle,
        color: Colors.black,
        size: 10,
      ),
      title: Text(desc),
      subtitle: Text(title),
    );
  }
}
