import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/325960398_2271116273069787_4360145121626472879_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KGJED_TKErEAX-pKD0d&_nc_ht=scontent-hbe1-1.xx&oh=00_AfDR4260MYHxrqfAWQCmzeF53jAbRzSswZQAQTnDfBVB7A&oe=63DE6048'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ]),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
              ),
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10.0),
                  Text('Search'),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => buildstory(),
                itemCount: 5,
                separatorBuilder: (context, index) => SizedBox(width: 20.0),
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => buildItemChats(),
              separatorBuilder: (context, index) => SizedBox(
                height: 20.0,
              ),
              itemCount: 15,
            ),
          ]),
        ),
      ),
    );
  }

  // build item

  Widget buildItemChats() => Row(
        children: [
          Stack(alignment: Alignment.bottomRight, children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/325960398_2271116273069787_4360145121626472879_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KGJED_TKErEAX-pKD0d&_nc_ht=scontent-hbe1-1.xx&oh=00_AfDR4260MYHxrqfAWQCmzeF53jAbRzSswZQAQTnDfBVB7A&oe=63DE6048'),
            ),
            // CircleAvatar(
            //  radius: 8.0,
            //  backgroundColor: Colors.white,
            // ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ]),
          SizedBox(width: 20.0),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Ahmed Alaa',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(children: [
                Expanded(
                  child: Text(
                    'hello my name is ahmed ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('02:00 pm '),
              ]),
            ]),
          ),
        ],
      );

  Widget buildstory() => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(alignment: Alignment.bottomRight, children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/325960398_2271116273069787_4360145121626472879_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KGJED_TKErEAX-pKD0d&_nc_ht=scontent-hbe1-1.xx&oh=00_AfDR4260MYHxrqfAWQCmzeF53jAbRzSswZQAQTnDfBVB7A&oe=63DE6048'),
              ),
              // CircleAvatar(
              //  radius: 8.0,
              //  backgroundColor: Colors.white,
              // ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ]),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'Mohamed Alaa Abdo Helal',
              style: TextStyle(
                fontSize: 13.0,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
