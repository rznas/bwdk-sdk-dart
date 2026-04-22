//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MerchantOrderReviveShipmentResponse {
  /// Returns a new [MerchantOrderReviveShipmentResponse] instance.
  MerchantOrderReviveShipmentResponse({
    required this.message,
    required this.orderUuid,
    required this.status,
    required this.statusDisplay,
  });

  /// Success message
  String message;

  /// Order unique identifier
  String orderUuid;

  /// Current order status  * `1` - اولیه * `2` - شروع شده * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - پرداخت‌شده توسط کاربر * `8` - پرداخت موفیت آمیز نبود * `9` - تأیید شده توسط فروشگاه * `10` - تأیید توسط فروشگاه ناموفق بود * `11` - ناموفق از سوی فروشگاه * `12` - لغوشده توسط فروشگاه * `13` - درخواست بازگشت وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگشت وجه به فروشگاه پس از عدم تأیید توسط فروشگاه * `15` - درخواست بازگشت وجه به مشتری پس از ناموفق بودن توسط فروشگاه * `16` - بازپرداخت به فروشگاه پس از لغو توسط فروشگاه * `17` - بازپرداخت تکمیل شد * `18` - زمان انقضا گذشته است * `19` - تحویل شده * `20` - جمع اوری شده و در حال ارسال
  OrderStatusEnum status;

  /// Human-readable status
  String statusDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantOrderReviveShipmentResponse &&
    other.message == message &&
    other.orderUuid == orderUuid &&
    other.status == status &&
    other.statusDisplay == statusDisplay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (orderUuid.hashCode) +
    (status.hashCode) +
    (statusDisplay.hashCode);

  @override
  String toString() => 'MerchantOrderReviveShipmentResponse[message=$message, orderUuid=$orderUuid, status=$status, statusDisplay=$statusDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'order_uuid'] = this.orderUuid;
      json[r'status'] = this.status;
      json[r'status_display'] = this.statusDisplay;
    return json;
  }

  /// Returns a new [MerchantOrderReviveShipmentResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantOrderReviveShipmentResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'message'), 'Required key "MerchantOrderReviveShipmentResponse[message]" is missing from JSON.');
        assert(json[r'message'] != null, 'Required key "MerchantOrderReviveShipmentResponse[message]" has a null value in JSON.');
        assert(json.containsKey(r'order_uuid'), 'Required key "MerchantOrderReviveShipmentResponse[order_uuid]" is missing from JSON.');
        assert(json[r'order_uuid'] != null, 'Required key "MerchantOrderReviveShipmentResponse[order_uuid]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "MerchantOrderReviveShipmentResponse[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "MerchantOrderReviveShipmentResponse[status]" has a null value in JSON.');
        assert(json.containsKey(r'status_display'), 'Required key "MerchantOrderReviveShipmentResponse[status_display]" is missing from JSON.');
        assert(json[r'status_display'] != null, 'Required key "MerchantOrderReviveShipmentResponse[status_display]" has a null value in JSON.');
        return true;
      }());

      return MerchantOrderReviveShipmentResponse(
        message: mapValueOfType<String>(json, r'message')!,
        orderUuid: mapValueOfType<String>(json, r'order_uuid')!,
        status: OrderStatusEnum.fromJson(json[r'status'])!,
        statusDisplay: mapValueOfType<String>(json, r'status_display')!,
      );
    }
    return null;
  }

  static List<MerchantOrderReviveShipmentResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantOrderReviveShipmentResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantOrderReviveShipmentResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantOrderReviveShipmentResponse> mapFromJson(dynamic json) {
    final map = <String, MerchantOrderReviveShipmentResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantOrderReviveShipmentResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantOrderReviveShipmentResponse-objects as value to a dart map
  static Map<String, List<MerchantOrderReviveShipmentResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantOrderReviveShipmentResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantOrderReviveShipmentResponse.listFromJson(entry.value, growable: growable,);
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
  };
}

