//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Packing {
  /// Returns a new [Packing] instance.
  Packing({
    required this.id,
    required this.name,
    this.price,
  });

  int id;

  /// نام روش/گزینه بسته‌بندی
  String name;

  /// هزینه بسته بندی به تومان
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Packing &&
    other.id == id &&
    other.name == name &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (price == null ? 0 : price!.hashCode);

  @override
  String toString() => 'Packing[id=$id, name=$name, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    return json;
  }

  /// Returns a new [Packing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Packing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Packing[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Packing[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Packing[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Packing[name]" has a null value in JSON.');
        return true;
      }());

      return Packing(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        price: mapValueOfType<int>(json, r'price'),
      );
    }
    return null;
  }

  static List<Packing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Packing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Packing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Packing> mapFromJson(dynamic json) {
    final map = <String, Packing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Packing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Packing-objects as value to a dart map
  static Map<String, List<Packing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Packing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Packing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
  };
}

