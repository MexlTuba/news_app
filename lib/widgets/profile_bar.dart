import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(31, 56, 166, 35),
      child: Row(
        children: [
          Image.asset('assets/images/Vector.png'),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: const Color(0xff19202D),
                ),
              ),
              SizedBox(height: 7),
              Text(
                'Thursday, 26 October',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                  color: const Color(0xff9397A0),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
