import 'package:flutter/material.dart';

class messengerscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15.0,
            child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 20.0,
              ),
          ),),
          IconButton(onPressed: (){}, icon: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15.0,
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 20.0,
            ),
          ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20.0),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  children: [
                    Icon(Icons.search,),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height : 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 50.0,
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    bottom: 3.0,
                                    end: 3.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7.0,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Kareem Taha Abdulfatah',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height : 20.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/82422435?v=4'),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 9.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 6.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kareem Taha Abdulfatah',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Thanks my friend.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    '8.24 PM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
