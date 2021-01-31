import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageReferenceVertical extends StatefulWidget {
  final String number;
  PageReferenceVertical(this.number);
  @override
  _PageReferenceVerticalState createState() => _PageReferenceVerticalState();
}

class _PageReferenceVerticalState extends State<PageReferenceVertical> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100, bottom: 100),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.number,
            style: GoogleFonts.codaCaption(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),
          Container(
            width: 1,
            height: MediaQuery.of(context).size.height - 400,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white, width: 2.0)),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white, width: 2.0)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
