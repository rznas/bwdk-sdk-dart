//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MerchantPaidOrderList {
  /// Returns a new [MerchantPaidOrderList] instance.
  MerchantPaidOrderList({
    required this.orderUuid,
    required this.merchantOrderId,
    required this.merchantUniqueId,
    required this.paidAt,
    required this.refundsAt,
  });

  String orderUuid;

  /// شناسه منحصر به فرد سفارش در سیستم فروشنده
  String merchantOrderId;

  /// شناسه منحصر به فرد فروشنده برای تأیید سفارش
  String merchantUniqueId;

  DateTime? paidAt;

  DateTime? refundsAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantPaidOrderList &&
    other.orderUuid == orderUuid &&
    other.merchantOrderId == merchantOrderId &&
    other.merchantUniqueId == merchantUniqueId &&
    other.paidAt == paidAt &&
    other.refundsAt == refundsAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderUuid.hashCode) +
    (merchantOrderId.hashCode) +
    (merchantUniqueId.hashCode) +
    (paidAt == null ? 0 : paidAt!.hashCode) +
    (refundsAt == null ? 0 : refundsAt!.hashCode);

  @override
  String toString() => 'MerchantPaidOrderList[orderUuid=$orderUuid, merchantOrderId=$merchantOrderId, merchantUniqueId=$merchantUniqueId, paidAt=$paidAt, refundsAt=$refundsAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_uuid'] = this.orderUuid;
      json[r'merchant_order_id'] = this.merchantOrderId;
      json[r'merchant_unique_id'] = this.merchantUniqueId;
    if (this.paidAt != null) {
      json[r'paid_at'] = this.paidAt!.toUtc().toIso8601String();
    } else {
      json[r'paid_at'] = null;
    }
    if (this.refundsAt != null) {
      json[r'refunds_at'] = this.refundsAt!.toUtc().toIso8601String();
    } else {
      json[r'refunds_at'] = null;
    }
    return json;
  }

  /// Returns a new [MerchantPaidOrderList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantPaidOrderList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'order_uuid'), 'Required key "MerchantPaidOrderList[order_uuid]" is missing from JSON.');
        assert(json[r'order_uuid'] != null, 'Required key "MerchantPaidOrderList[order_uuid]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_order_id'), 'Required key "MerchantPaidOrderList[merchant_order_id]" is missing from JSON.');
        assert(json[r'merchant_order_id'] != null, 'Required key "MerchantPaidOrderList[merchant_order_id]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_unique_id'), 'Required key "MerchantPaidOrderList[merchant_unique_id]" is missing from JSON.');
        assert(json[r'merchant_unique_id'] != null, 'Required key "MerchantPaidOrderList[merchant_unique_id]" has a null value in JSON.');
        assert(json.containsKey(r'paid_at'), 'Required key "MerchantPaidOrderList[paid_at]" is missing from JSON.');
        assert(json.containsKey(r'refunds_at'), 'Required key "MerchantPaidOrderList[refunds_at]" is missing from JSON.');
        return true;
      }());

      return MerchantPaidOrderList(
        orderUuid: mapValueOfType<String>(json, r'order_uuid')!,
        merchantOrderId: mapValueOfType<String>(json, r'merchant_order_id')!,
        merchantUniqueId: mapValueOfType<String>(json, r'merchant_unique_id')!,
        paidAt: mapDateTime(json, r'paid_at', r''),
        refundsAt: mapDateTime(json, r'refunds_at', r''),
      );
    }
    return null;
  }

  static List<MerchantPaidOrderList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantPaidOrderList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantPaidOrderList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantPaidOrderList> mapFromJson(dynamic json) {
    final map = <String, MerchantPaidOrderList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantPaidOrderList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantPaidOrderList-objects as value to a dart map
  static Map<String, List<MerchantPaidOrderList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantPaidOrderList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantPaidOrderList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_uuid',
    'merchant_order_id',
    'merchant_unique_id',
    'paid_at',
    'refunds_at',
  };
}

