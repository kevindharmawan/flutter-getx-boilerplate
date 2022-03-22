import 'package:get/get.dart';
import 'package:boilerplate/utils/constants/other_constants.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'app_name': OtherConstants.appName,
          'example': 'Example Message',
        },
        'id': {
          'app_name': OtherConstants.appName,
          'example': 'Contoh Pesan',
        },
      };
}
