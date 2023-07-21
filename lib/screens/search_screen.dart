import 'package:book_tickets_app/utils/app_layout.dart';
import 'package:book_tickets_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(AppLayout.getHeight(80)),
                Text(
                  'What are\nyou looking for?',
                  style: Styles.headLineStyle1.copyWith(
                    fontSize: AppLayout.getWidth(35),
                  ),
                ),
                const Gap(20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: AppLayout.getHeight(30),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: AppLayout.getHeight(30),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Container(
                  height: AppLayout.getHeight(50),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.airplane_ticket),
                      ),
                      const Gap(5),
                      Text(
                        'Departure',
                        style: Styles.textStyle,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Container(
                  height: AppLayout.getHeight(50),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.airplane_ticket),
                      ),
                      const Gap(5),
                      Text(
                        'Arrival',
                        style: Styles.textStyle,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Container(
                  height: AppLayout.getHeight(50),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: Styles.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Find Tickets',
                      style: Styles.textStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming Flights', style: Styles.headLineStyle2),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View all',
                        style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
