//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `1` - آنلاین * `2` - BNPL (الان بخر، بعداً پرداخت کن) * `3` - اعتباری * `4` - کیف پول دیجی‌پی * `5` - اقساط پیش‌فرض
class GatewayTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GatewayTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = GatewayTypeEnum._(1);
  static const number2 = GatewayTypeEnum._(2);
  static const number3 = GatewayTypeEnum._(3);
  static const number4 = GatewayTypeEnum._(4);
  static const number5 = GatewayTypeEnum._(5);

  /// List of all possible values in this [enum][GatewayTypeEnum].
  static const values = <GatewayTypeEnum>[
    number1,
    number2,
    number3,
    number4,
    number5,
  ];

  static GatewayTypeEnum? fromJson(dynamic value) => GatewayTypeEnumTypeTransformer().decode(value);

  static List<GatewayTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GatewayTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GatewayTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GatewayTypeEnum] to int,
/// and [decode] dynamic data back to [GatewayTypeEnum].
class GatewayTypeEnumTypeTransformer {
  factory GatewayTypeEnumTypeTransformer() => _instance ??= const GatewayTypeEnumTypeTransformer._();

  const GatewayTypeEnumTypeTransformer._();

  int encode(GatewayTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GatewayTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GatewayTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return GatewayTypeEnum.number1;
        case 2: return GatewayTypeEnum.number2;
        case 3: return GatewayTypeEnum.number3;
        case 4: return GatewayTypeEnum.number4;
        case 5: return GatewayTypeEnum.number5;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GatewayTypeEnumTypeTransformer] instance.
  static GatewayTypeEnumTypeTransformer? _instance;
}

