//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Option {
  /// Returns a new [Option] instance.
  Option({
    required this.typeName,
    required this.name,
    required this.value,
    this.isColor = false,
  });

  /// نوع ویژگی محصول: رنگ، سایز، گارانتی، وزن یا سایر  * `color` - رنگ * `size` - اندازه * `warranty` - گارانتی * `weight` - وزن * `other` - سایر
  TypeNameEnum typeName;

  /// نام ویژگی (مثلاً 'قرمز' برای رنگ قرمز، 'XL' برای سایز)
  String name;

  /// مقدار ویژگی (مثلاً '#FF0000' برای کد رنگ یا مقدار دیگر)
  String value;

  /// اگر نوع ویژگی رنگ است درست است، وگرنه غلط
  bool isColor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Option &&
    other.typeName == typeName &&
    other.name == name &&
    other.value == value &&
    other.isColor == isColor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (typeName.hashCode) +
    (name.hashCode) +
    (value.hashCode) +
    (isColor.hashCode);

  @override
  String toString() => 'Option[typeName=$typeName, name=$name, value=$value, isColor=$isColor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type_name'] = this.typeName;
      json[r'name'] = this.name;
      json[r'value'] = this.value;
      json[r'is_color'] = this.isColor;
    return json;
  }

  /// Returns a new [Option] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Option? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type_name'), 'Required key "Option[type_name]" is missing from JSON.');
        assert(json[r'type_name'] != null, 'Required key "Option[type_name]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Option[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Option[name]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "Option[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "Option[value]" has a null value in JSON.');
        return true;
      }());

      return Option(
        typeName: TypeNameEnum.fromJson(json[r'type_name'])!,
        name: mapValueOfType<String>(json, r'name')!,
        value: mapValueOfType<String>(json, r'value')!,
        isColor: mapValueOfType<bool>(json, r'is_color') ?? false,
      );
    }
    return null;
  }

  static List<Option> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Option>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Option.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Option> mapFromJson(dynamic json) {
    final map = <String, Option>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Option.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Option-objects as value to a dart map
  static Map<String, List<Option>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Option>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Option.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type_name',
    'name',
    'value',
  };
}

