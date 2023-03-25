import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserModel {
  int id;
  String name;
  String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class userScrean extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Mohamed Alaa',
      phone: '01026489575',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Alaa',
      phone: '01026489269',
    ),
    UserModel(
      id: 3,
      name: 'Mostafa Alaa',
      phone: '01026489575',
    ),
    UserModel(
      id: 1,
      name: 'Mohamed Alaa',
      phone: '01026489575',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Alaa',
      phone: '01026489269',
    ),
    UserModel(
      id: 3,
      name: 'Mostafa Alaa',
      phone: '01026489575',
    ),
  ];

  get phone => null;

  get name => null;

  get id => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.all(20.0),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
        ));
  }

  Widget buildUserItem(UserModel user) => Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '$id',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$phone',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      );
}
