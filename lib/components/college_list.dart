import 'package:flutter/material.dart';
import 'package:task/components/saveIcon.dart';
import 'package:task/screens/college_details.dart';
import 'package:task/utils/colors.dart';

class CollegeList extends StatefulWidget {
  String title;
  String img;
  CollegeList({required this.title, required this.img, super.key});

  @override
  State<CollegeList> createState() => _CollegeListState();
}

class _CollegeListState extends State<CollegeList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CollegeDetails()));
      }),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                          image: DecorationImage(
                              image: AssetImage(widget.img), fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: const Icon(
                              Icons.share,
                              size: 18,
                            ),
                          ),
                          SaveIcon(
                            iconColor: Colors.black,
                            size: 50,
                            icon: Icons.bookmark,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  '4.3',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: const Text(
                              'Lorem ipsuem inst iaksn dslkdjw dsiouewd dskhewi siwuhsd ewuiaoicn dsaiewurhdcvn asoiewjdnfs ad9ielwncvi dadalkjgndsf i ewfjksd v efjlsdiver dsoe',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: UtilColors().primaryColor),
                            child: const Center(
                              child: Text(
                                'Apply now',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/like.png'),
                              const Text(
                                'Lorem ipsum lorem ispum loremo ispemgn',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.grey,
                              ),
                              Text(
                                '468+',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
