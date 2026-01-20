import '../../../../core/constants/app_resources/resources.dart';
import '../models/product_detail.dart';

const List<ProductDetail> products = [
  ProductDetail(
    image: Images.product1,
    name: 'Nokia G20',
    price: '₦ 39,780',
    oldPrice: '₦ 88,000',
    discount: '40%',
  ),
  ProductDetail(
    image: Images.product2,
    name: 'iPhone XS Max 4GB..',
    price: '₦ 295,999',
    oldPrice: '₦ 315,000',
    source: Images.ogabassey1,
  ),
  ProductDetail(
    image: Images.product4,
    name: 'iPhone 12 Pro',
    price: '₦ 490,500',
    oldPrice: '₦ 515,000',
    source: Images.imateStores1,
  ),
  ProductDetail(
    image: Images.product3,
    name: 'Anker Soundcore..',
    price: '₦ 39,780',
    oldPrice: '₦ 88,000',
    source: Images.okayFones1,
  ),
];
