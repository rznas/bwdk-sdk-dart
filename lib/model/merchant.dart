//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Merchant {
  /// Returns a new [Merchant] instance.
  Merchant({
    this.name,
    required this.domain,
    required this.logo,
  });

  String? name;

  String domain;

  String logo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Merchant &&
    other.name == name &&
    other.domain == domain &&
    other.logo == logo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (domain.hashCode) +
    (logo.hashCode);

  @override
  String toString() => 'Merchant[name=$name, domain=$domain, logo=$logo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'domain'] = this.domain;
      json[r'logo'] = this.logo;
    return json;
  }

  /// Returns a new [Merchant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Merchant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'domain'), 'Required key "Merchant[domain]" is missing from JSON.');
        assert(json[r'domain'] != null, 'Required key "Merchant[domain]" has a null value in JSON.');
        assert(json.containsKey(r'logo'), 'Required key "Merchant[logo]" is missing from JSON.');
        assert(json[r'logo'] != null, 'Required key "Merchant[logo]" has a null value in JSON.');
        return true;
      }());

      return Merchant(
        name: mapValueOfType<String>(json, r'name'),
        domain: mapValueOfType<String>(json, r'domain')!,
        logo: mapValueOfType<String>(json, r'logo')!,
      );
    }
    return null;
  }

  static List<Merchant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Merchant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Merchant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Merchant> mapFromJson(dynamic json) {
    final map = <String, Merchant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Merchant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Merchant-objects as value to a dart map
  static Map<String, List<Merchant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Merchant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Merchant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'logo',
  };
}

