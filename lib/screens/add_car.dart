import 'dart:io';

import 'package:flutter/material.dart';
import 'package:musk_motor/screens/weather.dart';
import 'package:musk_motor/widget/image_input.dart';
import 'package:musk_motor/widget/textColumn.dart';

class AddCar extends StatelessWidget {
  static const routeName = 'add-car';
  File _pickedImage;
  void _selectImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4EFF6),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.green,
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Add Car',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      TextColumn(
                        hint: 'Name',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextColumn(
                        hint: 'License plate',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextColumn(
                        hint: 'Car Manufacturer',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextColumn(
                        hint: 'Car model',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextColumn(
                        hint: 'Registered state',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Set car as default',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Switch.adaptive(
                            value: true,
                            onChanged: null,
                            activeColor: Colors.green,
                          )
                        ],
                      ),
                      ImageInput(_selectImage),
                    ],
                  ),
                ),
                RaisedButton.icon(
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Weather.routeName);
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Weather',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
