import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smoge/widgets/animated_percentage_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTitle(),
            _buildAirPollutionContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() => Text(
        "Wroclaw",
        textAlign: TextAlign.center,
      );

  Widget _buildAirPollutionContent() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPercentageWidget(
              fromValue: 0,
              toValue: 310,
            ),
            Text("norm"),
          ],
        ),
      );
}
