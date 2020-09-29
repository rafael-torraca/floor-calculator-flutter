import 'package:floor_calculator/helpers/parse_helper.dart';

class ValidatorHelper {
  static String isValidText(String text) {
    if (text.isEmpty) {
      return 'Campo Obrigatório!';
    }
    if (ParseHelper.toDouble(text) <= 0) {
      return 'O valor precisa ser maior que 0!';
    }
    return null;
  }
}
