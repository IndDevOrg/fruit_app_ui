import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitapp/mangoScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, //Color of container
      child: SingleChildScrollView(
        //Screen scrollable
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SafeArea(
                //Back and menu icon
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                        ),
                      ),
                      Icon(Icons.menu),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Align(
                //Fruits and Berries Text
                alignment: Alignment
                    .centerLeft, //To align to left as it will automatically align in centre as Column is its parent
                child: Text(
                  'Fruits and berries',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
                //Search Box
                height: 55,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.search),
                    ),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.black12),
                    ),
                  ],
                ),
              ),
              //   SizedBox(height: 5),
              Column(
                //Creating fruit containers
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top:
                            10.0), //background space left by top fruit containers
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            //Left side of Containers(Fruit Containers)
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              _buildFruitCard(
                                "Strawberry",
                                189, //height
                                135, // width
                                "Images/strawberry.png", //Image of fruit
                                "\$2.45", //Price of fruit
                                0xFFFFE3E5, //Container color
                                0XffEBB0B5, //BottomRight icon box color
                                90, //imageHeight
                                100, //imageWidth
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              _buildFruitCard(
                                "Blueberry",
                                160, //height
                                135, //width
                                "Images/blueberry.png", //Image of fruit
                                "\$4.07",
                                0xffE4E4FE, //Container color
                                0XffDFDFF7, //BottomRight icon box color
                                61, //imageHeight
                                100, //imageWidth
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              _buildFruitCard(
                                "Lychee",
                                189, //height
                                135, //width
                                "Images/lychee.png",
                                "\$8.22",
                                0xffD8FFD0, //Container color
                                0xffA1BF9C, //BottomRight icon box color
                                90, //imageHeight
                                100, //imageWidth
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          Spacer(), //Space b/w the two columns
                          Column(
                            //Right side Containers( Fruit Containers )
                            children: <Widget>[
                              _buildFruitCard(
                                "Pineapple",
                                160, //height
                                135, //width
                                "Images/pineapple.png",
                                "\$1.52",
                                0xffFFFBD8, //Container color
                                0XffFDDCC1, //BottomRight icon box color
                                61, //imageHeight
                                100, //imageWidth
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              _buildFruitCard(
                                "Dragon Fruit",
                                189, //height
                                135, //width
                                "Images/dragonfruit.png",
                                "\$5.36",
                                0xffFFEEFE, //Container color
                                0XffEBB1E4, //BottomRight icon box color
                                90, //imageHeight
                                100, //imageWidth
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                //When the image of Mango will be pressed then the person will go to the set page(acts like button)
                                onTap: () {
                                  //like onPressed
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          //Used to go from one screen to other
                                          builder: (context) =>
                                              MangoScreen())); //Name of class to go when pressed
                                },
                                child: _buildFruitCard(
                                  "Mango",
                                  160, //height
                                  135, //width
                                  "Images/mango.png",
                                  "\$1.01",
                                  0xffFFE08E, //Container color
                                  0XffFCB25C, //BottomRight icon box color
                                  61, //imageHeight
                                  100, //imageWidth
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Main layout for Fruit Container
_buildFruitCard(
  String fruitName,
  double containerHeight,
  double containerWidth,
  String imageAsset,
  String fruitPrice,
  int containerColor,
  int boxColor,
  double imageHeight,
  double imageWidth,
) {
  return Container(
    margin: EdgeInsets.only(top: 5), //Moving container
    height: containerHeight,
    width: containerWidth,
    decoration: BoxDecoration(
      color: Color(containerColor), //Color of the container
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0), //Shifting text
          child: Text(
            fruitName, //fruitName i.e main name of fruit in container
            style: TextStyle(
              fontFamily: 'OpenSans-Bold',
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 2.0), //Shifting text
          child: Text(
            "1 lb",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
        Padding(
          //fruitPrice Text
          padding: const EdgeInsets.only(
              left: 20.0, right: 10.0, top: 2.0), //Shifting text
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    fruitPrice,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Center(
          //Image of fruit
          child: Image.asset(
            imageAsset,
            fit: BoxFit.contain,
            height: imageHeight,
            width: imageWidth,
          ),
        ),
        Align(
          //Plus icon at bottomRight side of Container
          alignment: Alignment.bottomRight,
          child: Container(
            decoration: BoxDecoration(
              color: Color(
                  boxColor), //small box color which is joined to container and has tick or cross in it
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add, //Icon
                color: Colors.grey, //Icon color
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
