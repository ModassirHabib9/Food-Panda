import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_clone/lib/utils/default_color.dart';

class MyCustomButton extends StatelessWidget {
  MyCustomButton(
      {Key? key,
      this.text,
      this.onPressedbtn,
      this.colorss,
      this.child,
      this.text_color,
      this.decoration,
      this.mergin,
      this.height,
      this.width,
      this.shape})
      : super(key: key);
  final String? text;
  final Function()? onPressedbtn;
  final Color? colorss;
  final Color? text_color;
  final EdgeInsetsGeometry? mergin;
  final Widget? child;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      height: height ?? 45,
      margin: mergin ?? EdgeInsets.all(20),
      width: width ?? double.infinity,
      child: MaterialButton(
        child: child ?? Text(text!),
        onPressed: onPressedbtn!,
        color: colorss ?? DefaultColor.primary,
        /*Theme.of(context).primaryColor,*/
        textColor: text_color ?? DefaultColor.backgroundColor,
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
      ),
    );
  }
}

class MyCustomButton2 extends StatelessWidget {
  MyCustomButton2(
      {Key? key,
      this.text,
      this.onPressedbtn,
      this.colorss,
      this.child,
      this.text_color,
      this.decoration,
      this.mergin,
      this.height,
      this.width,
      this.icon,
      this.icon_child})
      : super(key: key);
  final String? text;
  final Function()? onPressedbtn;
  final Color? colorss;
  final Color? text_color;
  final EdgeInsetsGeometry? mergin;
  final Widget? child;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final Icon? icon;
  final Widget? icon_child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      height: height ?? 45,
      margin: mergin ?? EdgeInsets.all(20),
      width: width ?? double.infinity,
      child: MaterialButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: icon_child ??
                  Icon(
                    icon!.icon,
                  ),
            ),
            SizedBox(width: 10),
            child ?? Text(text!),
          ],
        ),
        onPressed: onPressedbtn!,
        color: colorss ?? Theme.of(context).primaryColor,
        textColor: text_color ?? DefaultColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class MyCustomTabbarButton3 extends StatelessWidget {
  MyCustomTabbarButton3(
      {Key? key,
      this.text,
      this.onPressedbtn,
      this.colorss,
      this.child,
      this.text_color,
      this.decoration,
      this.mergin,
      this.height,
      this.width,
      this.icon,
      this.icon_child})
      : super(key: key);
  final String? text;
  final Function()? onPressedbtn;
  final Color? colorss;
  final Color? text_color;
  final EdgeInsetsGeometry? mergin;
  final Widget? child;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final Icon? icon;
  final Widget? icon_child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      height: height ?? 45,
      margin: mergin ?? EdgeInsets.all(20),
      width: width ?? double.infinity,
      child: MaterialButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: icon_child ??
                  Icon(
                    icon!.icon,
                  ),
            ),
            SizedBox(width: 10),
            child ?? Text(text!),
          ],
        ),
        onPressed: onPressedbtn!,
        color: colorss ?? Theme.of(context).primaryColor,
        textColor: text_color ?? DefaultColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
