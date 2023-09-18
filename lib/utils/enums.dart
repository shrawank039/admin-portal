import 'package:collection/collection.dart' show IterableExtension;

class EnumUtils {
  static String? parse(dynamic enumItem) {
    if (enumItem == null) {
      return null;
    }
    return enumItem.toString().split('.')[1];
  }

  static T? fromString<T>(List<T> enumValues, String? value) {
    if (value == null || enumValues == null) {
      return null;
    }

    return enumValues.singleWhereOrNull(
        (enumItem) =>
            EnumUtils.parse(enumItem)?.toLowerCase() == value?.toLowerCase());
  }
}
