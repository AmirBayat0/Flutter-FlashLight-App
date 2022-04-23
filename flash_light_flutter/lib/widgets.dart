import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

bottomSocial(
    {required img, required url, required context, required isDarkMode}) {
  final w = MediaQuery.of(context).size.width;
  final h = MediaQuery.of(context).size.height;

  return GestureDetector(
    onTap: () async {
      final String _urlL = url;

      await launch(
        _urlL,
        enableJavaScript: false,
        forceWebView: false,
        forceSafariVC: false,
      );
    },
    child: Container(
      width: w / 5.7,
      height: h / 12,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 10.0,
              offset: Offset(5, 5),
              color: isDarkMode
                  ? Color.fromARGB(255, 242, 242, 242)
                  : Color.fromARGB(255, 0, 0, 0)),
          BoxShadow(
              blurRadius: 10.0,
              offset: Offset(-5, -5),
              color: isDarkMode
                  ? Color.fromARGB(255, 209, 209, 209)
                  : Color.fromARGB(255, 37, 37, 37))
        ],
        color: isDarkMode
            ? Color.fromARGB(255, 245, 245, 245)
            : Color.fromARGB(255, 24, 24, 24),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(img),
            ),
          ),
          width: w / 8.5,
          height: h / 17.5,
        ),
      ),
    ),
  );
}
