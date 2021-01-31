import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final TextAlign align;
  HeaderText({this.text, this.width, this.height, this.align});
  @override
  _HeaderTextState createState() => _HeaderTextState();
}

class _HeaderTextState extends State<HeaderText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 100,
      height: widget.height,
      child: Text(
        widget.text.toUpperCase(),
        style: GoogleFonts.archivoBlack(
            fontWeight: FontWeight.w500,
            fontSize: 60.0,
            color: Colors.white,
            letterSpacing: 1.2),
        textAlign: widget.align ?? TextAlign.left,
      ),
    );
  }
}
