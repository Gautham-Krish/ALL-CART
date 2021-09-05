import 'package:flutter/material.dart';
import 'package:allcart/pages/widgets/Category.dart';
import 'package:allcart/pages/display.dart';
import 'package:allcart/pages/CartScreen.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  final List<String> list = [
    'beds',
    'camera',
    'floor mat',
    'headset',
    'laptops',
    'mens jeans',
    'mens kurta',
    'mens pant',
    'mens shirts',
    'mens shoe',
    'mens suits',
    'mens tshirts',
    'mens wallet',
    'mens watches',
    'mobile phones',
    'play station',
    'sarees',
    'tripods',
    'tv',
    'women suit',
    'women churidar',
    'women frock',
    'women jeans',
    'women kurta',
    'women pants',
    'women shirts',
    'women shoes',
    'women wallet',
    'women watches',
    'women tshirts'
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 234, 235, 234),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Search(widget.list));
              },
              icon: Icon(
                Icons.search,
              ),
              color: Colors.black,
            ),
            IconButton(
                icon: Icon(Icons.filter_alt_rounded),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Filter()));
                }),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => CartScreen()));
              },
              icon: Icon(Icons.shopping_bag),
              color: Colors.black,
            )
          ],
          title: Image.asset(
            'assets/homepic/allcart-logo2.jpeg',
            height: 70,
            width: 70,
          ),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 50,
          crossAxisCount: 2,
          children: <Widget>[
            Category(
              text: 'BEDS',
              image: 'assets/homepic/bed.jpg',
              text1: 'DOUBLE COAT BED ',
              image1: 'assets/homepic/bed.jpg',
              price1: 10000,
              id1: '01',
              id2: '02',
              text2: 'SINGLE COAT BED',
              image2: 'assets/homepic/bed2.jpg',
              price2: 6000,
            ),
            Category(
              text: 'CAMERA',
              image: 'assets/homepic/camera.jpg',
              text1: 'CANON EOS ',
              image1: 'assets/homepic/camera.jpg',
              price1: 60000,
              text2: 'CANON EOS 1500D',
              image2: 'assets/homepic/camera2.jpg',
              price2: 40000,
              id1: '03',
              id2: '04',
            ),
            Category(
              text: 'FLOOR MAT',
              image: 'assets/homepic/floor mat.jpg',
              text1: 'CHECKED MAT ',
              image1: 'assets/homepic/floor mat.jpg',
              price1: 4000,
              text2: 'DIAMOND MAT',
              image2: 'assets/homepic/floor mat2.jpg',
              price2: 6000,
              id1: '05',
              id2: '06',
            ),
            Category(
              text: 'HEADSET',
              image: 'assets/homepic/headset2.jpg',
              text1: 'LENOVA HEADSET ',
              image1: 'assets/homepic/headset2.jpg',
              price1: 7000,
              text2: 'GAMING HEADSET',
              image2: 'assets/homepic/headset3.jpg',
              price2: 9000,
              id1: '07',
              id2: '08',
            ),
            Category(
              text: 'LAPTOPS',
              image: 'assets/homepic/laptops.jpg',
              text1: 'NOKIA ',
              image1: 'assets/homepic/laptops.jpg',
              price1: 70000,
              text2: 'LENOVA',
              image2: 'assets/homepic/laptops2.jpg',
              price2: 90000,
              id1: '09',
              id2: '10',
            ),
            Category(
              text: 'MENS JEANS',
              image: 'assets/homepic/mens jeans.jpg',
              text1: 'BLACK JEANS ',
              image1: 'assets/homepic/mens jeans.jpg',
              price1: 2500,
              text2: 'BLUE JEANS',
              image2: 'assets/homepic/mens jeans2.jpg',
              price2: 3000,
              id1: '11',
              id2: '12',
            ),
            Category(
              text: 'MENS KURTA',
              image: 'assets/homepic/mens kurta.jpg',
              text1: 'BLUE KURTA ',
              image1: 'assets/homepic/mens kurta.jpg',
              price1: 2500,
              text2: 'YELLOW KURTA',
              image2: 'assets/homepic/mens kurta2.jpg',
              price2: 1500,
              id1: '13',
              id2: '14',
            ),
            Category(
              text: 'MENS PANT',
              image: 'assets/homepic/mens pant.jpg',
              text1: 'LIGHT BROWN PANT ',
              image1: 'assets/homepic/mens pant.jpg',
              price1: 1000,
              text2: 'CASUAL PANTS',
              image2: 'assets/homepic/mens pant2.jpg',
              price2: 1500,
              id1: '15',
              id2: '16',
            ),
            Category(
              text: 'MENS SHIRTS',
              image: 'assets/homepic/mens shirts.jpg',
              text1: 'CASUAL SHIRTS ',
              image1: 'assets/homepic/mens shirts.jpg',
              price1: 1800,
              text2: 'CHECKED SHIRT',
              image2: 'assets/homepic/mens shirts2.jpg',
              price2: 1500,
              id1: '17',
              id2: '18',
            ),
            Category(
              text: 'MENS SUIT',
              image: 'assets/homepic/mens suit.jpg',
              text1: 'STYLED BLUE SUIT ',
              image1: 'assets/homepic/mens suit.jpg',
              price1: 40000,
              text2: 'WINE PEAK',
              image2: 'assets/homepic/mens suit2.jpg',
              price2: 30000,
              id1: '19',
              id2: '20',
            ),
            Category(
              text: 'MENS TSHIRTS',
              image: 'assets/homepic/mens tshirts.jpg',
              text1: 'STRIPED PINK',
              image1: 'assets/homepic/mens tshirts.jpg',
              price1: 1000,
              text2: 'PRINTED SHIRTS',
              image2: 'assets/homepic/mens tshirts2.jpg',
              price2: 1800,
              id1: '21',
              id2: '22',
            ),
            Category(
              text: 'MENS SHOE',
              image: 'assets/homepic/mens shoe.jpg',
              text1: 'WHITE CASUALS',
              image1: 'assets/homepic/mens shoe.jpg',
              price1: 1600,
              text2: 'FORMAL BROWN',
              image2: 'assets/homepic/mens shoe2.jpg',
              price2: 1800,
              id1: '23',
              id2: '24',
            ),
            Category(
              text: 'MENS WALLET',
              image: 'assets/homepic/mens wallet.jpg',
              text1: 'LEATHER BROWN',
              image1: 'assets/homepic/mens wallet.jpg',
              price1: 1600,
              text2: 'VERTICAL WALLET',
              image2: 'assets/homepic/mens wallet2.jpg',
              price2: 1800,
              id1: '25',
              id2: '26',
            ),
            Category(
              text: 'MENS WATCHES',
              image: 'assets/homepic/mens watches.jpg',
              text1: 'IWC',
              image1: 'assets/homepic/mens watches.jpg',
              price1: 7500,
              text2: 'BLACK PREMIUM',
              image2: 'assets/homepic/mens watches2.jpg',
              price2: 8000,
              id1: '27',
              id2: '28',
            ),
            Category(
              text: 'MOBILE PHONES',
              image: 'assets/homepic/phone.jpg',
              text1: 'ONE PLUS',
              image1: 'assets/homepic/phone.jpg',
              price1: 50000,
              text2: ' I PHONE 12 PRO',
              image2: 'assets/homepic/phone2.jpg',
              price2: 120000,
              id1: '29',
              id2: '30',
            ),
            Category(
              text: 'PLAY STATION',
              image: 'assets/homepic/play station.jpg',
              text1: 'PS5',
              image1: 'assets/homepic/play station.jpg',
              price1: 50000,
              text2: 'PS4',
              image2: 'assets/homepic/play station2.jpg',
              price2: 25000,
              id1: '31',
              id2: '32',
            ),
            Category(
              text: 'TRIPODS',
              image: 'assets/homepic/tripod.jpg',
              text1: 'ZOOMIE',
              image1: 'assets/homepic/tripod.jpg',
              price1: 2000,
              text2: 'GORILAA TRIPODS',
              image2: 'assets/homepic/tripod2.jpg',
              price2: 3000,
              id1: '35',
              id2: '36',
            ),
            Category(
              text: 'TV',
              image: 'assets/homepic/tv.jpg',
              text1: 'MI LED',
              image1: 'assets/homepic/tv.jpg',
              price1: 80000,
              text2: 'LG LED',
              image2: 'assets/homepic/tv2.jpg',
              price2: 50000,
              id1: '37',
              id2: '38',
            ),
            Category(
              text: 'SAREES',
              image: 'assets/homepic/saree.jpg',
              text1: 'CASUAL SAREE',
              image1: 'assets/homepic/saree.jpg',
              price1: 5000,
              text2: 'BRIDAL SAREE',
              image2: 'assets/homepic/saree2.jpg',
              price2: 6000,
              id1: '33',
              id2: '34',
            ),
            Category(
              text: 'WOMEN SUIT',
              image: 'assets/homepic/women suit.jpg',
              text1: 'PINK SUIT',
              image1: 'assets/homepic/women suit.jpg',
              price1: 8000,
              text2: 'GREY JACKET SUIT',
              image2: 'assets/homepic/women suit2.jpg',
              price2: 10000,
              id1: '39',
              id2: '40',
            ),
            Category(
              text: 'WOMEN CHURIDAR',
              image: 'assets/homepic/womens churidar.jpg',
              text1: 'BLUE SALWAR',
              image1: 'assets/homepic/womens churidar.jpg',
              price1: 2000,
              text2: 'RAIN AND RAINBOW',
              image2: 'assets/homepic/womens churidar2.jpg',
              price2: 1700,
              id1: '41',
              id2: '42',
            ),
            Category(
              text: 'WOMEN FROCKS',
              image: 'assets/homepic/womens frocks.jpg',
              text1: 'PRINTED FROCKS',
              image1: 'assets/homepic/womens frocks.jpg',
              price1: 2500,
              text2: 'WHITE PRINTED',
              image2: 'assets/homepic/womens frocks2.jpg',
              price2: 1700,
              id1: '43',
              id2: '44',
            ),
            Category(
                text: 'WOMEN JEANS',
                image: 'assets/homepic/womens jeans.jpg',
                text1: 'SKY BLUE JEANS',
                image1: 'assets/homepic/womens jeans.jpg',
                price1: 2700,
                text2: 'PLAIN BLACK JEANS',
                image2: 'assets/homepic/womens jeans2.jpg',
                price2: 1700,
                id1: '45',
                id2: '46'),
            Category(
                text: 'WOMEN KURTA',
                image: 'assets/homepic/womens kurta.jpg',
                text1: 'PRINTED KURTA',
                image1: 'assets/homepic/womens kurta.jpg',
                price1: 1400,
                text2: 'DARK BLUE KURTA',
                image2: 'assets/homepic/womens kurta2.jpg',
                price2: 1300,
                id1: '47',
                id2: '48'),
            Category(
                text: 'WOMEN PANT',
                image: 'assets/homepic/womens pant.jpg',
                text1: 'SOFT PINK PANTS',
                image1: 'assets/homepic/womens pant.jpg',
                price1: 1200,
                text2: 'PLAIN GREEN PANTS',
                image2: 'assets/homepic/womens pant2.jpg',
                price2: 1500,
                id1: '49',
                id2: '50'),
            Category(
              text: 'WOMEN SHIRTS',
              image: 'assets/homepic/womens shirts.jpg',
              text1: 'BLUE & WHITE ',
              image1: 'assets/homepic/womens shirts.jpg',
              price1: 1500,
              text2: 'CHINESE NECK',
              image2: 'assets/homepic/womens shirts2.jpg',
              price2: 2000,
              id1: '51',
              id2: '52',
            ),
            Category(
              text: 'WOMEN SHOES',
              image: 'assets/homepic/womens shoes.jpg',
              text1: 'SMOOTH WEARS',
              image1: 'assets/homepic/womens shoes.jpg',
              price1: 2000,
              text2: 'FASHION SHOES',
              image2: 'assets/homepic/womens shoes2.jpg',
              price2: 2700,
              id1: '53',
              id2: '54',
            ),
            Category(
              text: 'WOMEN WALLET',
              image: 'assets/homepic/womens wallet.jpg',
              text1: 'PINK CUSTOM MADE',
              image1: 'assets/homepic/womens wallet.jpg',
              price1: 900,
              text2: 'LEATHER WALLET',
              image2: 'assets/homepic/womens wallet2.jpg',
              price2: 1200,
              id1: '55',
              id2: '56',
            ),
            Category(
              text: 'WOMEN WATCHES',
              image: 'assets/homepic/womens watches.jpg',
              text1: 'CHUMBAK',
              image1: 'assets/homepic/womens watches.jpg',
              price1: 4000,
              text2: 'KOVONSH',
              image2: 'assets/homepic/womens watches2.jpg',
              price2: 7000,
              id1: '57',
              id2: '58',
            ),
            Category(
              text: 'WOMEN TSHIRTS',
              image: 'assets/homepic/womens tshirt.jpg',
              text1: 'BLUE TSHIRTS',
              image1: 'assets/homepic/womens tshirt.jpg',
              price1: 1700,
              text2: ' PRINTED TSHIRTS',
              image2: 'assets/homepic/womens tshirt2.jpg',
              price2: 2300,
              id1: '59',
              id2: '60',
            ),
          ],
        ));
  }
}

