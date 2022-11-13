import 'package:flutter/material.dart';
import 'package:messages_apps/tema.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBlackColors,
        appBar: AppBar(
          backgroundColor: kBlackColors,
          title: Row(
            children: [
              Image.asset(
                'assets/images/imageprofil.png',
                width: 40,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Chatku',
                style: pinkTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/icon_camera.png',
                width: 40,
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset(
                'assets/icon_message.png',
                width: 40,
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 22,
            ),
            Container(
              height: 42,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kPinkColors.withOpacity(0.9),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    size: 20,
                    color: kWhiteColors,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Search',
                    style: whiteTextStyle.copyWith(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/button_add.png',
                    title: 'Your Story',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story1.png',
                    title: 'Niko',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story2.png',
                    title: 'Ayase',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story3.png',
                    title: 'YOASOBI',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story4.png',
                    title: 'LiSA',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story5.png',
                    title: 'Cindy',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story6.png',
                    title: 'Lisa',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story7.png',
                    title: 'Pochita',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story8.png',
                    title: 'Refina',
                  ),
                  CeritaItem(
                    imgUrl: 'assets/images/image_story9.png',
                    title: 'Kei',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ItemsChat(
              name: 'Jendut Rubyjane',
              readtext: 'You: Hi There! · 12:00 AM',
              imgUrl: 'assets/images/jennie.png',
              unread: false,
            ),
            ItemsChat(
              name: 'Jichu Rabbit Kim',
              readtext: 'You: Alright Hun! · 10:30 AM',
              imgUrl: 'assets/images/jisoo.png',
              unread: true,
            ),
            ItemsChat(
              name: 'Lila Ikura',
              readtext: 'You: Ok, See you right there! · Thu',
              imgUrl: 'assets/images/lila.png',
              unread: false,
            ),
            ItemsChat(
              name: 'Naruto Uzumaki',
              readtext: 'Hey Where are u now?  · Fri',
              imgUrl: 'assets/images/naruto.png',
              unread: true,
            ),
            ItemsChat(
              name: 'Chongah Uwak-uwak',
              readtext: 'I left now.  · Fri',
              imgUrl: 'assets/images/roses.png',
              unread: false,
            ),
            ItemsChat(
              name: 'Manobal',
              readtext: 'You: Can I ask a favor for you? · 12:30 AM',
              imgUrl: 'assets/images/lisa.png',
              unread: false,
            ),
            ItemsChat(
              name: 'Yama',
              readtext: 'You: You are welcome! · 9:25 AM',
              imgUrl: 'assets/images/yama.png',
              unread: true,
            ),
            ItemsChat(
              name: 'Eve',
              readtext: 'You: Right now, Im so busy · Sat',
              imgUrl: 'assets/images/eve.png',
              unread: true,
            ),
            ItemsChat(
              name: 'Denji',
              readtext: 'Hi honey! Are u busy right now? · Mon',
              imgUrl: 'assets/images/denji.png',
              unread: false,
            ),
            ItemsChat(
              name: 'Makima',
              readtext: 'I need your help  · 09:20',
              imgUrl: 'assets/images/makima.png',
              unread: false,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBottomNavBarColors,
          showUnselectedLabels: true,
          unselectedItemColor: kPinkColors,
          selectedItemColor: kWhiteColors,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_chat.png',
                width: 24,
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_people.png',
                width: 24,
              ),
              label: 'People',
            ),
          ],
        ),
      ),
    );
  }
}

class CeritaItem extends StatelessWidget {
  final String imgUrl;
  final String title;

  const CeritaItem({
    Key? key,
    required this.imgUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.asset(
            imgUrl,
            width: 65,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: pinkTextStyle,
          ),
        ],
      ),
    );
  }
}

class ItemsChat extends StatelessWidget {
  final String name;
  final String readtext;
  final String imgUrl;
  final unread;

  const ItemsChat({
    Key? key,
    required this.name,
    required this.readtext,
    required this.imgUrl,
    required this.unread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23,
        vertical: 8,
      ),
      child: Row(
        children: [
          Image.asset(
            imgUrl,
            width: 60,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: pinkTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(readtext,
                    style: unread
                        ? kIconTextStyle
                        : greyTextStyle.copyWith(color: kBlackColors2)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
