class MerchantDetail {
  final String image;
  final String name;
  final bool isActive;

  const MerchantDetail({
    required this.image,
    required this.name,
    this.isActive = true,
  });
}
