import 'package:get/get.dart';
import 'package:service/Const/Language/ban.dart';
import 'package:service/Const/Language/eng.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {"bn_BD": ban, "en_US": eng};
}
