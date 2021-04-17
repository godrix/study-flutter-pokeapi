import 'package:cubos_boy/controller/poke_controller.dart';
import 'package:cubos_boy/interfaces/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class PokeView extends StatefulWidget {
  @override
  _PokeViewState createState() => _PokeViewState();
}

class _PokeViewState extends State<PokeView> {
  final controller = PokeController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      color: HexColor('#D4D0CF'),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: HexColor('#66697A'),
            width: 300,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 150,
                  color: HexColor('#ADAB01'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FutureBuilder<Pokemon>(
                        future: controller.pokemon,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState !=
                              ConnectionState.done) {
                            return CircularProgressIndicator();
                          }
                          if (snapshot.hasData) {
                            return Column(
                              children: [
                                Image.network(
                                  snapshot.data.imgUrl,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  child: Text(snapshot.data.name,
                                      style: GoogleFonts.pressStart2p(
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          decoration: TextDecoration.none,
                                        ),
                                      )),
                                ),
                              ],
                            );
                          } else if (snapshot.hasError) {
                            return Text(snapshot.error);
                          }
                          return Container();
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 300,
            height: 200,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  controller.loadPokemon();
                                });
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
                                controller.loadPokemon();
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
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: HexColor('#930554'),
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: HexColor('#930554'),
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        children: [
                          Transform.rotate(
                            angle: -45,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: HexColor('#7A7C89'),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                          Transform.rotate(
                            angle: -45,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: HexColor('#7A7C89'),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
