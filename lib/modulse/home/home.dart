import 'package:flutter/material.dart';

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('First App'),
        actions: [
          IconButton(
              onPressed: onNotification,
              icon: Icon(
                Icons.notification_important,
              )),
          IconButton(onPressed: onNotification1, icon: Icon(Icons.search)),
          IconButton(
            icon: Text('Hello'),
            onPressed: () {
              print('Hello');
            },
          )
          //  Icon(
          //   Icons.notification_important,
          //  ),
          // Icon(Icons.search),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image(
                image: NetworkImage(
                    'https://1.bp.blogspot.com/-CycsMEPNbsU/X_BdX0QFpEI/AAAAAAAB7m4/UgTRfOG0ASwFrAmYyMeSHYqYV1pmdat9gCLcBGAsYHQ/s600/00.jpg'),
                width: 200.0,
                height: 200.0,
              ),
              Container(
                color: Colors.amber.withOpacity(.7),
                width: 200.0,
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: Text(
                  'Flower',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void onNotification() {
    print('notification cliced');
  }

  void onNotification1() {
    print('اضغط كمان خلينى افووووق');
  }
}
