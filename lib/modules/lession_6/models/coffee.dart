// ignore_for_file: public_member_api_docs, sort_constructors_first
class Coffee {
  String? name;
  String? description;
  double? price;
  double? rating;
  String? type;

  Coffee(this.name, this.description, this.price, this.rating, this.type);

  @override
  String toString() {
    return 'Coffee(name: $name, description: $description, price: $price, rating: $rating, type: $type)';
  }
}
