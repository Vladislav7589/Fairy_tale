import 'dart:ui';

import 'package:fairy_tale_app/screens/Card.dart';
import 'package:fairy_tale_app/screens/Contacts.dart';
import 'package:fairy_tale_app/screens/Events.dart';
import 'package:fairy_tale_app/screens/ForChildren.dart';
import 'package:fairy_tale_app/screens/HomePage.dart';
import 'package:fairy_tale_app/screens/Important.dart';
import 'package:fairy_tale_app/screens/Promo.dart';
import 'package:fairy_tale_app/screens/Restaurant.dart';
import 'package:fairy_tale_app/screens/SPA.dart';
import 'package:fairy_tale_app/screens/Services.dart';
import 'package:flutter/material.dart';

enum Item {
  card,
  contacts,
  events,
  for_children,
  home_page,
  important,
  restaurant,
  services,
  spa,
  promo
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Main());
  }
}

class Main extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Main> {
  var currentPage = Item.home_page;

  @override
  Widget build(BuildContext context) {
    var base;

    if (currentPage == Item.home_page) // меняем body на нужный
      base = HomePage();
    else if (currentPage == Item.card)
      base = CardPage();
    else if (currentPage == Item.events)
      base = EventsPage();
    else if (currentPage == Item.contacts)
      base = ContactsPage();
    else if (currentPage == Item.for_children)
      base = ForChildrenPage();
    else if (currentPage == Item.important)
      base = ImportantPage();
    else if (currentPage == Item.restaurant)
      base = RestaurantPage();
    else if (currentPage == Item.spa)
      base = SpaPage();
    else if (currentPage == Item.services)
      base = ServicesPage();
    else if (currentPage == Item.promo) base = PromoPage();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.amber.shade100,
        toolbarHeight: 100,
        title: Image.asset("assets/logo.png"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            offset: Offset(0, 70),
            icon: Icon(Icons.notifications_active),
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Column(
                    children: [
                      Text("Уведомление"),
                    ],
                  )),
            ],
          ),
        ],
      ),
      body: base,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Image.asset("assets/logo.png"),
              decoration: BoxDecoration(color: Colors.amber.shade100),
            ),
            Menu(),
          ],
        ),
      ),
    );
  }

  Widget Menu() {
    // элементы меню
    return Container(
      child: Column(
        children: [
          DrawMenuItem(
            1,
            "Главная",
            Icons.home,
          ),
          DrawMenuItem(
            2,
            "Услуги",
            Icons.assignment,
          ),
          DrawMenuItem(
            3,
            "Акции",
            Icons.account_balance_wallet,
          ),
          DrawMenuItem(
            4,
            "Депозитная карта",
            Icons.credit_card,
          ),
          DrawMenuItem(
            5,
            "Ресторан",
            Icons.restaurant,
          ),
          DrawMenuItem(
            6,
            "Детям",
            Icons.child_care,
          ),
          DrawMenuItem(
            7,
            "Мероприятия",
            Icons.event_available,
          ),
          DrawMenuItem(
            8,
            "SPA",
            Icons.spa,
          ),
          DrawMenuItem(
            9,
            "Контакты",
            Icons.phone,
          ),
          DrawMenuItem(
            10,
            "Важное",
            Icons.campaign_outlined,
          ),
        ],
      ),
    );
  }

  Widget DrawMenuItem(int id, String title, IconData icon) {
    // отрисовка меню
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1)
              currentPage = Item.home_page;
            else if (id == 2)
              currentPage = Item.services;
            else if (id == 3)
              currentPage = Item.promo;
            else if (id == 4)
              currentPage = Item.card;
            else if (id == 5)
              currentPage = Item.restaurant;
            else if (id == 6)
              currentPage = Item.for_children;
            else if (id == 7)
              currentPage = Item.events;
            else if (id == 8)
              currentPage = Item.spa;
            else if (id == 9)
              currentPage = Item.contacts;
            else if (id == 10) currentPage = Item.important;
          });
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 10, 15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
