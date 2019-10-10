
import 'package:fshn/model/PromotionModel.dart';

class PromotionData{
  List<PromotionModel> lpromotion = new List<PromotionModel>();
  List<PromotionModel> setPromotionValue({String title,String description,String code,String url})
  {
    PromotionModel promotionModel = new PromotionModel();
    promotionModel.title=title;
    promotionModel.description=description;
    promotionModel.code=code;
    promotionModel.url=url;
    lpromotion.add(promotionModel);
    return lpromotion;
  }

}