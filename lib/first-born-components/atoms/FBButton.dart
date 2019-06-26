import 'FBText.dart';
import 'package:flutter/material.dart';

class FBButton extends StatelessWidget {
  FBButton(
      {@required this.onPress,
      this.icon,
      this.text,
      this.child,
      this.transparent = false,
      this.color = Colors.blue});

  final IconData icon;
  final String text;
  final Color color;
  final bool transparent;
  final onPress;
  final child;

  @override
  Widget build(BuildContext context) {
    var buttonChild;

    if (icon != null && text == null) {
      if (transparent) {
        return IconButton(
          onPressed: onPress,
          icon: getIcon(color),
        );
      }

      return Center(
        child: Container(
          child: Ink(
            decoration: ShapeDecoration(
              color: color,
              shape: CircleBorder(),
            ),
            child: IconButton(
              onPressed: onPress,
              icon: getIcon(Colors.white),
            ),
          ),
        ),
      );
    }

    if (icon != null) {
      if (transparent) {
        buttonChild = new Container(
          child: Row(
            children: <Widget>[getIcon(color), getText(color)],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        );

        return FlatButton(
          onPressed: onPress,
          child: buttonChild,
        );
      } else {
        buttonChild = new Container(
          child: Row(
            children: <Widget>[getIcon(Colors.white), getText(Colors.white)],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        );

        return FlatButton(
          onPressed: onPress,
          child: buttonChild,
          color: color,
        );
      }
    } else {
      if (transparent) {
        buttonChild = new Container(
          child: Row(
            children: <Widget>[getText(Colors.white)],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        );

        return FlatButton(
          onPressed: onPress,
          child: buttonChild,
          color: color,
        );
      } else {
        buttonChild = new Container(
          child: Row(
            children: <Widget>[getText(color)],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        );

        return FlatButton(
          onPressed: onPress,
          child: buttonChild,
        );
      }
    }
  }

  Icon getIcon(Color iconColor) {
    if (icon != null) {
      return Icon(icon, color: iconColor);
    }
  }

  FBText getText(Color textColor) {
    if (text != null) {
      return FBText(
        data: text,
        color: textColor,
      );
    }
  }
}
