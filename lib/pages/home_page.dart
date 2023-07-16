import 'package:expense_tracker/pages/setting_page.dart';
import 'package:expense_tracker/styles/text_styles.dart';
import 'package:expense_tracker/utilities/currency.dart';
import 'package:expense_tracker/utilities/screen_size.dart';
import 'package:expense_tracker/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../utilities/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final double totalAmount = 200000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Text>[
                      Text(
                        "Hello, myo",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Text>[
                  const Text(
                    "Total Amount",
                    style: TextStyle(
                    ),
                  ),
                  Text(
                    totalAmount.toString(),
                    style: const TextStyle(height: 2, fontSize: 24),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: ScreenSize.width/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: foregroundColor,
                  ),
                ).animate().fadeIn(duration: const Duration(seconds: 1)),
              ),

              Expanded(
                flex: 2,
                child: Container(
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
