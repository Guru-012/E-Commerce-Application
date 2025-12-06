import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120),
              child: Image(image: AssetImage('lib/images/shoelogowhite.png')),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child:  Text(
                  '~~ Perfect Fit EveryTime ~~',
                  style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.only(top: 45),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'homepage'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50,
                  width: 200,
                  alignment: Alignment.center,
                  child: Text('Start..', style: TextStyle(fontSize: 25)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
