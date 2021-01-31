import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadAndSub extends StatefulWidget {
  final double width;
  final String head;
  final String sub;
  final bool alignRight;
  HeadAndSub({this.alignRight, this.head, this.sub, this.width});
  @override
  _HeadAndSubState createState() => _HeadAndSubState();
}

class _HeadAndSubState extends State<HeadAndSub> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: Column(
        crossAxisAlignment: widget.alignRight != null
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Text(
            widget.head.toUpperCase(),
            style: GoogleFonts.archivoBlack(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Colors.white,
                letterSpacing: 1.2),
            textAlign:
                widget.alignRight != null ? TextAlign.right : TextAlign.left,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.sub,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                color: Colors.white,
                letterSpacing: 1.2),
            textAlign:
                widget.alignRight != null ? TextAlign.right : TextAlign.left,
          ),
        ],
      ),
    );
  }
}
