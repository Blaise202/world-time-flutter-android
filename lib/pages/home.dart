import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map? ?? {};
    print(data);

    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color txtColor = data['isDayTime'] ? Colors.black : Colors.white;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time' : result['time'],
                        'location' : result['location'],
                        'isDayTime' : result['isDayTime'],
                        'flag' : result['flag'],
                      };
                    });
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                  style: ButtonStyle(
                    // backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(txtColor)
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 30,
                        color: txtColor
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 60,
                    color: txtColor
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
