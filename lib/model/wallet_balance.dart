//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WalletBalance {
  /// Returns a new [WalletBalance] instance.
  WalletBalance({
    this.amount,
    required this.negativeSettlementDeadline,
  });

  /// موجودی کیف پول فعلی (برحسب تومان)
  ///
  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  /// مهلت تسویه تراز منفی
  String? negativeSettlementDeadline;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WalletBalance &&
    other.amount == amount &&
    other.negativeSettlementDeadline == negativeSettlementDeadline;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (negativeSettlementDeadline == null ? 0 : negativeSettlementDeadline!.hashCode);

  @override
  String toString() => 'WalletBalance[amount=$amount, negativeSettlementDeadline=$negativeSettlementDeadline]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.negativeSettlementDeadline != null) {
      json[r'negative_settlement_deadline'] = this.negativeSettlementDeadline;
    } else {
      json[r'negative_settlement_deadline'] = null;
    }
    return json;
  }

  /// Returns a new [WalletBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WalletBalance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'negative_settlement_deadline'), 'Required key "WalletBalance[negative_settlement_deadline]" is missing from JSON.');
        return true;
      }());

      return WalletBalance(
        amount: mapValueOfType<int>(json, r'amount'),
        negativeSettlementDeadline: mapValueOfType<String>(json, r'negative_settlement_deadline'),
      );
    }
    return null;
  }

  static List<WalletBalance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WalletBalance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WalletBalance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WalletBalance> mapFromJson(dynamic json) {
    final map = <String, WalletBalance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WalletBalance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WalletBalance-objects as value to a dart map
  static Map<String, List<WalletBalance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WalletBalance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WalletBalance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'negative_settlement_deadline',
  };
}

