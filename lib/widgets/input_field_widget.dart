import 'package:flutter/material.dart';
import 'package:second_video_raw_material/app_utils.dart';

class InputField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final TextInputType type;
  final TextEditingController controller;
  final IconData? icon;
  final Function? validator;
  final bool enabled;

  InputField(
      {required this.text,
      this.obscureText = false,
      this.type = TextInputType.text,
      required this.controller,
      this.validator,
      this.enabled = true,
      this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: TextFormField(
              enabled: enabled,
              keyboardType: type,
              validator: (value) {
                return validator!(value);
              },
              obscureText: obscureText,
              controller: controller,
              style: const TextStyle(
                color: colorWhite,
                fontFamily: 'Montserrat',
              ),
              textAlign: TextAlign.center,
              cursorColor: colorWhite,
              decoration: InputDecoration(
                isDense: true,
                prefixIcon: Icon(
                  icon,
                  color: Colors.white,
                  size: 25.0,
                ),
                focusColor: Colors.white,
                hintText: text,
                hintStyle: const TextStyle(
                  color: colorGrey,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                ),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: colorWhite)),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: colorGrey)),
                contentPadding: const EdgeInsets.only(top: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
