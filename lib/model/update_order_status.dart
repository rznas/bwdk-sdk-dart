//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateOrderStatus {
  /// Returns a new [UpdateOrderStatus] instance.
  UpdateOrderStatus({
    required this.status,
  });

  /// Status to update the order to  * `1` - اولیه * `2` - شروع شده * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - پرداخت‌شده توسط کاربر * `8` - پرداخت موفیت آمیز نبود * `9` - تأیید شده توسط فروشگاه * `10` - تأیید توسط فروشگاه ناموفق بود * `11` - ناموفق از سوی فروشگاه * `12` - لغوشده توسط فروشگاه * `13` - درخواست بازگشت وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگشت وجه به فروشگاه پس از عدم تأیید توسط فروشگاه * `15` - درخواست بازگشت وجه به مشتری پس از ناموفق بودن توسط فروشگاه * `16` - بازپرداخت به فروشگاه پس از لغو توسط فروشگاه * `17` - بازپرداخت تکمیل شد * `18` - زمان انقضا گذشته است * `19` - تحویل شده * `20` - جمع اوری شده و در حال ارسال
  OrderStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateOrderStatus &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'UpdateOrderStatus[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [UpdateOrderStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateOrderStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'status'), 'Required key "UpdateOrderStatus[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "UpdateOrderStatus[status]" has a null value in JSON.');
        return true;
      }());

      return UpdateOrderStatus(
        status: OrderStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<UpdateOrderStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateOrderStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateOrderStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateOrderStatus> mapFromJson(dynamic json) {
    final map = <String, UpdateOrderStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateOrderStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateOrderStatus-objects as value to a dart map
  static Map<String, List<UpdateOrderStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateOrderStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateOrderStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}

