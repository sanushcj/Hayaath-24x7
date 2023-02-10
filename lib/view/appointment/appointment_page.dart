import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hayaath_24x7/core/Colors/mycolors.dart';
import 'package:hayaath_24x7/view/appointment/tabs/cancelled.dart';
import 'package:hayaath_24x7/view/appointment/tabs/completed.dart';
import 'package:hayaath_24x7/view/appointment/tabs/upcoming.dart';

import '../Widgets/appbar/appbar_public.dart';

class AppoinmentPage extends StatelessWidget {
  const AppoinmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.of(context).size.height / 11,
          ),
          child: PublicAppBar(title: 'Appointment')),
      body: DefaultTabController(
        length: 3,
        child: Padding(
            padding: const EdgeInsets.only(left: 3, right: 2),
            child: Column(
              children: <Widget>[
                Container(
                  height: 55,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: rrPremiumBlue,
                        borderRadius: BorderRadius.circular(25.0)),
                    labelColor: rrWhite,
                    unselectedLabelColor: rrGrey,
                    tabs: const [
                      Tab(
                        text: 'Upcoming',
                      ),
                      Tab(
                        text: 'Completed',
                      ),
                      Tab(
                        text: 'Cancelled',
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [UpcomingTab(), CompletedTab(), CancelledTab()],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
