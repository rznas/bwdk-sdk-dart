//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyOrder {
  /// Returns a new [VerifyOrder] instance.
  VerifyOrder({
    required this.merchantUniqueId,
  });

  /// شناسه منحصر به فرد ارسال شده هنگام ساخت سفارش برای تأیید اصالت سفارش
  String merchantUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyOrder &&
    other.merchantUniqueId == merchantUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (merchantUniqueId.hashCode);

  @override
  String toString() => 'VerifyOrder[merchantUniqueId=$merchantUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'merchant_unique_id'] = this.merchantUniqueId;
    return json;
  }

  /// Returns a new [VerifyOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'merchant_unique_id'), 'Required key "VerifyOrder[merchant_unique_id]" is missing from JSON.');
        assert(json[r'merchant_unique_id'] != null, 'Required key "VerifyOrder[merchant_unique_id]" has a null value in JSON.');
        return true;
      }());

      return VerifyOrder(
        merchantUniqueId: mapValueOfType<String>(json, r'merchant_unique_id')!,
      );
    }
    return null;
  }

  static List<VerifyOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyOrder> mapFromJson(dynamic json) {
    final map = <String, VerifyOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyOrder-objects as value to a dart map
  static Map<String, List<VerifyOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'merchant_unique_id',
  };
}

