//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MerchantOrderCancelShipmentResponse {
  /// Returns a new [MerchantOrderCancelShipmentResponse] instance.
  MerchantOrderCancelShipmentResponse({
    required this.message,
    required this.orderUuid,
    required this.status,
    required this.statusDisplay,
  });

  /// پیام موفق‌‌
  String message;

  /// شناسه منحصر به فرد سفارش
  String orderUuid;

  /// وضعیت فعلی سفارش  * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله
  OrderStatusEnum status;

  /// وضعیت قابل‌خواندن
  String statusDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MerchantOrderCancelShipmentResponse &&
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
  String toString() => 'MerchantOrderCancelShipmentResponse[message=$message, orderUuid=$orderUuid, status=$status, statusDisplay=$statusDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
      json[r'order_uuid'] = this.orderUuid;
      json[r'status'] = this.status;
      json[r'status_display'] = this.statusDisplay;
    return json;
  }

  /// Returns a new [MerchantOrderCancelShipmentResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MerchantOrderCancelShipmentResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'message'), 'Required key "MerchantOrderCancelShipmentResponse[message]" is missing from JSON.');
        assert(json[r'message'] != null, 'Required key "MerchantOrderCancelShipmentResponse[message]" has a null value in JSON.');
        assert(json.containsKey(r'order_uuid'), 'Required key "MerchantOrderCancelShipmentResponse[order_uuid]" is missing from JSON.');
        assert(json[r'order_uuid'] != null, 'Required key "MerchantOrderCancelShipmentResponse[order_uuid]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "MerchantOrderCancelShipmentResponse[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "MerchantOrderCancelShipmentResponse[status]" has a null value in JSON.');
        assert(json.containsKey(r'status_display'), 'Required key "MerchantOrderCancelShipmentResponse[status_display]" is missing from JSON.');
        assert(json[r'status_display'] != null, 'Required key "MerchantOrderCancelShipmentResponse[status_display]" has a null value in JSON.');
        return true;
      }());

      return MerchantOrderCancelShipmentResponse(
        message: mapValueOfType<String>(json, r'message')!,
        orderUuid: mapValueOfType<String>(json, r'order_uuid')!,
        status: OrderStatusEnum.fromJson(json[r'status'])!,
        statusDisplay: mapValueOfType<String>(json, r'status_display')!,
      );
    }
    return null;
  }

  static List<MerchantOrderCancelShipmentResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MerchantOrderCancelShipmentResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MerchantOrderCancelShipmentResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MerchantOrderCancelShipmentResponse> mapFromJson(dynamic json) {
    final map = <String, MerchantOrderCancelShipmentResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MerchantOrderCancelShipmentResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MerchantOrderCancelShipmentResponse-objects as value to a dart map
  static Map<String, List<MerchantOrderCancelShipmentResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MerchantOrderCancelShipmentResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MerchantOrderCancelShipmentResponse.listFromJson(entry.value, growable: growable,);
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

