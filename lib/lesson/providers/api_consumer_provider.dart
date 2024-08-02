import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/core.dart';

// تعريف Provider للفئة المجردة ApiConsumer
final apiConsumerProvider = Provider<ApiConsumer>((ref) {
  // يمكن تبديل DioConsumer بـ HttpConsumer حسب الحاجة
  return DioConsumer();
});