class Filter extends StatelessWidget {
  const Filter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'FILTER BY GENDER',
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'GoblinOne',
                  color: Colors.black,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Center(
              child: TextButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: BorderSide(color: Colors.green))),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => male()));
                  },
                  child: Text(
                    'MALE',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'GoblinOne',
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  )),
            ),
            SizedBox(height: 25.0),
            Center(
              child: TextButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: BorderSide(color: Colors.green))),
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => female()));
                  },
                  child: Text(
                    'FEMALE',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'GoblinOne',
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class male extends StatelessWidget {
  const male({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          centerTitle: true,
          title: Text('MALE'),
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 50,
            crossAxisCount: 2,
            children: <Widget>[
              Category(
                text: 'MENS JEANS',
                image: 'assets/homepic/mens jeans.jpg',
                text1: 'BLACK JEANS ',
                image1: 'assets/homepic/mens jeans.jpg',
                price1: 2500,
                text2: 'BLUE JEANS',
                image2: 'assets/homepic/mens jeans2.jpg',
                price2: 3000,
                id1: '11',
                id2: '12',
              ),
              Category(
                text: 'MENS KURTA',
                image: 'assets/homepic/mens kurta.jpg',
                text1: 'BLUE KURTA ',
                image1: 'assets/homepic/mens kurta.jpg',
                price1: 2500,
                text2: 'YELLOW KURTA',
                image2: 'assets/homepic/mens kurta2.jpg',
                price2: 1500,
                id1: '13',
                id2: '14',
              ),
              Category(
                text: 'MENS PANT',
                image: 'assets/homepic/mens pant.jpg',
                text1: 'LIGHT BROWN PANT ',
                image1: 'assets/homepic/mens pant.jpg',
                price1: 1000,
                text2: 'CASUAL PANTS',
                image2: 'assets/homepic/mens pant2.jpg',
                price2: 1500,
                id1: '15',
                id2: '16',
              ),
              Category(
                text: 'MENS SHIRTS',
                image: 'assets/homepic/mens shirts.jpg',
                text1: 'CASUAL SHIRTS ',
                image1: 'assets/homepic/mens shirts.jpg',
                price1: 1800,
                text2: 'CHECKED SHIRT',
                image2: 'assets/homepic/mens shirts2.jpg',
                price2: 1500,
                id1: '17',
                id2: '18',
              ),
              Category(
                text: 'MENS SUIT',
                image: 'assets/homepic/mens suit.jpg',
                text1: 'STYLED BLUE SUIT ',
                image1: 'assets/homepic/mens suit.jpg',
                price1: 40000,
                text2: 'WINE PEAK',
                image2: 'assets/homepic/mens suit2.jpg',
                price2: 30000,
                id1: '19',
                id2: '20',
              ),
              Category(
                text: 'MENS TSHIRTS',
                image: 'assets/homepic/mens tshirts.jpg',
                text1: 'STRIPED PINK',
                image1: 'assets/homepic/mens tshirts.jpg',
                price1: 1000,
                text2: 'PRINTED SHIRTS',
                image2: 'assets/homepic/mens tshirts2.jpg',
                price2: 1800,
                id1: '21',
                id2: '22',
              ),
              Category(
                text: 'MENS SHOE',
                image: 'assets/homepic/mens shoe.jpg',
                text1: 'WHITE CASUALS',
                image1: 'assets/homepic/mens shoe.jpg',
                price1: 1600,
                text2: 'FORMAL BROWN',
                image2: 'assets/homepic/mens shoe2.jpg',
                price2: 1800,
                id1: '23',
                id2: '24',
              ),
              Category(
                text: 'MENS WALLET',
                image: 'assets/homepic/mens wallet.jpg',
                text1: 'LEATHER BROWN',
                image1: 'assets/homepic/mens wallet.jpg',
                price1: 1600,
                text2: 'VERTICAL WALLET',
                image2: 'assets/homepic/mens wallet2.jpg',
                price2: 1800,
                id1: '25',
                id2: '26',
              ),
              Category(
                text: 'MENS WATCHES',
                image: 'assets/homepic/mens watches.jpg',
                text1: 'IWC',
                image1: 'assets/homepic/mens watches.jpg',
                price1: 7500,
                text2: 'BLACK PREMIUM',
                image2: 'assets/homepic/mens watches2.jpg',
                price2: 8000,
                id1: '27',
                id2: '28',
              ),
            ]));
  }
}

