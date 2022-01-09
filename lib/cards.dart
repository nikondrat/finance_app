import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Ionicons.ellipsis_vertical,
                  color: Colors.black,
                )),
          ),
        ],
        leading: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 18.sm),
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Your Cards',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'You Have 3 Active Card',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold),
            ),
            trailing: FloatingActionButton(
              backgroundColor: Colors.amberAccent,
              hoverElevation: 0,
              highlightElevation: 0,
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              elevation: 0,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.02.sh),
            padding: EdgeInsets.all(12.sm),
            height: 220.sm,
            decoration: BoxDecoration(
                color: const Color(0xFF855CAD),
                borderRadius: BorderRadius.circular(16.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Ionicons.card_outline,
                      color: Colors.white,
                      size: 40.sm,
                    ),
                    Text(
                      '4562 1122 4595 7852',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp),
                    ),
                    Text(
                      'Nikita',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiry Date',
                          style: TextStyle(
                              color: Colors.grey.shade200, fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 0.005.sh,
                        ),
                        Text(
                          '04/26',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/1200px-Mastercard_2019_logo.svg.png',
                      fit: BoxFit.fitWidth,
                      isAntiAlias: true,
                      width: 80.sm,
                    ),
                    Text(
                      'Mastercard',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.01.sh),
            child: Text(
              'Recent Transactions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
          ),
          ListTile(
            leading: const Icon(
              Ionicons.fast_food_outline,
              color: Colors.black54,
              size: 32,
            ),
            title: Text(
              'KFC',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            subtitle: Text(
              'June 26',
              style: TextStyle(fontSize: 14.sp, color: Colors.black54),
            ),
            trailing: Text(
              '-\$12',
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          ListTile(
            leading: const Icon(
              Ionicons.logo_paypal,
              color: Colors.black54,
              size: 32,
            ),
            title: Text(
              'PayPal',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            subtitle: Text(
              'June 28',
              style: TextStyle(fontSize: 14.sp, color: Colors.black54),
            ),
            trailing: Text(
              '+\$2400',
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          ListTile(
            leading: const Icon(
              Ionicons.build_outline,
              color: Colors.black54,
              size: 32,
            ),
            title: Text(
              'Car Repair',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            ),
            subtitle: Text(
              'June 28',
              style: TextStyle(fontSize: 14.sp, color: Colors.black54),
            ),
            trailing: Text(
              '-\$230',
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }
}
