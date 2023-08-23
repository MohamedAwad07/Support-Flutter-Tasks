import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> labels = [
    'Food',
    'Fruits',
    'Meats',
    'Vegetables',
    'Baked goods',
  ];
  List<String> categories = [
    'assets/food.png',
    'assets/fruits.png',
    'assets/meats.png',
    'assets/vegetables.png',
    'assets/baked goods.png',
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double conWidth = screenWidth * 0.90;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Mohamed Awad Talaat',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF080951),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsetsDirectional.only(start: 10.0),
                margin: EdgeInsetsDirectional.only(
                  start: 3.0,
                  top: 15.0,
                ),
                width: conWidth,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                  border: Border.all(
                    color: Colors.orange.shade900,
                    // Set the desired border color here
                    width: 1, // Set the desired border width here
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Talabat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: Colors.orange.shade900,
                      ),
                    ),
                    SizedBox(
                      width: (conWidth - 140.0) / 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange.shade900,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.search_sharp),
                        iconSize: 32.0,
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsetsDirectional.only(
                start: 20.0,
                top: 17.0,
                bottom: 7.0,
              ),
              width: screenWidth * 0.90,
              height: 145.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.orange.shade900,
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 160.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Talabat Market',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          '20 mins delivery',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          'Now you can order and buy what you need ...',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.fade,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 27.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              25.0,
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                color: Colors.orange.shade900,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: 12.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage('assets/shopping.png'),
                            width: 130.0,
                            height: 100.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0xFF080951),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 110,
              child: Padding(
                padding: EdgeInsetsDirectional.only(end: 15.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => BuildCatItem(
                        label: labels[index], image: categories[index]),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 0.0,
                        ),
                    itemCount: 5),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 19.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Offers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0xFF080951),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                        // width: 204.0,
                        ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(end: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'View All',
                              style: TextStyle(
                                color: Colors.orange.shade900,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.orange.shade900,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 30.0,
              ),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                        padding:
                            EdgeInsetsDirectional.only(start: 18.0, end: 20),
                        child: Column(
                          children: [
                            Container(
                              //height: 250.0,
                              // width: 330.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                25.0,
                              )),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image(
                                    image: AssetImage('assets/ff.jpg'),
                                    //height: 250.0,
                                    // width: 330.0,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15.0,
                      ),
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
