

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_manager_registration/Constants/Constants.dart';
import 'package:team_manager_registration/ui/widgets/LoadingIcon.dart';

class OliButton extends StatefulWidget {
  double width;
  ThemeData? theme;
  TextStyle? textStyle;
  String text;
  bool? enabled;
  final Future<void> Function() onPressed;

  OliButton({
  super.key, required this.width, this.theme, required this.text, required this.onPressed, this.textStyle, this.enabled
  });

  @override
  State<OliButton> createState() => _OliButtonState();
}

class _OliButtonState extends State<OliButton> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: 55,
      child: Theme(
        data: widget.theme != null  ? widget.theme!.copyWith(disabledColor: widget.theme!.primaryColor) : Theme.of(context).copyWith(
            elevatedButtonTheme:
            Constants.orange1ElevatedButtonTheme, disabledColor: Constants.primaryColor),
        child: ElevatedButton(
            onPressed: !(widget.enabled ?? true) || _isLoading  ? null : _handleButtonPress,
            child: _isLoading
                ? const LoadingIcon()
                : Text(widget.text,
                style: widget.textStyle ?? Constants.cardGrayTextStyle //Constants.primaryButtonTextStyle,
            )
        ),
      ),
    );
  }

  Future<void> _handleButtonPress() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await widget.onPressed();
    } catch (error) {
      // Handle errors if the operation fails.
      print("Error: $error");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
  }

