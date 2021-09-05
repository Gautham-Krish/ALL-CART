import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String name;
  final String img;
  final String id;
  final int cost;

  Product({this.name, this.img, this.cost, this.id});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '01',
      name: 'DOUBLE COAT BED',
      img: 'assets/homepic/bed.jpg',
      cost: 10000,
    ),
    Product(
      id: '02',
      name: 'SINGLE COAT BED',
      img: 'assets/homepic/bed2.jpg',
      cost: 6000,
    ),
    Product(
      id: '03',
      name: 'CANON EOS',
      img: 'assets/homepic/camera.jpg',
      cost: 60000,
    ),
    Product(
      id: '04',
      name: 'CANON EOS 1500D',
      img: 'assets/homepic/camera2.jpg',
      cost: 40000,
    ),
    Product(
      id: '05',
      name: 'CHECKED MAT ',
      img: 'assets/homepic/floor mat.jpg',
      cost: 4000,
    ),
    Product(
      id: '06',
      name: 'DIAMOND MAT',
      img: 'assets/homepic/floor mat2.jpg',
      cost: 6000,
    ),
    Product(
      id: '07',
      name: 'LENOVA HEADSET',
      img: 'assets/homepic/headset2.jpg',
      cost: 7000,
    ),
    Product(
      id: '08',
      name: 'GAMING HEADSET',
      img: 'assets/homepic/headset3.jpg',
      cost: 9000,
    ),
    Product(
      id: '09',
      name: 'NOKIA',
      img: 'assets/homepic/laptops.jpg',
      cost: 70000,
    ),
    Product(
      id: '10',
      name: 'LENOVA',
      img: 'assets/homepic/laptops2.jpg',
      cost: 90000,
    ),
    Product(
      id: '11',
      name: 'BLACK JEANS',
      img: 'assets/homepic/mens jeans.jpg',
      cost: 2500,
    ),
    Product(
      id: '12',
      name: 'BLUE JEANS',
      img: 'assets/homepic/mens jeans2.jpg',
      cost: 3000,
    ),
    Product(
      id: '13',
      name: 'BLUE KURTA',
      img: 'assets/homepic/mens kurta.jpg',
      cost: 2500,
    ),
    Product(
      id: '14',
      name: 'YELLOW KURTA',
      img: 'assets/homepic/mens kurta2.jpg',
      cost: 1500,
    ),
    Product(
      id: '15',
      name: 'LIGHT BROWN PANT',
      img: 'assets/homepic/mens pant.jpg',
      cost: 1000,
    ),
    Product(
      id: '16',
      name: 'CASUAL PANTS',
      img: 'assets/homepic/mens pant2.jpg',
      cost: 1500,
    ),
    Product(
      id: '17',
      name: 'CASUAL SHIRTS',
      img: 'assets/homepic/mens shirts.jpg',
      cost: 1800,
    ),
    Product(
      id: '18',
      name: 'CHECKED SHIRT',
      img: 'assets/homepic/mens shirts2.jpg',
      cost: 1500,
    ),
    Product(
      id: '19',
      name: 'STYLED BLUE SUIT',
      img: 'assets/homepic/mens suit.jpg',
      cost: 40000,
    ),
    Product(
      id: '20',
      name: 'WINE PEAK',
      img: 'assets/homepic/mens suit2.jpg',
      cost: 30000,
    ),
    Product(
      id: '21',
      name: 'STRIPED PINK',
      img: 'assets/homepic/mens tshirts.jpg',
      cost: 1000,
    ),
    Product(
      id: '22',
      name: 'PRINTED SHIRTS',
      img: 'assets/homepic/mens tshirts2.jpg',
      cost: 1800,
    ),
    Product(
      id: '23',
      name: 'WHITE CASUALS',
      img: 'assets/homepic/mens shoe.jpg',
      cost: 1600,
    ),
    Product(
      id: '24',
      name: 'FORMAL BROWN',
      img: 'assets/homepic/mens shoe2.jpg',
      cost: 1800,
    ),
    Product(
      id: '25',
      name: 'LEATHER BROWN',
      img: 'assets/homepic/mens wallet.jpg',
      cost: 1600,
    ),
    Product(
      id: '26',
      name: 'VERTICAL WALLET',
      img: 'assets/homepic/mens wallet2.jpg',
      cost: 1800,
    ),
    Product(
      id: '27',
      name: 'IWC',
      img: 'assets/homepic/mens watches.jpg',
      cost: 7500,
    ),
    Product(
      id: '28',
      name: 'BLACK PREMIUM',
      img: 'assets/homepic/mens watches2.jpg',
      cost: 8000,
    ),
    Product(
      id: '29',
      name: 'ONE PLUS',
      img: 'assets/homepic/phone.jpg',
      cost: 50000,
    ),
    Product(
      id: '30',
      name: 'I PHONE 12 PRO',
      img: 'assets/homepic/phone2.jpg',
      cost: 120000,
    ),
    Product(
      id: '31',
      name: 'PS5',
      img: 'assets/homepic/play station.jpg',
      cost: 50000,
    ),
    Product(
      id: '32',
      name: 'PS4',
      img: 'assets/homepic/play station2.jpg',
      cost: 25000,
    ),
    Product(
      id: '35',
      name: 'ZOOMIE',
      img: 'assets/homepic/tripod.jpg',
      cost: 2000,
    ),
    Product(
      id: '36',
      name: 'GORILAA TRIPODS',
      img: 'assets/homepic/tripod2.jpg',
      cost: 3000,
    ),
    Product(
      id: '37',
      name: 'MI LED',
      img: 'assets/homepic/tv.jpg',
      cost: 80000,
    ),
    Product(
      id: '38',
      name: 'LG LED',
      img: 'assets/homepic/tv2.jpg',
      cost: 50000,
    ),
    Product(
      id: '33',
      name: 'CASUAL SAREE',
      img: 'assets/homepic/saree.jpg',
      cost: 5000,
    ),
    Product(
      id: '34',
      name: 'BRIDAL SAREE',
      img: 'assets/homepic/saree2.jpg',
      cost: 6000,
    ),
    Product(
      id: '39',
      name: 'PINK SUIT',
      img: 'assets/homepic/women suit.jpg',
      cost: 8000,
    ),
    Product(
      id: '40',
      name: 'GREY JACKET SUIT',
      img: 'assets/homepic/women suit2.jpg',
      cost: 10000,
    ),
    Product(
      id: '41',
      name: 'BLUE SALWAR',
      img: 'assets/homepic/womens churidar.jpg',
      cost: 2000,
    ),
    Product(
      id: '42',
      name: 'RAIN AND RAINBOW',
      img: 'assets/homepic/womens churidar2.jpg',
      cost: 1700,
    ),
    Product(
      id: '43',
      name: 'PRINTED FROCKS',
      img: 'assets/homepic/womens frocks.jpg',
      cost: 2500,
    ),
    Product(
      id: '44',
      name: 'WHITE PRINTED',
      img: 'assets/homepic/womens frocks2.jpg',
      cost: 1700,
    ),
    Product(
      id: '45',
      name: 'SKY BLUE JEANS',
      img: 'assets/homepic/womens jeans.jpg',
      cost: 2700,
    ),
    Product(
      id: '46',
      name: 'PLAIN BLACK JEANS',
      img: 'assets/homepic/womens jeans2.jpg',
      cost: 1700,
    ),
    Product(
      id: '47',
      name: 'PRINTED KURTA',
      img: 'assets/homepic/womens kurta.jpg',
      cost: 1400,
    ),
    Product(
      id: '48',
      name: 'DARK BLUE KURTA',
      img: 'assets/homepic/womens kurta2.jpg',
      cost: 1300,
    ),
    Product(
      id: '49',
      name: 'SOFT PINK PANTS',
      img: 'assets/homepic/womens pant.jpg',
      cost: 1200,
    ),
    Product(
      id: '50',
      name: 'PLAIN GREEN PANTS',
      img: 'assets/homepic/womens pant2.jpg',
      cost: 1500,
    ),
    Product(
      id: '51',
      name: 'BLUE & WHITE',
      img: 'assets/homepic/womens shirts.jpg',
      cost: 1500,
    ),
    Product(
      id: '52',
      name: 'CHINESE NECK',
      img: 'assets/homepic/womens shirts2.jpg',
      cost: 2000,
    ),
    Product(
      id: '53',
      name: 'SMOOTH WEARS',
      img: 'assets/homepic/womens shoes.jpg',
      cost: 2000,
    ),
    Product(
      id: '54',
      name: 'FASHION SHOES',
      img: 'assets/homepic/womens shoes2.jpg',
      cost: 2700,
    ),
    Product(
      id: '55',
      name: 'PINK CUSTOM MADE',
      img: 'assets/homepic/womens wallet.jpg',
      cost: 900,
    ),
    Product(
      id: '56',
      name: 'LEATHER WALLET',
      img: 'assets/homepic/womens wallet2.jpg',
      cost: 1200,
    ),
    Product(
      id: '57',
      name: 'CHUMBAK',
      img: 'assets/homepic/womens watches.jpg',
      cost: 4000,
    ),
    Product(
      id: '58',
      name: 'KOVONSH',
      img: 'assets/homepic/womens watches2.jpg',
      cost: 7000,
    ),
    Product(
      id: '59',
      name: 'BLUE TSHIRTS',
      img: 'assets/homepic/womens tshirt.jpg',
      cost: 1700,
    ),
    Product(
      id: '60',
      name: 'PRINTED TSHIRTS',
      img: 'assets/homepic/womens tshirt2.jpg',
      cost: 2300,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
