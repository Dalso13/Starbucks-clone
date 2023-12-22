import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks_clone/main_content/first_content.dart';

extension SecondeContent on StarBucksContent {
  Widget secondeContent() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24,left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quick Order',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Text('최근 주문',style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey , borderRadius: BorderRadius.circular(20)),
                    width: 330,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 32,bottom: 32,right: 8,left: 24),
                                    child: SizedBox(
                                      width: 50,
                                      child: Image.network('https://i.namu.wiki/i/UdLqbnEaz22Ozl-Z8JYEsFis0AJ6aA9zPeuyJx7b28KvHPXMjOsNbXG4y6qWLwiEeis9HIqX2V61CvdGh_ox7A.webp'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text('카페 아메리카노'),
                                        Text("HOT | Tail")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.heart_broken),
                            )
                          ],
                        ),
                        Container( height:1.0,
                          color:Colors.white,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16,top: 8,bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('가재올뉴타운'),
                              TextButton(onPressed: () {}, child: Text("바로 주문하기"))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
  }
}