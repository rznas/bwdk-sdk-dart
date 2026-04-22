//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderItemCreate {
  /// Returns a new [OrderItemCreate] instance.
  OrderItemCreate({
    required this.name,
    this.primaryAmount,
    this.amount,
    required this.count,
    this.discountAmount,
    this.taxAmount,
    this.imageLink,
    this.options = const [],
    this.preparationTime = 2,
    this.weight,
  });

  /// نام کامل محصول شامل تمام مشخصات
  String name;

  /// قیمت اولیه برای هر واحد بدون تخفیف (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? primaryAmount;

  /// قیمت نهایی برای تمام واحدها بعد از تخفیف (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  /// تعداد واحدهای این کالا در سفارش
  ///
  /// Minimum value: 0
  /// Maximum value: 32767
  int count;

  /// مبلغ کل تخفیف برای این کالا (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? discountAmount;

  /// مبلغ کل مالیات برای این کالا (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taxAmount;

  /// آدرس تصویر محصول
  String? imageLink;

  List<Option> options;

  /// Preparation time for the item (in days)
  ///
  /// Minimum value: 0
  int preparationTime;

  /// Weight of the item (in grams)
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? weight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderItemCreate &&
    other.name == name &&
    other.primaryAmount == primaryAmount &&
    other.amount == amount &&
    other.count == count &&
    other.discountAmount == discountAmount &&
    other.taxAmount == taxAmount &&
    other.imageLink == imageLink &&
    _deepEquality.equals(other.options, options) &&
    other.preparationTime == preparationTime &&
    other.weight == weight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (primaryAmount == null ? 0 : primaryAmount!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (count.hashCode) +
    (discountAmount == null ? 0 : discountAmount!.hashCode) +
    (taxAmount == null ? 0 : taxAmount!.hashCode) +
    (imageLink == null ? 0 : imageLink!.hashCode) +
    (options.hashCode) +
    (preparationTime.hashCode) +
    (weight == null ? 0 : weight!.hashCode);

  @override
  String toString() => 'OrderItemCreate[name=$name, primaryAmount=$primaryAmount, amount=$amount, count=$count, discountAmount=$discountAmount, taxAmount=$taxAmount, imageLink=$imageLink, options=$options, preparationTime=$preparationTime, weight=$weight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.primaryAmount != null) {
      json[r'primary_amount'] = this.primaryAmount;
    } else {
      json[r'primary_amount'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
      json[r'count'] = this.count;
    if (this.discountAmount != null) {
      json[r'discount_amount'] = this.discountAmount;
    } else {
      json[r'discount_amount'] = null;
    }
    if (this.taxAmount != null) {
      json[r'tax_amount'] = this.taxAmount;
    } else {
      json[r'tax_amount'] = null;
    }
    if (this.imageLink != null) {
      json[r'image_link'] = this.imageLink;
    } else {
      json[r'image_link'] = null;
    }
      json[r'options'] = this.options;
      json[r'preparation_time'] = this.preparationTime;
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    return json;
  }

  /// Returns a new [OrderItemCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderItemCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "OrderItemCreate[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "OrderItemCreate[name]" has a null value in JSON.');
        assert(json.containsKey(r'count'), 'Required key "OrderItemCreate[count]" is missing from JSON.');
        assert(json[r'count'] != null, 'Required key "OrderItemCreate[count]" has a null value in JSON.');
        assert(json.containsKey(r'options'), 'Required key "OrderItemCreate[options]" is missing from JSON.');
        assert(json[r'options'] != null, 'Required key "OrderItemCreate[options]" has a null value in JSON.');
        return true;
      }());

      return OrderItemCreate(
        name: mapValueOfType<String>(json, r'name')!,
        primaryAmount: mapValueOfType<int>(json, r'primary_amount'),
        amount: mapValueOfType<int>(json, r'amount'),
        count: mapValueOfType<int>(json, r'count')!,
        discountAmount: mapValueOfType<int>(json, r'discount_amount'),
        taxAmount: mapValueOfType<int>(json, r'tax_amount'),
        imageLink: mapValueOfType<String>(json, r'image_link'),
        options: Option.listFromJson(json[r'options']),
        preparationTime: mapValueOfType<int>(json, r'preparation_time') ?? 2,
        weight: mapValueOfType<double>(json, r'weight'),
      );
    }
    return null;
  }

  static List<OrderItemCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderItemCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderItemCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderItemCreate> mapFromJson(dynamic json) {
    final map = <String, OrderItemCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderItemCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderItemCreate-objects as value to a dart map
  static Map<String, List<OrderItemCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderItemCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderItemCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'count',
    'options',
  };
}

