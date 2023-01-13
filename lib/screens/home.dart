import 'package:flutter/material.dart';
import 'package:task/components/custom_bottomBar.dart';
import 'package:task/components/grid.dart';
 
import 'package:task/components/mic_widget.dart';
import 'package:task/components/search_bar.dart';
import 'package:task/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: UtilColors().primaryColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                      )
                    ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Find your own way ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Search in 600 College around!',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [SearchBar(), MicWidget()],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  MainGrid(image: 'assets/bg1.jpg'),
                  MainGrid(
                    image: 'assets/bg3.jpg',
                  ),
                  MainGrid(
                    image: 'assets/bg4.jpg',
                  ),
                ],
              ),
            )
          )
        ],
      ),
        bottomNavigationBar: CustomBottomNav()
    );
  }
}
