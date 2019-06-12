import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class TextUtil {
  static const fontSizes = {
    "h1": {"md": 96.0, "ios": 34.0},
    "h2": {"md": 60.0, "ios": 28.0},
    "h3": {"md": 48.0, "ios": 24.0},
    "h4": {"md": 34.0, "ios": 22.0},
    "h5": {"md": 24.0, "ios": 20.0},
    "h6": {"md": 20.0, "ios": 17.0},
    "p": {"md": 16.0, "ios": 16.0},
    "callout": {"md": 15.0, "ios": 16.0},
    "sub_heading": {"md": 14.0, "ios": 14.0},
    "footnote": {"md": 13.0, "ios": 13.0},
    "caption_big": {"md": 12.0, "ios": 12.0},
    "caption_small": {"md": 11.0, "ios": 11.0},
  };

  static double getSize(String text) {
    if (Platform.isAndroid) {
      return fontSizes[text]["md"];
    } else if (Platform.isIOS) {
      return fontSizes[text]["ios"];
    }
    return 16;
  }
}
