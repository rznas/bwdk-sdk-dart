//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ShippingMethod {
  /// Returns a new [ShippingMethod] instance.
  ShippingMethod({
    required this.id,
    required this.name,
    this.description,
    this.shippingType,
    required this.getShippingTypeDisplay,
    required this.shippingTypeDisplay,
    this.cost,
    this.secondaryCost,
    this.minimumTimeSending,
    this.maximumTimeSending,
    required this.deliveryTimeDisplay,
    required this.deliveryTimeRangeDisplay,
    required this.inventoryAddress,
    this.isPayAtDestination,
  });

  int id;

  /// نام روش/گزینه بسته‌بندی
  String name;

  /// شناسه روش ارسال برای استفاده در سفارش
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// شناسه وضعیت ارسال از دیجی اکسپرس  * `1` - سایر * `2` - دیجی اکسپرس
  ///
  /// Minimum value: 0.0
  /// Maximum value: 32767.0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShippingTypeEnum? shippingType;

  String getShippingTypeDisplay;

  String shippingTypeDisplay;

  /// هزینه ارسال برای منطقه اصلی (مثلاً تهران) به تومان
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cost;

  /// هزینه ارسال برای مناطق دیگر به تومان
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? secondaryCost;

  /// حداقل تعداد روز از تاریخ سفارش تا تحویل
  ///
  /// Minimum value: 0
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minimumTimeSending;

  /// Maximum number of days from order date to delivery
  ///
  /// Minimum value: 0
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximumTimeSending;

  String deliveryTimeDisplay;

  DeliveryTimeRangeDisplay deliveryTimeRangeDisplay;

  BusinessAddress inventoryAddress;

  /// آیا روش ارسال پرداخت در مقصد است
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPayAtDestination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShippingMethod &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.shippingType == shippingType &&
    other.getShippingTypeDisplay == getShippingTypeDisplay &&
    other.shippingTypeDisplay == shippingTypeDisplay &&
    other.cost == cost &&
    other.secondaryCost == secondaryCost &&
    other.minimumTimeSending == minimumTimeSending &&
    other.maximumTimeSending == maximumTimeSending &&
    other.deliveryTimeDisplay == deliveryTimeDisplay &&
    other.deliveryTimeRangeDisplay == deliveryTimeRangeDisplay &&
    other.inventoryAddress == inventoryAddress &&
    other.isPayAtDestination == isPayAtDestination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (shippingType == null ? 0 : shippingType!.hashCode) +
    (getShippingTypeDisplay.hashCode) +
    (shippingTypeDisplay.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (secondaryCost == null ? 0 : secondaryCost!.hashCode) +
    (minimumTimeSending == null ? 0 : minimumTimeSending!.hashCode) +
    (maximumTimeSending == null ? 0 : maximumTimeSending!.hashCode) +
    (deliveryTimeDisplay.hashCode) +
    (deliveryTimeRangeDisplay.hashCode) +
    (inventoryAddress.hashCode) +
    (isPayAtDestination == null ? 0 : isPayAtDestination!.hashCode);

  @override
  String toString() => 'ShippingMethod[id=$id, name=$name, description=$description, shippingType=$shippingType, getShippingTypeDisplay=$getShippingTypeDisplay, shippingTypeDisplay=$shippingTypeDisplay, cost=$cost, secondaryCost=$secondaryCost, minimumTimeSending=$minimumTimeSending, maximumTimeSending=$maximumTimeSending, deliveryTimeDisplay=$deliveryTimeDisplay, deliveryTimeRangeDisplay=$deliveryTimeRangeDisplay, inventoryAddress=$inventoryAddress, isPayAtDestination=$isPayAtDestination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.shippingType != null) {
      json[r'shipping_type'] = this.shippingType;
    } else {
      json[r'shipping_type'] = null;
    }
      json[r'get_shipping_type_display'] = this.getShippingTypeDisplay;
      json[r'shipping_type_display'] = this.shippingTypeDisplay;
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.secondaryCost != null) {
      json[r'secondary_cost'] = this.secondaryCost;
    } else {
      json[r'secondary_cost'] = null;
    }
    if (this.minimumTimeSending != null) {
      json[r'minimum_time_sending'] = this.minimumTimeSending;
    } else {
      json[r'minimum_time_sending'] = null;
    }
    if (this.maximumTimeSending != null) {
      json[r'maximum_time_sending'] = this.maximumTimeSending;
    } else {
      json[r'maximum_time_sending'] = null;
    }
      json[r'delivery_time_display'] = this.deliveryTimeDisplay;
      json[r'delivery_time_range_display'] = this.deliveryTimeRangeDisplay;
      json[r'inventory_address'] = this.inventoryAddress;
    if (this.isPayAtDestination != null) {
      json[r'is_pay_at_destination'] = this.isPayAtDestination;
    } else {
      json[r'is_pay_at_destination'] = null;
    }
    return json;
  }

  /// Returns a new [ShippingMethod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShippingMethod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ShippingMethod[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ShippingMethod[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "ShippingMethod[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "ShippingMethod[name]" has a null value in JSON.');
        assert(json.containsKey(r'get_shipping_type_display'), 'Required key "ShippingMethod[get_shipping_type_display]" is missing from JSON.');
        assert(json[r'get_shipping_type_display'] != null, 'Required key "ShippingMethod[get_shipping_type_display]" has a null value in JSON.');
        assert(json.containsKey(r'shipping_type_display'), 'Required key "ShippingMethod[shipping_type_display]" is missing from JSON.');
        assert(json[r'shipping_type_display'] != null, 'Required key "ShippingMethod[shipping_type_display]" has a null value in JSON.');
        assert(json.containsKey(r'delivery_time_display'), 'Required key "ShippingMethod[delivery_time_display]" is missing from JSON.');
        assert(json[r'delivery_time_display'] != null, 'Required key "ShippingMethod[delivery_time_display]" has a null value in JSON.');
        assert(json.containsKey(r'delivery_time_range_display'), 'Required key "ShippingMethod[delivery_time_range_display]" is missing from JSON.');
        assert(json[r'delivery_time_range_display'] != null, 'Required key "ShippingMethod[delivery_time_range_display]" has a null value in JSON.');
        assert(json.containsKey(r'inventory_address'), 'Required key "ShippingMethod[inventory_address]" is missing from JSON.');
        assert(json[r'inventory_address'] != null, 'Required key "ShippingMethod[inventory_address]" has a null value in JSON.');
        return true;
      }());

      return ShippingMethod(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        shippingType: ShippingTypeEnum.fromJson(json[r'shipping_type']),
        getShippingTypeDisplay: mapValueOfType<String>(json, r'get_shipping_type_display')!,
        shippingTypeDisplay: mapValueOfType<String>(json, r'shipping_type_display')!,
        cost: mapValueOfType<int>(json, r'cost'),
        secondaryCost: mapValueOfType<int>(json, r'secondary_cost'),
        minimumTimeSending: mapValueOfType<int>(json, r'minimum_time_sending'),
        maximumTimeSending: mapValueOfType<int>(json, r'maximum_time_sending'),
        deliveryTimeDisplay: mapValueOfType<String>(json, r'delivery_time_display')!,
        deliveryTimeRangeDisplay: DeliveryTimeRangeDisplay.fromJson(json[r'delivery_time_range_display'])!,
        inventoryAddress: BusinessAddress.fromJson(json[r'inventory_address'])!,
        isPayAtDestination: mapValueOfType<bool>(json, r'is_pay_at_destination'),
      );
    }
    return null;
  }

  static List<ShippingMethod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShippingMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShippingMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShippingMethod> mapFromJson(dynamic json) {
    final map = <String, ShippingMethod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShippingMethod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShippingMethod-objects as value to a dart map
  static Map<String, List<ShippingMethod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShippingMethod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShippingMethod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'get_shipping_type_display',
    'shipping_type_display',
    'delivery_time_display',
    'delivery_time_range_display',
    'inventory_address',
  };
}

