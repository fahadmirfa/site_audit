import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ListInspecElementWidgets extends StatefulWidget {
  final String listinspecelement_text;
  final VoidCallback listinspecelement_onpressed;

  const ListInspecElementWidgets({
    required this.listinspecelement_text,
    required this.listinspecelement_onpressed,
    super.key,
  });

  @override
  State<ListInspecElementWidgets> createState() =>
      _ListInspecElementWidgetsState();
}

class _ListInspecElementWidgetsState extends State<ListInspecElementWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: tGreenLight,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 16.0, bottom: 16.0, left: 24.0, right: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.listinspecelement_text,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(color: tDarkGrey),
            ),
            IconButton(
                onPressed: widget.listinspecelement_onpressed,
                icon: Icon(Icons.arrow_drop_down))
          ],
        ),
      ),
    );
  }
}
