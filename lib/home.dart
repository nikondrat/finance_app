import 'package:finance_app/cards.dart';
import 'package:finance_app/chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sm),
              child: const CircleAvatar(
                backgroundColor: Colors.amberAccent,
              ),
            )
          ],
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.sm),
            child: IconButton(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          )),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.sm),
        children: [
          Text(
            'Your Balance',
            style: TextStyle(fontSize: 24.sm, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.02.sh),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const CardsPage(),
                  )),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.04.sw, vertical: 0.02.sh),
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'June 14, 2022',
                      style: TextStyle(fontSize: 16.sm),
                    ),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$27,802.05',
                          style: TextStyle(
                              fontSize: 30.sm, fontWeight: FontWeight.bold),
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
            style: TextStyle(fontSize: 24.sm, fontWeight: FontWeight.bold),
          ),
          const FinanceChart(),
        ],
      ),
    );
  }
}
