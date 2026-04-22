//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `1` - اولیه * `2` - شروع شده * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - پرداخت‌شده توسط کاربر * `8` - پرداخت موفیت آمیز نبود * `9` - تأیید شده توسط فروشگاه * `10` - تأیید توسط فروشگاه ناموفق بود * `11` - ناموفق از سوی فروشگاه * `12` - لغوشده توسط فروشگاه * `13` - درخواست بازگشت وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگشت وجه به فروشگاه پس از عدم تأیید توسط فروشگاه * `15` - درخواست بازگشت وجه به مشتری پس از ناموفق بودن توسط فروشگاه * `16` - بازپرداخت به فروشگاه پس از لغو توسط فروشگاه * `17` - بازپرداخت تکمیل شد * `18` - زمان انقضا گذشته است * `19` - تحویل شده * `20` - جمع اوری شده و در حال ارسال
class OrderStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1 = OrderStatusEnum._(1);
  static const number2 = OrderStatusEnum._(2);
  static const number3 = OrderStatusEnum._(3);
  static const number4 = OrderStatusEnum._(4);
  static const number5 = OrderStatusEnum._(5);
  static const number6 = OrderStatusEnum._(6);
  static const number7 = OrderStatusEnum._(7);
  static const number8 = OrderStatusEnum._(8);
  static const number9 = OrderStatusEnum._(9);
  static const number10 = OrderStatusEnum._(10);
  static const number11 = OrderStatusEnum._(11);
  static const number12 = OrderStatusEnum._(12);
  static const number13 = OrderStatusEnum._(13);
  static const number14 = OrderStatusEnum._(14);
  static const number15 = OrderStatusEnum._(15);
  static const number16 = OrderStatusEnum._(16);
  static const number17 = OrderStatusEnum._(17);
  static const number18 = OrderStatusEnum._(18);
  static const number19 = OrderStatusEnum._(19);
  static const number20 = OrderStatusEnum._(20);

  /// List of all possible values in this [enum][OrderStatusEnum].
  static const values = <OrderStatusEnum>[
    number1,
    number2,
    number3,
    number4,
    number5,
    number6,
    number7,
    number8,
    number9,
    number10,
    number11,
    number12,
    number13,
    number14,
    number15,
    number16,
    number17,
    number18,
    number19,
    number20,
  ];

  static OrderStatusEnum? fromJson(dynamic value) => OrderStatusEnumTypeTransformer().decode(value);

  static List<OrderStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderStatusEnum] to int,
/// and [decode] dynamic data back to [OrderStatusEnum].
class OrderStatusEnumTypeTransformer {
  factory OrderStatusEnumTypeTransformer() => _instance ??= const OrderStatusEnumTypeTransformer._();

  const OrderStatusEnumTypeTransformer._();

  int encode(OrderStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1: return OrderStatusEnum.number1;
        case 2: return OrderStatusEnum.number2;
        case 3: return OrderStatusEnum.number3;
        case 4: return OrderStatusEnum.number4;
        case 5: return OrderStatusEnum.number5;
        case 6: return OrderStatusEnum.number6;
        case 7: return OrderStatusEnum.number7;
        case 8: return OrderStatusEnum.number8;
        case 9: return OrderStatusEnum.number9;
        case 10: return OrderStatusEnum.number10;
        case 11: return OrderStatusEnum.number11;
        case 12: return OrderStatusEnum.number12;
        case 13: return OrderStatusEnum.number13;
        case 14: return OrderStatusEnum.number14;
        case 15: return OrderStatusEnum.number15;
        case 16: return OrderStatusEnum.number16;
        case 17: return OrderStatusEnum.number17;
        case 18: return OrderStatusEnum.number18;
        case 19: return OrderStatusEnum.number19;
        case 20: return OrderStatusEnum.number20;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderStatusEnumTypeTransformer] instance.
  static OrderStatusEnumTypeTransformer? _instance;
}

