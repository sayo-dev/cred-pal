class ProductDetail {
  final String image;
  final String name;
  final String price;
  final String oldPrice;
  final String? discount;
  final String? source;

  const ProductDetail({
    required this.image,
    required this.name,
    required this.price,
    required this.oldPrice,
    this.discount,
    this.source,
  });
}
