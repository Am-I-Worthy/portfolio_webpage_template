import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageReference extends StatefulWidget {
  final String number;
  PageReference(this.number);
  @override
  _PageReferenceState createState() => _PageReferenceState();
}

class _PageReferenceState extends State<PageReference> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 100,right: 100),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.number,
            style: GoogleFonts.codaCaption(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18.0),
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width-400,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white,width: 2.0)),
                ),
                SizedBox(width: 4.0,),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white,width: 2.0)),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
