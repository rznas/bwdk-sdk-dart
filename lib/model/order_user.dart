//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderUser {
  /// Returns a new [OrderUser] instance.
  OrderUser({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.nationalIdentityNumber,
    this.birthDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phoneNumber;

  String? nationalIdentityNumber;

  DateTime? birthDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderUser &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.phoneNumber == phoneNumber &&
    other.nationalIdentityNumber == nationalIdentityNumber &&
    other.birthDate == birthDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (nationalIdentityNumber == null ? 0 : nationalIdentityNumber!.hashCode) +
    (birthDate == null ? 0 : birthDate!.hashCode);

  @override
  String toString() => 'OrderUser[firstName=$firstName, lastName=$lastName, phoneNumber=$phoneNumber, nationalIdentityNumber=$nationalIdentityNumber, birthDate=$birthDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.lastName != null) {
      json[r'last_name'] = this.lastName;
    } else {
      json[r'last_name'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phone_number'] = this.phoneNumber;
    } else {
      json[r'phone_number'] = null;
    }
    if (this.nationalIdentityNumber != null) {
      json[r'national_identity_number'] = this.nationalIdentityNumber;
    } else {
      json[r'national_identity_number'] = null;
    }
    if (this.birthDate != null) {
      json[r'birth_date'] = _dateFormatter.format(this.birthDate!.toUtc());
    } else {
      json[r'birth_date'] = null;
    }
    return json;
  }

  /// Returns a new [OrderUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return OrderUser(
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        phoneNumber: mapValueOfType<String>(json, r'phone_number'),
        nationalIdentityNumber: mapValueOfType<String>(json, r'national_identity_number'),
        birthDate: mapDateTime(json, r'birth_date', r''),
      );
    }
    return null;
  }

  static List<OrderUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderUser> mapFromJson(dynamic json) {
    final map = <String, OrderUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderUser-objects as value to a dart map
  static Map<String, List<OrderUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

