import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:starbucks_clone/main_content/first_content.dart';
import 'package:starbucks_clone/main_content/seconde_content.dart';

class StarbucksHome extends StatefulWidget {
  const StarbucksHome({super.key});

  @override
  State<StarbucksHome> createState() => _StarbucksHomeState();
}

class _StarbucksHomeState extends State<StarbucksHome> {
  StarBucksContent content = StarBucksContent();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Image.asset('assets/starbucks-image/starbucks_01.png'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('1 * until Green Level',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  )),
                              LinearPercentIndicator(
                                barRadius: Radius.circular(10),
                                width: 270,
                                padding: EdgeInsets.only(top: 8),
                                lineHeight: 20.0,
                                animationDuration: 2000,
                                percent: 0.6,
                                progressColor: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 8),
                          child: Row(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text("/5*",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.grey)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
          SliverAppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              pinned: true,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(right: 16,left: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 8),
                            child: const Icon(
                              Icons.mail_outline,
                              size: 30,
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(right: 16),
                              child: const Text(
                                "What's New",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                          Container(
                            padding: const EdgeInsets.only(right: 8),
                            child: const Icon(
                              Icons.loyalty,
                              size: 30,
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(right: 8),
                              child: const Text(
                                "Coupon",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                        child: Icon(
                      Icons.notifications,
                      size: 30,
                    ))
                  ],
                ),
              )),
          SliverList(
            delegate: SliverChildListDelegate([
              content.image_content("assets/starbucks-image/01_01_2023_winter_e-frequency.png"),
              content.image_content("assets/starbucks-image/02_01_siren_order.png"),
              content.secondeContent(),
              Container(color: Colors.purple, height: 100.0),
              Container(color: Colors.purple, height: 100.0),
              Container(color: Colors.purple, height: 100.0),
              Container(color: Colors.green, height: 200.0),
              Container(color: Colors.green, height: 200.0),
              Container(color: Colors.green, height: 200.0),
            ]),
          ),
        ],
      ),
    );
  }
}
