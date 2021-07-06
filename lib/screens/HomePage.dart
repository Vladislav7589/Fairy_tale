import 'package:fairy_tale_app/screens/Services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Услуги",
                  ),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Акции"),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Карта"),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Рестораны",
                    ),
                    color: Colors.black12,
                    padding: EdgeInsets.all(0)),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Детям"),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                    onPressed: () {},
                    child: Text("Мероприятия", textAlign: TextAlign.center),
                    color: Colors.black12,
                    padding: EdgeInsets.all(0)),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Важное"),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("SPA"),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: ButtonTheme(
                minWidth: 100,
                height: 100,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Контакты"),
                  color: Colors.black12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
