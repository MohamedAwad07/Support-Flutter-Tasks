import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultTextForm({
  required TextEditingController controller,
  required String label,
  TextInputType? keyboard,
  required IconData preIcon,
  required String? Function(String? value) validate,
  bool isPassword = false,
  IconData? sufIcon,
  void Function()? obscure,
}) =>
    Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
        end: 20.0,
        top: 15.0,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: keyboard,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
          prefixIcon: Icon(
            preIcon,
            color: Colors.orange.shade900,
          ),
          suffixIcon: sufIcon != null
              ? IconButton(
                  onPressed: obscure,
                  icon: Icon(
                    sufIcon,
                  ))
              : null,
        ),
        validator: validate,
      ),
    );

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  double border = 0.0,
  bool isUpper = true,
  required String text,
  required void Function() function,
}) =>
    Container(
      width: width,
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17.0,
          ),
        ),
      ),
    );

Widget BuildCatItem({
  required String label,
  required String image,
}) =>
    Padding(
      padding: EdgeInsetsDirectional.only(start: 18.0),
      child: Row(
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
              25.0,
            )),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: AssetImage(image),
                  height: 200.0,
                  width: 120.0,
                  fit: BoxFit.cover,
                ),
                Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        vertical: 3.0, horizontal: 15.0),
                    width: 120.0,
                    color: Colors.black.withOpacity(0.0),
                    child: Text(
                      label,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