class female extends StatelessWidget {
  const female({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          centerTitle: true,
          title: Text('FEMALE'),
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 50,
            crossAxisCount: 2,
            children: <Widget>[
              Category(
                text: 'SAREES',
                image: 'assets/homepic/saree.jpg',
                text1: 'CASUAL SAREE',
                image1: 'assets/homepic/saree.jpg',
                price1: 5000,
                text2: 'BRIDAL SAREE',
                image2: 'assets/homepic/saree2.jpg',
                price2: 6000,
                id1: '33',
                id2: '34',
              ),
              Category(
                text: 'WOMEN SUIT',
                image: 'assets/homepic/women suit.jpg',
                text1: 'PINK SUIT',
                image1: 'assets/homepic/women suit.jpg',
                price1: 8000,
                text2: 'GREY JACKET SUIT',
                image2: 'assets/homepic/women suit2.jpg',
                price2: 10000,
                id1: '39',
                id2: '40',
              ),
              Category(
                text: 'WOMEN CHURIDAR',
                image: 'assets/homepic/womens churidar.jpg',
                text1: 'BLUE SALWAR',
                image1: 'assets/homepic/womens churidar.jpg',
                price1: 2000,
                text2: 'RAIN AND RAINBOW',
                image2: 'assets/homepic/womens churidar2.jpg',
                price2: 1700,
                id1: '41',
                id2: '42',
              ),
              Category(
                text: 'WOMEN FROCKS',
                image: 'assets/homepic/womens frocks.jpg',
                text1: 'PRINTED FROCKS',
                image1: 'assets/homepic/womens frocks.jpg',
                price1: 2500,
                text2: 'WHITE PRINTED',
                image2: 'assets/homepic/womens frocks2.jpg',
                price2: 1700,
                id1: '43',
                id2: '44',
              ),
              Category(
                  text: 'WOMEN JEANS',
                  image: 'assets/homepic/womens jeans.jpg',
                  text1: 'SKY BLUE JEANS',
                  image1: 'assets/homepic/womens jeans.jpg',
                  price1: 2700,
                  text2: 'PLAIN BLACK JEANS',
                  image2: 'assets/homepic/womens jeans2.jpg',
                  price2: 1700,
                  id1: '45',
                  id2: '46'),
              Category(
                  text: 'WOMEN KURTA',
                  image: 'assets/homepic/womens kurta.jpg',
                  text1: 'PRINTED KURTA',
                  image1: 'assets/homepic/womens kurta.jpg',
                  price1: 1400,
                  text2: 'DARK BLUE KURTA',
                  image2: 'assets/homepic/womens kurta2.jpg',
                  price2: 1300,
                  id1: '47',
                  id2: '48'),
              Category(
                  text: 'WOMEN PANT',
                  image: 'assets/homepic/womens pant.jpg',
                  text1: 'SOFT PINK PANTS',
                  image1: 'assets/homepic/womens pant.jpg',
                  price1: 1200,
                  text2: 'PLAIN GREEN PANTS',
                  image2: 'assets/homepic/womens pant2.jpg',
                  price2: 1500,
                  id1: '49',
                  id2: '50'),
              Category(
                text: 'WOMEN SHIRTS',
                image: 'assets/homepic/womens shirts.jpg',
                text1: 'BLUE & WHITE',
                image1: 'assets/homepic/womens shirts.jpg',
                price1: 1500,
                text2: 'CHINESE NECK',
                image2: 'assets/homepic/womens shirts2.jpg',
                price2: 2000,
                id1: '51',
                id2: '52',
              ),
              Category(
                text: 'WOMEN SHOES',
                image: 'assets/homepic/womens shoes.jpg',
                text1: 'SMOOTH WEARS',
                image1: 'assets/homepic/womens shoes.jpg',
                price1: 2000,
                text2: 'FASHION SHOES',
                image2: 'assets/homepic/womens shoes2.jpg',
                price2: 2700,
                id1: '53',
                id2: '54',
              ),
              Category(
                text: 'WOMEN WALLET',
                image: 'assets/homepic/womens wallet.jpg',
                text1: 'PINK CUSTOM MADE',
                image1: 'assets/homepic/womens wallet.jpg',
                price1: 900,
                text2: 'LEATHER WALLET',
                image2: 'assets/homepic/womens wallet2.jpg',
                price2: 1200,
                id1: '55',
                id2: '56',
              ),
              Category(
                text: 'WOMEN WATCHES',
                image: 'assets/homepic/womens watches.jpg',
                text1: 'CHUMBAK',
                image1: 'assets/homepic/womens watches.jpg',
                price1: 4000,
                text2: 'KOVONSH',
                image2: 'assets/homepic/womens watches2.jpg',
                price2: 7000,
                id1: '57',
                id2: '58',
              ),
              Category(
                text: 'WOMEN TSHIRTS',
                image: 'assets/homepic/womens tshirt.jpg',
                text1: 'BLUE TSHIRTS',
                image1: 'assets/homepic/womens tshirt.jpg',
                price1: 1700,
                text2: ' PRINTED TSHIRTS',
                image2: 'assets/homepic/womens tshirt2.jpg',
                price2: 2300,
                id1: '59',
                id2: '60',
              ),
            ]));
  }
}

