import 'package:flutter/material.dart';
import '../../core/Colors/mycolors.dart';
import '../Widgets/appbar/appbar_public.dart';
import 'tabs/cancelled.dart';
import 'tabs/completed.dart';
import 'tabs/upcoming.dart';

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
                    tabs: const <Tab>[
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
                    children: <StatelessWidget>[
                      UpcomingTab(),
                      CompletedTab(),
                      CancelledTab()
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
