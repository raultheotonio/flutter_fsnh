
import 'package:fshn/model/ProductModel.dart';

class MostPopularData{
  List<ProductModel> lproduction = new List<ProductModel>();
  List<ProductModel> setMostPopularValue({String title,String description,String url})
  {
    ProductModel productModel = new ProductModel();
    productModel.title=title;
    productModel.description=description;
    productModel.url=url;
    lproduction.add(productModel);
    return lproduction;
  }

}