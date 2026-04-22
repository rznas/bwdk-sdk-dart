//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `color` - رنگ * `size` - اندازه * `warranty` - گارانتی * `weight` - وزن * `other` - سایر
class TypeNameEnum {
  /// Instantiate a new enum with the provided [value].
  const TypeNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const color = TypeNameEnum._(r'color');
  static const size = TypeNameEnum._(r'size');
  static const warranty = TypeNameEnum._(r'warranty');
  static const weight = TypeNameEnum._(r'weight');
  static const other = TypeNameEnum._(r'other');

  /// List of all possible values in this [enum][TypeNameEnum].
  static const values = <TypeNameEnum>[
    color,
    size,
    warranty,
    weight,
    other,
  ];

  static TypeNameEnum? fromJson(dynamic value) => TypeNameEnumTypeTransformer().decode(value);

  static List<TypeNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TypeNameEnum] to String,
/// and [decode] dynamic data back to [TypeNameEnum].
class TypeNameEnumTypeTransformer {
  factory TypeNameEnumTypeTransformer() => _instance ??= const TypeNameEnumTypeTransformer._();

  const TypeNameEnumTypeTransformer._();

  String encode(TypeNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TypeNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TypeNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'color': return TypeNameEnum.color;
        case r'size': return TypeNameEnum.size;
        case r'warranty': return TypeNameEnum.warranty;
        case r'weight': return TypeNameEnum.weight;
        case r'other': return TypeNameEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TypeNameEnumTypeTransformer] instance.
  static TypeNameEnumTypeTransformer? _instance;
}

