class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  String? image;

  ProductModel({this.id, this.name, this.description, this.price, this.image});
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      image: map['image'],
    );
  }



}
