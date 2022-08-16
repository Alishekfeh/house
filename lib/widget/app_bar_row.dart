import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarRpw extends StatelessWidget {
  const AppBarRpw({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Center(child: Icon(Icons.menu)),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current location",
                style: GoogleFonts.manrope(color: Colors.grey.shade400,fontSize: 18),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Melbourne ,aus",
                    style:
                    GoogleFonts.manrope(fontWeight: FontWeight.w600,fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Center(
            child: Icon(Icons.tune_sharp),
          ),
        ),
      ],
    );
  }
}