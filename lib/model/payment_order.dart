//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PaymentOrder {
  /// Returns a new [PaymentOrder] instance.
  PaymentOrder({
    required this.finalAmount,
    required this.gatewayType,
    required this.gatewayTypeDisplay,
    required this.paidAt,
    required this.gatewayName,
    required this.invoiceId,
    required this.settlementDate,
    required this.settlementStatus,
    required this.settlementStatusDisplay,
  });

  int finalAmount;

  GatewayTypeEnum gatewayType;

  String gatewayTypeDisplay;

  String paidAt;

  String? gatewayName;

  String? invoiceId;

  String settlementDate;

  int settlementStatus;

  String settlementStatusDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaymentOrder &&
    other.finalAmount == finalAmount &&
    other.gatewayType == gatewayType &&
    other.gatewayTypeDisplay == gatewayTypeDisplay &&
    other.paidAt == paidAt &&
    other.gatewayName == gatewayName &&
    other.invoiceId == invoiceId &&
    other.settlementDate == settlementDate &&
    other.settlementStatus == settlementStatus &&
    other.settlementStatusDisplay == settlementStatusDisplay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (finalAmount.hashCode) +
    (gatewayType.hashCode) +
    (gatewayTypeDisplay.hashCode) +
    (paidAt.hashCode) +
    (gatewayName == null ? 0 : gatewayName!.hashCode) +
    (invoiceId == null ? 0 : invoiceId!.hashCode) +
    (settlementDate.hashCode) +
    (settlementStatus.hashCode) +
    (settlementStatusDisplay.hashCode);

  @override
  String toString() => 'PaymentOrder[finalAmount=$finalAmount, gatewayType=$gatewayType, gatewayTypeDisplay=$gatewayTypeDisplay, paidAt=$paidAt, gatewayName=$gatewayName, invoiceId=$invoiceId, settlementDate=$settlementDate, settlementStatus=$settlementStatus, settlementStatusDisplay=$settlementStatusDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'final_amount'] = this.finalAmount;
      json[r'gateway_type'] = this.gatewayType;
      json[r'gateway_type_display'] = this.gatewayTypeDisplay;
      json[r'paid_at'] = this.paidAt;
    if (this.gatewayName != null) {
      json[r'gateway_name'] = this.gatewayName;
    } else {
      json[r'gateway_name'] = null;
    }
    if (this.invoiceId != null) {
      json[r'invoice_id'] = this.invoiceId;
    } else {
      json[r'invoice_id'] = null;
    }
      json[r'settlement_date'] = this.settlementDate;
      json[r'settlement_status'] = this.settlementStatus;
      json[r'settlement_status_display'] = this.settlementStatusDisplay;
    return json;
  }

  /// Returns a new [PaymentOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaymentOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'final_amount'), 'Required key "PaymentOrder[final_amount]" is missing from JSON.');
        assert(json[r'final_amount'] != null, 'Required key "PaymentOrder[final_amount]" has a null value in JSON.');
        assert(json.containsKey(r'gateway_type'), 'Required key "PaymentOrder[gateway_type]" is missing from JSON.');
        assert(json[r'gateway_type'] != null, 'Required key "PaymentOrder[gateway_type]" has a null value in JSON.');
        assert(json.containsKey(r'gateway_type_display'), 'Required key "PaymentOrder[gateway_type_display]" is missing from JSON.');
        assert(json[r'gateway_type_display'] != null, 'Required key "PaymentOrder[gateway_type_display]" has a null value in JSON.');
        assert(json.containsKey(r'paid_at'), 'Required key "PaymentOrder[paid_at]" is missing from JSON.');
        assert(json[r'paid_at'] != null, 'Required key "PaymentOrder[paid_at]" has a null value in JSON.');
        assert(json.containsKey(r'gateway_name'), 'Required key "PaymentOrder[gateway_name]" is missing from JSON.');
        assert(json.containsKey(r'invoice_id'), 'Required key "PaymentOrder[invoice_id]" is missing from JSON.');
        assert(json.containsKey(r'settlement_date'), 'Required key "PaymentOrder[settlement_date]" is missing from JSON.');
        assert(json[r'settlement_date'] != null, 'Required key "PaymentOrder[settlement_date]" has a null value in JSON.');
        assert(json.containsKey(r'settlement_status'), 'Required key "PaymentOrder[settlement_status]" is missing from JSON.');
        assert(json[r'settlement_status'] != null, 'Required key "PaymentOrder[settlement_status]" has a null value in JSON.');
        assert(json.containsKey(r'settlement_status_display'), 'Required key "PaymentOrder[settlement_status_display]" is missing from JSON.');
        assert(json[r'settlement_status_display'] != null, 'Required key "PaymentOrder[settlement_status_display]" has a null value in JSON.');
        return true;
      }());

      return PaymentOrder(
        finalAmount: mapValueOfType<int>(json, r'final_amount')!,
        gatewayType: GatewayTypeEnum.fromJson(json[r'gateway_type'])!,
        gatewayTypeDisplay: mapValueOfType<String>(json, r'gateway_type_display')!,
        paidAt: mapValueOfType<String>(json, r'paid_at')!,
        gatewayName: mapValueOfType<String>(json, r'gateway_name'),
        invoiceId: mapValueOfType<String>(json, r'invoice_id'),
        settlementDate: mapValueOfType<String>(json, r'settlement_date')!,
        settlementStatus: mapValueOfType<int>(json, r'settlement_status')!,
        settlementStatusDisplay: mapValueOfType<String>(json, r'settlement_status_display')!,
      );
    }
    return null;
  }

  static List<PaymentOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaymentOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaymentOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaymentOrder> mapFromJson(dynamic json) {
    final map = <String, PaymentOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaymentOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaymentOrder-objects as value to a dart map
  static Map<String, List<PaymentOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaymentOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaymentOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'final_amount',
    'gateway_type',
    'gateway_type_display',
    'paid_at',
    'gateway_name',
    'invoice_id',
    'settlement_date',
    'settlement_status',
    'settlement_status_display',
  };
}

