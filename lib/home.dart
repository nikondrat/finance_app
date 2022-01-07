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
          Text(
            'Your Balance',
            style: TextStyle(fontSize: 28.sm, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'June 14, 2022',
                  style: TextStyle(fontSize: 18.sm),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$27,802.05',
                      style: TextStyle(
                          fontSize: 40.sm, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '15%',
                          style: TextStyle(fontSize: 24.sm),
                        ),
                        Icon(
                          Ionicons.arrow_up,
                          size: 32.sm,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                  Text(
                    'Sent',
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 18.sm),
                  )
                ],
              ),
              Column(
                children: [
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
                  Text(
                    'Receive',
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 18.sm),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      iconSize: 32.sm,
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.cash_outline,
                        color: Colors.amberAccent,
                      )),
                  Text(
                    'Loan',
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 18.sm),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      iconSize: 32.sm,
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.cloud_upload_outline,
                        color: Colors.blue,
                      )),
                  Text(
                    'Topup',
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 18.sm),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.sm,
          ),
          Text(
            'Activities',
            style: TextStyle(fontSize: 28.sm, fontWeight: FontWeight.bold),
          ),
          const FinanceChart(),
        ],
      ),
    );
  }
}
