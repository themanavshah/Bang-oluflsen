import 'dart:ffi';

class Category {
  String imageUrl;
  String productName;
  int top;
  int left;


  Category({
    this.top,
    this.left,
    this.imageUrl,
    this.productName,
  });
}

List<Category> Categories = [
  Category(
    imageUrl: "assets/images/headphone.png",
    productName: "Headphone",
    top: 0,
    left: -10,
  ),
  Category(
    imageUrl: "assets/images/earphones.png",
    productName: "Earphone",
    top: 0,
    left: -10,
  ),
  Category(
    imageUrl: "assets/images/speaker.png",
    productName: "Speaker",
    top: 80,
    left: 10,
  ),
  Category(
    imageUrl: "assets/images/pods.png",
    productName: "Earpods",
    top: 20,
    left: -10,
  ),
];