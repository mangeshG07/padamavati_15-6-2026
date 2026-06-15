import 'package:padmavatiupdated/core/exporters/app_export.dart';

class CouponBindings extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<CouponController>(()=>CouponController());
  }
}