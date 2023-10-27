// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/models/filters.dart';

class HashtagFilters extends StatelessWidget {
  const HashtagFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 14,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: filterList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Filter filter = filterList[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 38.0),
                    child: Text(
                      filter.name,
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                        color: const Color(0xff9397A0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
