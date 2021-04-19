import 'package:flutter/material.dart';

class ControllButton extends StatelessWidget {
  final Function pressUp;
  final Function pressDown;

  ControllButton({Key key, this.pressUp, this.pressDown}) : super(key: key);

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
              Container(
                color: Colors.black,
                width: 25,
                height: 25,
              ),
              Container(
                color: Colors.black,
                width: 25,
                height: 25,
              ),
              Container(
                color: Colors.black,
                width: 25,
                height: 25,
              ),
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