class Search extends SearchDelegate {
  String inputText;
  String outputText1;
  String outputText2;
  int outputTextPrice1;
  int outputTextPrice2;
  String outputImage1;
  String outputImage2;
  String id1;
  String id2;

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  String selectedResult = "";

  @override
  Widget buildResults(BuildContext context) {
    inputText = selectedResult;

    if (inputText == 'beds') {
      outputText1 = 'DOUBLE COAT BED';
      outputText2 = 'SINGLE COAT BED';
      outputTextPrice1 = 10000;
      outputTextPrice2 = 6000;
      outputImage1 = 'assets/homepic/bed.jpg';
      outputImage2 = 'assets/homepic/bed2.jpg';
      id1 = '01';
      id2 = '02';
    } else if (inputText == 'camera') {
      outputText1 = 'CANON EOS ';
      outputImage1 = 'assets/homepic/camera.jpg';
      outputTextPrice1 = 60000;
      outputText2 = 'CANON EOS 1500D';
      outputImage2 = 'assets/homepic/camera2.jpg';
      outputTextPrice2 = 40000;
      id1 = '03';
      id2 = '04';
    } else if (inputText == 'floor mat') {
      outputText1 = 'CHECKED MAT ';
      outputImage1 = 'assets/homepic/floor mat.jpg';
      outputTextPrice1 = 4000;
      outputText2 = 'DIAMOND MAT';
      outputImage2 = 'assets/homepic/floor mat2.jpg';
      outputTextPrice2 = 6000;
      id1 = '05';
      id2 = '06';
    } else if (inputText == 'headset') {
      outputText1 = 'LENOVA HEADSET ';
      outputImage1 = 'assets/homepic/headset2.jpg';
      outputTextPrice1 = 7000;
      outputText2 = 'GAMING HEADSET';
      outputImage2 = 'assets/homepic/headset3.jpg';
      outputTextPrice2 = 9000;
      id1 = '07';
      id2 = '08';
    } else if (inputText == 'laptops') {
      outputText1 = 'NOKIA  ';
      outputImage1 = 'assets/homepic/laptops.jpg';
      outputTextPrice1 = 70000;
      outputText2 = 'LENOVA';
      outputImage2 = 'assets/homepic/laptops2.jpg';
      outputTextPrice2 = 90000;
      id1 = '09';
      id2 = '10';
    } else if (inputText == 'mens jeans') {
      outputText1 = 'BLACK JEANS ';
      outputImage1 = 'assets/homepic/mens jeans.jpg';
      outputTextPrice1 = 2500;
      outputText2 = 'BLUE JEANS';
      outputImage2 = 'assets/homepic/mens jeans2.jpg';
      outputTextPrice2 = 3000;
      id1 = '11';
      id2 = '12';
    } else if (inputText == 'mens kurta') {
      outputText1 = 'BLUE KURTA ';
      outputImage1 = 'assets/homepic/mens kurta.jpg';
      outputTextPrice1 = 2500;
      outputText2 = 'YELLOW KURTA';
      outputImage2 = 'assets/homepic/mens kurta2.jpg';
      outputTextPrice2 = 1500;
      id1 = '13';
      id2 = '14';
    } else if (inputText == 'mens pant') {
      outputText1 = 'LIGHT BROWN PANT ';
      outputImage1 = 'assets/homepic/mens pant.jpg';
      outputTextPrice1 = 1000;
      outputText2 = 'CASUAL PANTS';
      outputImage2 = 'assets/homepic/mens pant2.jpg';
      outputTextPrice2 = 1500;
      id1 = '15';
      id2 = '16';
    } else if (inputText == 'mens shirts') {
      outputText1 = 'CASUAL SHIRTS ';
      outputImage1 = 'assets/homepic/mens shirts.jpg';
      outputTextPrice1 = 1800;
      outputText2 = 'CHECKED SHIRT';
      outputImage2 = 'assets/homepic/mens shirts2.jpg';
      outputTextPrice2 = 1500;
      id1 = '17';
      id2 = '18';
    } else if (inputText == 'mens shoe') {
      outputText1 = 'WHITE CASUALS';
      outputImage1 = 'assets/homepic/mens shoe.jpg';
      outputTextPrice1 = 1600;
      outputText2 = 'FORMAL BROWN';
      outputImage2 = 'assets/homepic/mens shoe2.jpg';
      outputTextPrice2 = 1800;
      id1 = '19';
      id2 = '20';
    } else if (inputText == 'mens suits') {
      outputText1 = 'STYLED BLUE SUIT ';
      outputImage1 = 'assets/homepic/mens suit.jpg';
      outputTextPrice1 = 40000;
      outputText2 = 'WINE PEAK';
      outputImage2 = 'assets/homepic/mens suit2.jpg';
      outputTextPrice2 = 30000;
      id1 = '21';
      id2 = '22';
    } else if (inputText == 'mens tshirts') {
      outputText1 = 'STRIPED PINK';
      outputImage1 = 'assets/homepic/mens tshirts.jpg';
      outputTextPrice1 = 1000;
      outputText2 = 'PRINTED SHIRTS';
      outputImage2 = 'assets/homepic/mens tshirts2.jpg';
      outputTextPrice2 = 1800;
      id1 = '23';
      id2 = '24';
    } else if (inputText == 'mens wallet') {
      outputText1 = 'LEATHER BROWN';
      outputImage1 = 'assets/homepic/mens wallet.jpg';
      outputTextPrice1 = 1600;
      outputText2 = 'VERTICAL WALLET';
      outputImage2 = 'assets/homepic/mens wallet2.jpg';
      outputTextPrice2 = 1800;
      id1 = '25';
      id2 = '26';
    } else if (inputText == 'mens watches') {
      outputText1 = 'IWC';
      outputImage1 = 'assets/homepic/mens watches.jpg';
      outputTextPrice1 = 7500;
      outputText2 = 'BLACK PREMIUM';
      outputImage2 = 'assets/homepic/mens watches2.jpg';
      outputTextPrice2 = 8000;
      id1 = '27';
      id2 = '28';
    } else if (inputText == 'mobile phones') {
      outputText1 = 'ONE PLUS';
      outputImage1 = 'assets/homepic/phone.jpg';
      outputTextPrice1 = 50000;
      outputText2 = ' I PHONE 12 PRO';
      outputImage2 = 'assets/homepic/phone2.jpg';
      outputTextPrice2 = 120000;
      id1 = '29';
      id2 = '30';
    } else if (inputText == 'play station') {
      outputText1 = 'PS5';
      outputImage1 = 'assets/homepic/play station.jpg';
      outputTextPrice1 = 50000;
      outputText2 = 'PS4';
      outputImage2 = 'assets/homepic/play station2.jpg';
      outputTextPrice2 = 25000;
      id1 = '31';
      id2 = '32';
    } else if (inputText == 'sarees') {
      outputText1 = 'CASUAL SAREE';
      outputImage1 = 'assets/homepic/saree.jpg';
      outputTextPrice1 = 5000;
      outputText2 = 'BRIDAL SAREE';
      outputImage2 = 'assets/homepic/saree2.jpg';
      outputTextPrice2 = 6000;
      id1 = '33';
      id2 = '34';
    } else if (inputText == 'tripods') {
      outputText1 = 'ZOOMIE';
      outputImage1 = 'assets/homepic/tripod.jpg';
      outputTextPrice1 = 2000;
      outputText2 = 'GORILAA TRIPODS';
      outputImage2 = 'assets/homepic/tripod2.jpg';
      outputTextPrice2 = 3000;
      id1 = '35';
      id2 = '36';
    } else if (inputText == 'tv') {
      outputText1 = 'MI LED';
      outputImage1 = 'assets/homepic/tv.jpg';
      outputTextPrice1 = 80000;
      outputText2 = 'LG LED';
      outputImage2 = 'assets/homepic/tv2.jpg';
      outputTextPrice2 = 50000;
      id1 = '37';
      id2 = '38';
    } else if (inputText == 'women suit') {
      outputText1 = 'PINK SUIT';
      outputImage1 = 'assets/homepic/women suit.jpg';
      outputTextPrice1 = 8000;
      outputText2 = 'GREY JACKET SUIT';
      outputImage2 = 'assets/homepic/women suit2.jpg';
      outputTextPrice2 = 10000;
      id1 = '39';
      id2 = '40';
    } else if (inputText == 'women churidar') {
      outputText1 = 'BLUE SALWAR';
      outputImage1 = 'assets/homepic/womens churidar.jpg';
      outputTextPrice1 = 2000;
      outputText2 = 'RAIN AND RAINBOW';
      outputImage2 = 'assets/homepic/womens churidar2.jpg';
      outputTextPrice2 = 1700;
      id1 = '41';
      id2 = '42';
    } else if (inputText == 'women frock') {
      outputText1 = 'PRINTED FROCKS';
      outputImage1 = 'assets/homepic/womens frocks.jpg';
      outputTextPrice1 = 2500;
      outputText2 = 'WHITE PRINTED';
      outputImage2 = 'assets/homepic/womens frocks2.jpg';
      outputTextPrice2 = 1700;
      id1 = '43';
      id2 = '44';
    } else if (inputText == 'women jeans') {
      outputText1 = 'SKY BLUE JEANS';
      outputImage1 = 'assets/homepic/womens jeans.jpg';
      outputTextPrice1 = 2700;
      outputText2 = 'PLAIN BLACK JEANS';
      outputImage2 = 'assets/homepic/womens jeans2.jpg';
      outputTextPrice2 = 1700;
      id1 = '45';
      id2 = '46';
    } else if (inputText == 'women kurta') {
      outputText1 = 'PRINTED KURTA';
      outputImage1 = 'assets/homepic/womens kurta.jpg';
      outputTextPrice1 = 1400;
      outputText2 = 'DARK BLUE KURTA';
      outputImage2 = 'assets/homepic/womens kurta2.jpg';
      outputTextPrice2 = 1300;
      id1 = '47';
      id2 = '48';
    } else if (inputText == 'women pants') {
      outputText1 = 'SOFT PINK PANTS';
      outputImage1 = 'assets/homepic/womens pant.jpg';
      outputTextPrice1 = 1200;
      outputText2 = 'PLAIN GREEN PANTS';
      outputImage2 = 'assets/homepic/womens pant2.jpg';
      outputTextPrice2 = 1500;
      id1 = '49';
      id2 = '50';
    } else if (inputText == 'women shirts') {
      outputText1 = 'BLUE & WHITE';
      outputImage1 = 'assets/homepic/womens shirts.jpg';
      outputTextPrice1 = 1500;
      outputText2 = 'CHINESE NECK';
      outputImage2 = 'assets/homepic/womens shirts2.jpg';
      outputTextPrice2 = 2000;
      id1 = '51';
      id2 = '52';
    } else if (inputText == 'women shoes') {
      outputText1 = 'SMOOTH WEARS';
      outputImage1 = 'assets/homepic/womens shoes.jpg';
      outputTextPrice1 = 2000;
      outputText2 = 'FASHION SHOES';
      outputImage2 = 'assets/homepic/womens shoes2.jpg';
      outputTextPrice2 = 2700;
      id1 = '53';
      id2 = '54';
    } else if (inputText == 'women wallet') {
      outputText1 = 'PINK CUSTOM MADE';
      outputImage1 = 'assets/homepic/womens wallet.jpg';
      outputTextPrice1 = 900;
      outputText2 = 'LEATHER WALLET';
      outputImage2 = 'assets/homepic/womens wallet2.jpg';
      outputTextPrice2 = 1200;
      id1 = '55';
      id2 = '56';
    } else if (inputText == 'women watches') {
      outputText1 = 'CHUMBAK';
      outputImage1 = 'assets/homepic/womens watches.jpg';
      outputTextPrice1 = 4000;
      outputText2 = 'KOVONSH';
      outputImage2 = 'assets/homepic/womens watches2.jpg';
      outputTextPrice2 = 7000;
      id1 = '57';
      id2 = '58';
    } else if (inputText == 'women tshirts') {
      outputText1 = 'BLUE TSHIRTS';
      outputImage1 = 'assets/homepic/womens tshirt.jpg';
      outputTextPrice1 = 1700;
      outputText2 = ' PRINTED TSHIRTS';
      outputImage2 = 'assets/homepic/womens tshirt2.jpg';
      outputTextPrice2 = 2300;
      id1 = '59';
      id2 = '60';
    }
    return Display(
        image1: outputImage1,
        text1: outputText1,
        price1: outputTextPrice1,
        image2: outputImage2,
        text2: outputText2,
        price2: outputTextPrice2,
        id1: id1,
        id2: id2);
  }

  final List<String> listExample;
  Search(this.listExample);

  List<String> recentList = [
    "camera",
    "mobile phone",
    "pant",
    "shirt",
    "shoes"
  ];

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList //In the true case
        : suggestionList.addAll(listExample.where(
            // In the false case
            (element) => element.contains(query),
          ));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
          onTap: () {
            selectedResult = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
