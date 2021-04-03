import 'package:flutter/material.dart';
import 'package:friendship_day/utils/SizeConfig.dart';



class CustomFBTextWidget extends StatelessWidget {
  const CustomFBTextWidget({
    Key key,
    @required this.size,
    this.color,
    this.text,
    this.url,
  }) : super(key: key);

  final Size size;
  final Color color;
  final String text, url;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.27,
        width: size.width * 0.27,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(SizeConfig.height(10)),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.circular(
                    SizeConfig.height(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: CircleAvatar(
                radius: 5 * SizeConfig.widthMultiplier,
                backgroundColor: Colors.blueAccent,
                child: CircleAvatar(
                  radius: 4 * SizeConfig.widthMultiplier,
                  backgroundImage: NetworkImage(url),
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ],
        ));
  }
}