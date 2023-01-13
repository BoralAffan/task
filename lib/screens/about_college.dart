import 'package:flutter/material.dart';
import 'package:task/components/apply_nowButton.dart';
import 'package:task/components/student_widget.dart';
import 'package:task/utils/colors.dart';

class AboutCollege extends StatefulWidget {
  const AboutCollege({super.key});

  @override
  State<AboutCollege> createState() => _AboutCollegeState();
}

class _AboutCollegeState extends State<AboutCollege> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 30,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Location",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: DecorationImage(
                      image: AssetImage('assets/map1.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Student reviews',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(blurRadius: 5, color: Colors.grey)
                    ]),
                    child: Student(img: 'assets/std1.jpg')),
                SizedBox(
                  width: 6,
                ),
                Student(img: 'assets/std2.jpg'),
                SizedBox(
                  width: 6,
                ),
                Student(img: 'assets/std3.jpg'),
                SizedBox(
                  width: 6,
                ),
                Student(img: 'assets/std4.jpg'),
                SizedBox(
                  width: 6,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    '+12',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_drop_up_rounded,
              color: Colors.grey,
              size: 49,
            ),
            Card(
              elevation: 10,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              child: Container(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Arun sai',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
           ApplyButton()
          ],
        ),
      ),
    );
  }
}
