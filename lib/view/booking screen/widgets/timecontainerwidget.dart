
import 'package:flutter/material.dart';
import 'package:hayaath_24x7/view/booking%20screen/widgets/hourbox.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HourContainerWidget(
                time: '10 : 20',
              ),
              HourContainerWidget(
                time: '11 : 00',
              ),
              HourContainerWidget(
                time: '11 : 20',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HourContainerWidget(
                time: '10 : 20',
              ),
              HourContainerWidget(
                time: '11 : 00',
              ),
              HourContainerWidget(
                time: '11 : 20',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HourContainerWidget(
                time: '10 : 20',
              ),
              HourContainerWidget(
                time: '11 : 00',
              ),
              HourContainerWidget(
                time: '11 : 20',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HourContainerWidget(
                time: '10 : 20',
              ),
              HourContainerWidget(
                time: '11 : 00',
              ),
              HourContainerWidget(
                time: '11 : 20',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
