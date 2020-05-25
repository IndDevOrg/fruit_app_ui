import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MangoScreen extends StatefulWidget {
  @override
  _MangoScreenState createState() => _MangoScreenState();
}

class _MangoScreenState extends State<MangoScreen> {
  int _fruitNumber = 1; //No. of fruits to buy

  void fruitIncriment() {
    //Increment for Fruit no. i.e When +1 is pressed fruit no. increases
    setState(() {
      _fruitNumber++;
    });
  }

  void fruitDecriment() {
    //Decriment for Fruit no. i.e When -1 is pressed fruit no. decreases
    setState(() {
      if (_fruitNumber != 1) _fruitNumber--;
    });
  }

  @override
  Widget build(BuildContext context) {
    double fruitDescription =
        MediaQuery.of(context).size.width * 0.86; //For Fruit Description
    double fruitHeight =
        MediaQuery.of(context).size.width * 0.68; //Fruit Image height
    double fruitWidth =
        MediaQuery.of(context).size.width * 0.86; //Fruit Image width

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            //Fill entire screen
            child: Column(
              children: <Widget>[
                Expanded(
                  //For Fruit Image and back & menu button
                  child: Container(
                    color: Color(0xffFFE08E),
                    child: Column(
                      children: <Widget>[
                        SafeArea(
                          //Back Arrow and share button
                          child: Align(
                            alignment: Alignment
                                .topCenter, // will Align/ be present at Top in Centre
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              child: Row(
                                //For Back Arrow and Share icon
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: IconButton(
                                      icon:
                                          Icon(Icons.arrow_back_ios, size: 14),
                                      onPressed: () {
                                        Navigator.pop(
                                            context); //This will take back us to the previous screen
                                      },
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.menu),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: fruitHeight, // 248,
                          width: fruitWidth, // 260,
                          child: Center(
                            child: Image.asset('Images/mango.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  //For Fruit Name, description etc
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                      child: Container(
                        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
                        child: Column(
                          children: <Widget>[
                            Row(
                              //Fruit Name
                              children: <Widget>[
                                Text(
                                  'Mango',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              //Fruit quantity
                              children: <Widget>[
                                Text(
                                  '1 each',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(height: 17),
                            Row(
                              //Fruit quantity and cost
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
                                        child: Center(
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.exposure_neg_1,
                                              size: 18,
                                            ),
                                            onPressed: fruitDecriment,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 45,
                                        color: Colors.grey[200],
                                        child: Center(
                                          child: Text('$_fruitNumber'),
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))),
                                        child: Center(
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.plus_one,
                                              size: 18,
                                            ),
                                            onPressed: fruitIncriment,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Text(
                                    '\$1.01',
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              //Product Description Text
                              children: <Widget>[
                                Text(
                                  'Product Description',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              //Fruit Description
                              children: <Widget>[
                                Container(
                                  width: fruitDescription,
                                  child: Text(
                                    'Mango\'s tropical taste has a universal appeal.'
                                    'The meat has the sweetness of a peach.'
                                    'This apricot colored fruit has enough fiber to'
                                    'give it some chewiness',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              //Container for Love icon and Add to cart
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.orange),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.favorite,
                                        color: Colors.orange),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 30),
                                Container(
                                  height: 50,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.orange),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Add to cart',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
