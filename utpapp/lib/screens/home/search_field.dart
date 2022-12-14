import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '/../size_confige.dart';

class SearchField extends StatelessWidget {
  SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getRelativeWidth(0.88),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: getRelativeHeight(0.02)),
              fillColor: Colors.white,
              filled: true,
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: getRelativeWidth(0.046),
                color: Colors.blueGrey.withOpacity(0.9),
              ),
              prefixIcon: Icon(
                LineIcons.search,
                color: Colors.blueGrey.withOpacity(0.9),
                size: getRelativeWidth(0.065),
              ),
              border: outlineBorder,
              enabledBorder: outlineBorder,
              focusedBorder: outlineBorder),
        ),
      ),
    );
  }

  final outlineBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(30),
  );
}
