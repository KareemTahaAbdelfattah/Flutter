import 'package:flutter/material.dart';

class UserModel{
  final int? id;
  final String? name;
  final int? phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
});
}
class UserScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(id: 1, name: 'Kareem Taha ', phone: 010178),
    UserModel(id: 2, name: 'Kimo Taha ', phone: 0128178),
    UserModel(id: 3, name: 'Salem Taha ', phone: 010781),
    UserModel(id: 4, name: 'Kareem Taha', phone: 0128178),
    UserModel(id: 5, name: 'Ramy Taha', phone: 0128178),
    UserModel(id: 6, name: 'Salem Tah', phone: 0101781),
    UserModel(id: 7, name: 'Salem Taha', phone: 0101781),
    UserModel(id: 8, name: 'Kareem Tah', phone: 018178),
    UserModel(id: 9, name: 'Ramy Taha ', phone: 018178),
    UserModel(id: 10, name: 'Ramy Taha ', phone: 0158178),
    UserModel(id: 11, name: 'Salem Taha ', phone: 0108781),
    UserModel(id: 12, name: 'Kareem Taha ', phone: 018178),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => BuildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
              end: 20.0
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  //1. build item.
  //2. build list.
  //3. add item to list.
  Widget BuildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                '${user.phone}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
