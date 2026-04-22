//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MerchantOrderRefundResponse {
  /// Returns a new [MerchantOrderRefundResponse] instance.
  MerchantOrderRefundResponse({
    required this.message,
    required this.orderUuid,
    required this.status,
    required this.statusDisplay,
    required this.refundReason,
  });

  String message;

  String orderUuid;

  OrderStatusEnum status;

  String statusDisplay;

  String refundReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantOrderRefundResponse &&
    other.message == message &&
    other.orderUuid == orderUuid &&
    other.status == status &&
    other.statusDisplay == statusDisplay &&
    other.refundReason == refundReason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (orderUuid.hashCode) +
    (status.hashCode) +
    (statusDisplay.hashCode) +
    (refundReason.hashCode);

  @override
  String toString() => 'MerchantOrderRefundResponse[message=$message, orderUuid=$orderUuid, status=$status, statusDisplay=$statusDisplay, refundReason=$refundReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'order_uuid'] = this.orderUuid;
      json[r'status'] = this.status;
      json[r'status_display'] = this.statusDisplay;
      json[r'refund_reason'] = this.refundReason;
    return json;
  }

  /// Returns a new [MerchantOrderRefundResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantOrderRefundResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'message'), 'Required key "MerchantOrderRefundResponse[message]" is missing from JSON.');
        assert(json[r'message'] != null, 'Required key "MerchantOrderRefundResponse[message]" has a null value in JSON.');
        assert(json.containsKey(r'order_uuid'), 'Required key "MerchantOrderRefundResponse[order_uuid]" is missing from JSON.');
        assert(json[r'order_uuid'] != null, 'Required key "MerchantOrderRefundResponse[order_uuid]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "MerchantOrderRefundResponse[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "MerchantOrderRefundResponse[status]" has a null value in JSON.');
        assert(json.containsKey(r'status_display'), 'Required key "MerchantOrderRefundResponse[status_display]" is missing from JSON.');
        assert(json[r'status_display'] != null, 'Required key "MerchantOrderRefundResponse[status_display]" has a null value in JSON.');
        assert(json.containsKey(r'refund_reason'), 'Required key "MerchantOrderRefundResponse[refund_reason]" is missing from JSON.');
        assert(json[r'refund_reason'] != null, 'Required key "MerchantOrderRefundResponse[refund_reason]" has a null value in JSON.');
        return true;
      }());

      return MerchantOrderRefundResponse(
        message: mapValueOfType<String>(json, r'message')!,
        orderUuid: mapValueOfType<String>(json, r'order_uuid')!,
        status: OrderStatusEnum.fromJson(json[r'status'])!,
        statusDisplay: mapValueOfType<String>(json, r'status_display')!,
        refundReason: mapValueOfType<String>(json, r'refund_reason')!,
      );
    }
    return null;
  }

  static List<MerchantOrderRefundResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantOrderRefundResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantOrderRefundResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantOrderRefundResponse> mapFromJson(dynamic json) {
    final map = <String, MerchantOrderRefundResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantOrderRefundResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantOrderRefundResponse-objects as value to a dart map
  static Map<String, List<MerchantOrderRefundResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantOrderRefundResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantOrderRefundResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'order_uuid',
    'status',
    'status_display',
    'refund_reason',
  };
}

