//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCreateResponse {
  /// Returns a new [OrderCreateResponse] instance.
  OrderCreateResponse({
    required this.orderStartUrl,
    required this.orderUuid,
  });

  String orderStartUrl;

  String orderUuid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCreateResponse &&
    other.orderStartUrl == orderStartUrl &&
    other.orderUuid == orderUuid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderStartUrl.hashCode) +
    (orderUuid.hashCode);

  @override
  String toString() => 'OrderCreateResponse[orderStartUrl=$orderStartUrl, orderUuid=$orderUuid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order_start_url'] = this.orderStartUrl;
      json[r'order_uuid'] = this.orderUuid;
    return json;
  }

  /// Returns a new [OrderCreateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCreateResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'order_start_url'), 'Required key "OrderCreateResponse[order_start_url]" is missing from JSON.');
        assert(json[r'order_start_url'] != null, 'Required key "OrderCreateResponse[order_start_url]" has a null value in JSON.');
        assert(json.containsKey(r'order_uuid'), 'Required key "OrderCreateResponse[order_uuid]" is missing from JSON.');
        assert(json[r'order_uuid'] != null, 'Required key "OrderCreateResponse[order_uuid]" has a null value in JSON.');
        return true;
      }());

      return OrderCreateResponse(
        orderStartUrl: mapValueOfType<String>(json, r'order_start_url')!,
        orderUuid: mapValueOfType<String>(json, r'order_uuid')!,
      );
    }
    return null;
  }

  static List<OrderCreateResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderCreateResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderCreateResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderCreateResponse> mapFromJson(dynamic json) {
    final map = <String, OrderCreateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCreateResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderCreateResponse-objects as value to a dart map
  static Map<String, List<OrderCreateResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderCreateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderCreateResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order_start_url',
    'order_uuid',
  };
}

