import 'package:expense_tracker/pages/setting_page.dart';
import 'package:expense_tracker/styles/text_styles.dart';
import 'package:expense_tracker/utilities/currency.dart';
import 'package:expense_tracker/utilities/screen_size.dart';
import 'package:expense_tracker/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final double totalAmount = 200000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Hello, Sam",
          style: displayText(),
        ),
        centerTitle: false,
        actions: [
          // IconButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, SettingPage.routeName);
          //     },
          //     icon: const Icon(Icons.settings_outlined)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingPage.routeName);
              },
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.only(left: 20),
            width: ScreenSize.width,
            height: ScreenSize.height / 3,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/background.png"), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Remaining",
                  style: TextStyle(color: Colors.white),
                ),
                FittedBox(
                  child: Text(
                    Currency.format(totalAmount),
                    style: const TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ListItem(time: "3:00pm", price: "1000"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/create");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
