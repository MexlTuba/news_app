// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged<String> onTextChanged;

  const SearchBarWidget({Key? key, required this.onTextChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode _focusNode = FocusNode();
    return Builder(
      builder: (context) {
        _focusNode.addListener(() {
          (context as Element).markNeedsBuild();
        });
        return Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 315,
                height: 49,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15.0),
                  border: _focusNode.hasFocus
                      ? Border.all(color: const Color(0xff5474FD), width: 1.0)
                      : Border.all(color: Colors.transparent),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 13),
                    Expanded(
                      child: TextField(
                        focusNode: _focusNode,
                        onChanged: onTextChanged,
                        decoration: InputDecoration(
                          hintText: "Search for article...",
                          hintStyle: TextStyle(
                              fontFamily: "Gellix",
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: const Color(0xffA7A7A7)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          width: 47,
                          height: 49,
                          decoration: BoxDecoration(
                            color: const Color(0xff5474FD),
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                        ),
                        SvgPicture.asset('assets/svg/search_icon.svg'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
