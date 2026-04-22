//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCreate {
  /// Returns a new [OrderCreate] instance.
  OrderCreate({
    required this.merchantOrderId,
    required this.merchantUniqueId,
    this.mainAmount,
    this.finalAmount,
    this.totalPaidAmount,
    this.discountAmount,
    this.taxAmount,
    this.shippingAmount,
    this.loyaltyAmount,
    required this.callbackUrl,
    required this.destinationAddress,
    this.items = const [],
    this.merchant,
    this.sourceAddress,
    required this.user,
    this.reservationExpiredAt,
    required this.referenceCode,
    this.preparationTime = 2,
    this.weight,
  });

  /// شناسه منحصر به فرد این سفارش در سیستم فروشنده
  String merchantOrderId;

  /// شناسه منحصر به فرد برای تأیید اصالت سفارش
  String merchantUniqueId;

  /// مجموع قیمت‌های اولیه تمام کالاها بدون تخفیف (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mainAmount;

  /// مبلغ نهایی: مبلغ_اصلی - مبلغ_تخفیف + مبلغ_مالیات (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? finalAmount;

  /// مبلغ کل پرداخت شده توسط کاربر: مبلغ_نهایی + هزینه_ارسال (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPaidAmount;

  /// مبلغ کل تخفیف برای تمام سفارش (به تومان)
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

  /// مبلغ کل مالیات برای تمام سفارش (به تومان)
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

  /// هزینه ارسال برای سفارش (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shippingAmount;

  /// مبلغ تخفیف باشگاه مشتریان/پاداش (به تومان)
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? loyaltyAmount;

  /// آدرس وب‌هوک برای دریافت اطلاع رسانی وضعیت پرداخت
  String callbackUrl;

  Object? destinationAddress;

  List<OrderItemCreate> items;

  /// مقدار توسط سیستم جایگذاری می شود
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? merchant;

  /// مقدار توسط سیستم جایگذاری می شود
  Object? sourceAddress;

  int? user;

  /// مهلت پرداخت (به عنوان Unix timestamp) قبل از اتمام سفارش
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int? reservationExpiredAt;

  /// کد مرجع یکتا برای پیگیری سفارش مشتری (قالب: BD-XXXXXXXX)
  String referenceCode;

  /// Preparation time for the order (in days)
  ///
  /// Minimum value: 0
  int preparationTime;

  /// Total Weight of the order (in grams)
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
  bool operator ==(Object other) => identical(this, other) || other is OrderCreate &&
    other.merchantOrderId == merchantOrderId &&
    other.merchantUniqueId == merchantUniqueId &&
    other.mainAmount == mainAmount &&
    other.finalAmount == finalAmount &&
    other.totalPaidAmount == totalPaidAmount &&
    other.discountAmount == discountAmount &&
    other.taxAmount == taxAmount &&
    other.shippingAmount == shippingAmount &&
    other.loyaltyAmount == loyaltyAmount &&
    other.callbackUrl == callbackUrl &&
    other.destinationAddress == destinationAddress &&
    _deepEquality.equals(other.items, items) &&
    other.merchant == merchant &&
    other.sourceAddress == sourceAddress &&
    other.user == user &&
    other.reservationExpiredAt == reservationExpiredAt &&
    other.referenceCode == referenceCode &&
    other.preparationTime == preparationTime &&
    other.weight == weight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (merchantOrderId.hashCode) +
    (merchantUniqueId.hashCode) +
    (mainAmount == null ? 0 : mainAmount!.hashCode) +
    (finalAmount == null ? 0 : finalAmount!.hashCode) +
    (totalPaidAmount == null ? 0 : totalPaidAmount!.hashCode) +
    (discountAmount == null ? 0 : discountAmount!.hashCode) +
    (taxAmount == null ? 0 : taxAmount!.hashCode) +
    (shippingAmount == null ? 0 : shippingAmount!.hashCode) +
    (loyaltyAmount == null ? 0 : loyaltyAmount!.hashCode) +
    (callbackUrl.hashCode) +
    (destinationAddress == null ? 0 : destinationAddress!.hashCode) +
    (items.hashCode) +
    (merchant == null ? 0 : merchant!.hashCode) +
    (sourceAddress == null ? 0 : sourceAddress!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (reservationExpiredAt == null ? 0 : reservationExpiredAt!.hashCode) +
    (referenceCode.hashCode) +
    (preparationTime.hashCode) +
    (weight == null ? 0 : weight!.hashCode);

  @override
  String toString() => 'OrderCreate[merchantOrderId=$merchantOrderId, merchantUniqueId=$merchantUniqueId, mainAmount=$mainAmount, finalAmount=$finalAmount, totalPaidAmount=$totalPaidAmount, discountAmount=$discountAmount, taxAmount=$taxAmount, shippingAmount=$shippingAmount, loyaltyAmount=$loyaltyAmount, callbackUrl=$callbackUrl, destinationAddress=$destinationAddress, items=$items, merchant=$merchant, sourceAddress=$sourceAddress, user=$user, reservationExpiredAt=$reservationExpiredAt, referenceCode=$referenceCode, preparationTime=$preparationTime, weight=$weight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'merchant_order_id'] = this.merchantOrderId;
      json[r'merchant_unique_id'] = this.merchantUniqueId;
    if (this.mainAmount != null) {
      json[r'main_amount'] = this.mainAmount;
    } else {
      json[r'main_amount'] = null;
    }
    if (this.finalAmount != null) {
      json[r'final_amount'] = this.finalAmount;
    } else {
      json[r'final_amount'] = null;
    }
    if (this.totalPaidAmount != null) {
      json[r'total_paid_amount'] = this.totalPaidAmount;
    } else {
      json[r'total_paid_amount'] = null;
    }
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
    if (this.shippingAmount != null) {
      json[r'shipping_amount'] = this.shippingAmount;
    } else {
      json[r'shipping_amount'] = null;
    }
    if (this.loyaltyAmount != null) {
      json[r'loyalty_amount'] = this.loyaltyAmount;
    } else {
      json[r'loyalty_amount'] = null;
    }
      json[r'callback_url'] = this.callbackUrl;
    if (this.destinationAddress != null) {
      json[r'destination_address'] = this.destinationAddress;
    } else {
      json[r'destination_address'] = null;
    }
      json[r'items'] = this.items;
    if (this.merchant != null) {
      json[r'merchant'] = this.merchant;
    } else {
      json[r'merchant'] = null;
    }
    if (this.sourceAddress != null) {
      json[r'source_address'] = this.sourceAddress;
    } else {
      json[r'source_address'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.reservationExpiredAt != null) {
      json[r'reservation_expired_at'] = this.reservationExpiredAt;
    } else {
      json[r'reservation_expired_at'] = null;
    }
      json[r'reference_code'] = this.referenceCode;
      json[r'preparation_time'] = this.preparationTime;
    if (this.weight != null) {
      json[r'weight'] = this.weight;
    } else {
      json[r'weight'] = null;
    }
    return json;
  }

  /// Returns a new [OrderCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'merchant_order_id'), 'Required key "OrderCreate[merchant_order_id]" is missing from JSON.');
        assert(json[r'merchant_order_id'] != null, 'Required key "OrderCreate[merchant_order_id]" has a null value in JSON.');
        assert(json.containsKey(r'merchant_unique_id'), 'Required key "OrderCreate[merchant_unique_id]" is missing from JSON.');
        assert(json[r'merchant_unique_id'] != null, 'Required key "OrderCreate[merchant_unique_id]" has a null value in JSON.');
        assert(json.containsKey(r'callback_url'), 'Required key "OrderCreate[callback_url]" is missing from JSON.');
        assert(json[r'callback_url'] != null, 'Required key "OrderCreate[callback_url]" has a null value in JSON.');
        assert(json.containsKey(r'destination_address'), 'Required key "OrderCreate[destination_address]" is missing from JSON.');
        assert(json.containsKey(r'items'), 'Required key "OrderCreate[items]" is missing from JSON.');
        assert(json[r'items'] != null, 'Required key "OrderCreate[items]" has a null value in JSON.');
        assert(json.containsKey(r'user'), 'Required key "OrderCreate[user]" is missing from JSON.');
        assert(json.containsKey(r'reference_code'), 'Required key "OrderCreate[reference_code]" is missing from JSON.');
        assert(json[r'reference_code'] != null, 'Required key "OrderCreate[reference_code]" has a null value in JSON.');
        return true;
      }());

      return OrderCreate(
        merchantOrderId: mapValueOfType<String>(json, r'merchant_order_id')!,
        merchantUniqueId: mapValueOfType<String>(json, r'merchant_unique_id')!,
        mainAmount: mapValueOfType<int>(json, r'main_amount'),
        finalAmount: mapValueOfType<int>(json, r'final_amount'),
        totalPaidAmount: mapValueOfType<int>(json, r'total_paid_amount'),
        discountAmount: mapValueOfType<int>(json, r'discount_amount'),
        taxAmount: mapValueOfType<int>(json, r'tax_amount'),
        shippingAmount: mapValueOfType<int>(json, r'shipping_amount'),
        loyaltyAmount: mapValueOfType<int>(json, r'loyalty_amount'),
        callbackUrl: mapValueOfType<String>(json, r'callback_url')!,
        destinationAddress: mapValueOfType<Object>(json, r'destination_address'),
        items: OrderItemCreate.listFromJson(json[r'items']),
        merchant: mapValueOfType<int>(json, r'merchant'),
        sourceAddress: mapValueOfType<Object>(json, r'source_address'),
        user: mapValueOfType<int>(json, r'user'),
        reservationExpiredAt: mapValueOfType<int>(json, r'reservation_expired_at'),
        referenceCode: mapValueOfType<String>(json, r'reference_code')!,
        preparationTime: mapValueOfType<int>(json, r'preparation_time') ?? 2,
        weight: mapValueOfType<double>(json, r'weight'),
      );
    }
    return null;
  }

  static List<OrderCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderCreate> mapFromJson(dynamic json) {
    final map = <String, OrderCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderCreate-objects as value to a dart map
  static Map<String, List<OrderCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'merchant_order_id',
    'merchant_unique_id',
    'callback_url',
    'destination_address',
    'items',
    'user',
    'reference_code',
  };
}

