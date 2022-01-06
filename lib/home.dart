import 'package:finance_app/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 32),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  iconSize: 32.sm,
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.arrow_up,
                    color: Colors.red,
                  )),
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  iconSize: 32.sm,
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.arrow_down,
                    color: Colors.greenAccent,
                  )),
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  iconSize: 32.sm,
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.cash,
                    color: Colors.amberAccent,
                  )),
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  iconSize: 32.sm,
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.cloud_upload,
                    color: Colors.blue,
                  )),
            ],
          ),
          Text(
            'Activities',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          const FinanceChart(),
        ],
      ),
    );
  }
}
