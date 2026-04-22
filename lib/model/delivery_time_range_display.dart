//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliveryTimeRangeDisplay {
  /// Returns a new [DeliveryTimeRangeDisplay] instance.
  DeliveryTimeRangeDisplay({
    required this.minDate,
    required this.maxDate,
  });

  String minDate;

  String maxDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliveryTimeRangeDisplay &&
    other.minDate == minDate &&
    other.maxDate == maxDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (minDate.hashCode) +
    (maxDate.hashCode);

  @override
  String toString() => 'DeliveryTimeRangeDisplay[minDate=$minDate, maxDate=$maxDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'min_date'] = this.minDate;
      json[r'max_date'] = this.maxDate;
    return json;
  }

  /// Returns a new [DeliveryTimeRangeDisplay] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliveryTimeRangeDisplay? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'min_date'), 'Required key "DeliveryTimeRangeDisplay[min_date]" is missing from JSON.');
        assert(json[r'min_date'] != null, 'Required key "DeliveryTimeRangeDisplay[min_date]" has a null value in JSON.');
        assert(json.containsKey(r'max_date'), 'Required key "DeliveryTimeRangeDisplay[max_date]" is missing from JSON.');
        assert(json[r'max_date'] != null, 'Required key "DeliveryTimeRangeDisplay[max_date]" has a null value in JSON.');
        return true;
      }());

      return DeliveryTimeRangeDisplay(
        minDate: mapValueOfType<String>(json, r'min_date')!,
        maxDate: mapValueOfType<String>(json, r'max_date')!,
      );
    }
    return null;
  }

  static List<DeliveryTimeRangeDisplay> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryTimeRangeDisplay>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryTimeRangeDisplay.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliveryTimeRangeDisplay> mapFromJson(dynamic json) {
    final map = <String, DeliveryTimeRangeDisplay>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliveryTimeRangeDisplay.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliveryTimeRangeDisplay-objects as value to a dart map
  static Map<String, List<DeliveryTimeRangeDisplay>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliveryTimeRangeDisplay>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliveryTimeRangeDisplay.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'min_date',
    'max_date',
  };
}

