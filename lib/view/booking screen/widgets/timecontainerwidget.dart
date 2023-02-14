import 'package:flutter/material.dart';
import 'hourbox.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                  12,
                  (index) => HourContainerWidget(
                        time: '10 : 4',
                        indexofthewidget: index,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
