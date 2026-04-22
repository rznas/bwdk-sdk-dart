//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BusinessAddress {
  /// Returns a new [BusinessAddress] instance.
  BusinessAddress({
    required this.id,
    required this.address,
    this.postalCode,
    required this.cityName,
    required this.stateName,
    this.districtId,
    this.districtName,
    this.longitude,
    this.latitude,
    this.buildingNumber,
    this.unit,
    this.receiverName,
    this.receiverPhone,
    this.isAccurate,
    this.isActive,
    required this.createdAt,
    required this.modifiedAt,
  });

  int id;

  String address;

  String? postalCode;

  String cityName;

  String stateName;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int? districtId;

  String? districtName;

  double? longitude;

  double? latitude;

  String? buildingNumber;

  String? unit;

  String? receiverName;

  String? receiverPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAccurate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  DateTime createdAt;

  DateTime modifiedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusinessAddress &&
    other.id == id &&
    other.address == address &&
    other.postalCode == postalCode &&
    other.cityName == cityName &&
    other.stateName == stateName &&
    other.districtId == districtId &&
    other.districtName == districtName &&
    other.longitude == longitude &&
    other.latitude == latitude &&
    other.buildingNumber == buildingNumber &&
    other.unit == unit &&
    other.receiverName == receiverName &&
    other.receiverPhone == receiverPhone &&
    other.isAccurate == isAccurate &&
    other.isActive == isActive &&
    other.createdAt == createdAt &&
    other.modifiedAt == modifiedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (address.hashCode) +
    (postalCode == null ? 0 : postalCode!.hashCode) +
    (cityName.hashCode) +
    (stateName.hashCode) +
    (districtId == null ? 0 : districtId!.hashCode) +
    (districtName == null ? 0 : districtName!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (buildingNumber == null ? 0 : buildingNumber!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (receiverName == null ? 0 : receiverName!.hashCode) +
    (receiverPhone == null ? 0 : receiverPhone!.hashCode) +
    (isAccurate == null ? 0 : isAccurate!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (createdAt.hashCode) +
    (modifiedAt.hashCode);

  @override
  String toString() => 'BusinessAddress[id=$id, address=$address, postalCode=$postalCode, cityName=$cityName, stateName=$stateName, districtId=$districtId, districtName=$districtName, longitude=$longitude, latitude=$latitude, buildingNumber=$buildingNumber, unit=$unit, receiverName=$receiverName, receiverPhone=$receiverPhone, isAccurate=$isAccurate, isActive=$isActive, createdAt=$createdAt, modifiedAt=$modifiedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'address'] = this.address;
    if (this.postalCode != null) {
      json[r'postal_code'] = this.postalCode;
    } else {
      json[r'postal_code'] = null;
    }
      json[r'city_name'] = this.cityName;
      json[r'state_name'] = this.stateName;
    if (this.districtId != null) {
      json[r'district_id'] = this.districtId;
    } else {
      json[r'district_id'] = null;
    }
    if (this.districtName != null) {
      json[r'district_name'] = this.districtName;
    } else {
      json[r'district_name'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.buildingNumber != null) {
      json[r'building_number'] = this.buildingNumber;
    } else {
      json[r'building_number'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.receiverName != null) {
      json[r'receiver_name'] = this.receiverName;
    } else {
      json[r'receiver_name'] = null;
    }
    if (this.receiverPhone != null) {
      json[r'receiver_phone'] = this.receiverPhone;
    } else {
      json[r'receiver_phone'] = null;
    }
    if (this.isAccurate != null) {
      json[r'is_accurate'] = this.isAccurate;
    } else {
      json[r'is_accurate'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'modified_at'] = this.modifiedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BusinessAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusinessAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "BusinessAddress[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "BusinessAddress[id]" has a null value in JSON.');
        assert(json.containsKey(r'address'), 'Required key "BusinessAddress[address]" is missing from JSON.');
        assert(json[r'address'] != null, 'Required key "BusinessAddress[address]" has a null value in JSON.');
        assert(json.containsKey(r'city_name'), 'Required key "BusinessAddress[city_name]" is missing from JSON.');
        assert(json[r'city_name'] != null, 'Required key "BusinessAddress[city_name]" has a null value in JSON.');
        assert(json.containsKey(r'state_name'), 'Required key "BusinessAddress[state_name]" is missing from JSON.');
        assert(json[r'state_name'] != null, 'Required key "BusinessAddress[state_name]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "BusinessAddress[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "BusinessAddress[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'modified_at'), 'Required key "BusinessAddress[modified_at]" is missing from JSON.');
        assert(json[r'modified_at'] != null, 'Required key "BusinessAddress[modified_at]" has a null value in JSON.');
        return true;
      }());

      return BusinessAddress(
        id: mapValueOfType<int>(json, r'id')!,
        address: mapValueOfType<String>(json, r'address')!,
        postalCode: mapValueOfType<String>(json, r'postal_code'),
        cityName: mapValueOfType<String>(json, r'city_name')!,
        stateName: mapValueOfType<String>(json, r'state_name')!,
        districtId: mapValueOfType<int>(json, r'district_id'),
        districtName: mapValueOfType<String>(json, r'district_name'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        buildingNumber: mapValueOfType<String>(json, r'building_number'),
        unit: mapValueOfType<String>(json, r'unit'),
        receiverName: mapValueOfType<String>(json, r'receiver_name'),
        receiverPhone: mapValueOfType<String>(json, r'receiver_phone'),
        isAccurate: mapValueOfType<bool>(json, r'is_accurate'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        modifiedAt: mapDateTime(json, r'modified_at', r'')!,
      );
    }
    return null;
  }

  static List<BusinessAddress> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusinessAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusinessAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusinessAddress> mapFromJson(dynamic json) {
    final map = <String, BusinessAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusinessAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusinessAddress-objects as value to a dart map
  static Map<String, List<BusinessAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusinessAddress>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusinessAddress.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'address',
    'city_name',
    'state_name',
    'created_at',
    'modified_at',
  };
}

