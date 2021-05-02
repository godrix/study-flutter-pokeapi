import 'package:flutter/material.dart';

class ControllButton extends StatelessWidget {
  final Function pressUp;
  final Function pressDown;
  final Function pressLeft;
  final Function pressRight;

  ControllButton(
      {Key key, this.pressUp, this.pressDown, this.pressLeft, this.pressRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  pressUp();
                },
                child: Container(
                  color: Colors.black,
                  width: 25,
                  height: 25,
                ),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  pressLeft();
                },
                child: Container(
                  color: Colors.black,
                  width: 25,
                  height: 25,
                ),
              ),
              Container(
                color: Colors.black,
                width: 25,
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  pressRight();
                },
                child: Container(
                  color: Colors.black,
                  width: 25,
                  height: 25,
                ),
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  pressDown();
                },
                child: Container(
                  color: Colors.black,
                  width: 25,
                  height: 25,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
