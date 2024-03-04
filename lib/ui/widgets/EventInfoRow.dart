import 'package:flutter/cupertino.dart';
import 'package:team_manager_registration/Constants/Constants.dart';

class EventInfoRow extends StatelessWidget {
  String text;
  IconData icon;

  EventInfoRow({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Constants.primaryColor,
          ),
          Expanded(
            // child: Align(
            //     alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: Constants.grayTextStyle,
              ),
            ),
            // ),
          )
        ],
      ),
    );
  }
}