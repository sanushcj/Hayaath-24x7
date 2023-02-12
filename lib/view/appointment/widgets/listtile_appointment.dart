import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/Colors/mycolors.dart';

class AppointmentTile extends StatelessWidget {
  const AppointmentTile({
    super.key, required this.docName, required this.img, required this.colors, required this.status,
  });
final String docName;
final String img;
final String status;
final Color colors; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: rrGrey,
        ),
        height: MediaQuery.of(context).size.height / 5,
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: rrPremiumBlue,
                       image: DecorationImage(image: NetworkImage(img),
      fit: BoxFit.cover)
                    ),
                  ),
                ),
                Container(
                  color: rrWhite,
                  width: 200,
                  height: 85,
                  margin: EdgeInsets.only(
                    top: 18,right: 0
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Dr.$docName',overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Video Call  - ',
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 11),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color:colors )),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Text(
                                  status,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 11,
                                      color: colors),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Dec 14 2023  | 11:00 PM',
                        style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 11),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundColor: rrPremiumBlue.withOpacity(0.2),
                    child: Icon(FontAwesomeIcons.video,color: rrPremiumBlue,),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 32,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color: rrPremiumBlue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Book Again',
                    style: TextStyle(color: rrPremiumBlue, fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 32,
                  width: 180,
                  decoration: BoxDecoration(
                      color: rrPremiumBlue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Leave a Review',
                    style: TextStyle(color: rrWhite, fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

List <String> docimg = [
  'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://www.spandanhealthcare.in/wp-content/uploads/2015/12/pic-team-1.jpg',
  'https://shtheme.com/demosd/medifine/wp-content/uploads/2017/07/doctor-single-2.jpg',
  'https://www.shutterstock.com/image-photo/young-beautiful-doctor-woman-wearing-260nw-1703562619.jpg',
  'https://t4.ftcdn.net/jpg/02/76/94/29/360_F_276942923_vRe2zKQBgaQj0MyNOjqD8f7eVMyKZ2eL.jpg',
  'https://thumbs.dreamstime.com/b/young-female-doctor-20940545.jpg',
  'https://www.westend61.de/images/0000947995pw/portrait-of-red-haired-young-female-doctor-in-hospital-CUF12003.jpg',
  'https://t4.ftcdn.net/jpg/01/36/18/77/360_F_136187711_qeBMOwkPdTg1dCN8e5TR1AmduXDz60Xn.jpg'

];

List <String> docName = [
  'Malavika A',
  'Silu Santhosh',
  'Chinnu Kavitha',
  'Jyothi Sunil',
  'Anna Varkey',
  'Marry PJ',
  'Rosemary Wilson',
  'Maneesh Mathew'
];

