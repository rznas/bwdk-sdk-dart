//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderDetail {
  /// Returns a new [OrderDetail] instance.
  OrderDetail({
    required this.id,
    required this.createdAt,
    required this.orderUuid,
    required this.reservationExpiredAt,
    required this.merchantOrderId,
    required this.status,
    required this.statusDisplay,
    required this.mainAmount,
    required this.finalAmount,
    required this.totalPaidAmount,
    required this.discountAmount,
    required this.taxAmount,
    required this.shippingAmount,
    required this.loyaltyAmount,
    required this.callbackUrl,
    required this.merchant,
    this.items = const [],
    required this.sourceAddress,
    required this.destinationAddress,
    required this.selectedShippingMethod,
    required this.shippingSelectedAt,
    required this.addressSelectedAt,
    required this.packingAmount,
    required this.packingSelectedAt,
    required this.selectedPacking,
    required this.canSelectPacking,
    required this.canSelectShipping,
    required this.canSelectAddress,
    required this.canProceedToPayment,
    required this.isPaid,
    required this.user,
    required this.payment,
    required this.preparationTime,
    required this.weight,
    this.selectedShippingData = const {},
    required this.referenceCode,
    required this.promotionDiscountAmount,
    this.promotionData = const {},
    required this.digipayMarkupAmount,
    required this.markupCommissionPercentage,
    required this.previousStatus,
    required this.previousStatusDisplay,
  });

  int id;

  DateTime createdAt;

  String orderUuid;

  /// Unix timestamp تا زمانی که سفارش برای پرداخت رزرو شده است
  int? reservationExpiredAt;

  /// شناسه منحصر به فرد سفارش در سیستم فروشنده
  String merchantOrderId;

  OrderStatusEnum status;

  String statusDisplay;

  /// مجموع قیمت اولیه تمام کالاهای سفارش بدون تخفیف (به تومان)
  int mainAmount;

  /// قیمت نهایی قابل پرداخت توسط مشتری: مبلغ_اصلی - مبلغ_تخفیف + مبلغ_مالیات (به تومان)
  int finalAmount;

  /// مبلغ کل پرداخت شده توسط کاربر: مبلغ_نهایی + هزینه_ارسال (به تومان)
  int totalPaidAmount;

  /// مبلغ کل تخفیف اعمال شده بر سفارش (به تومان)
  int discountAmount;

  /// مبلغ کل مالیات برای سفارش (به تومان)
  int taxAmount;

  /// هزینه ارسال برای سفارش (به تومان)
  int shippingAmount;

  /// مقدار تخفیف از برنامه باشگاه مشتریان/پاداش (به تومان)
  int loyaltyAmount;

  /// آدرسی برای دریافت اطلاع رسانی وضعیت پرداخت پس از تکمیل سفارش
  String callbackUrl;

  Merchant merchant;

  List<OrderItemCreate> items;

  Object? sourceAddress;

  Object? destinationAddress;

  ShippingMethod selectedShippingMethod;

  DateTime? shippingSelectedAt;

  DateTime? addressSelectedAt;

  /// هزینه روش بسته‌بندی انتخاب‌شده (به تومان)
  int packingAmount;

  DateTime? packingSelectedAt;

  Packing selectedPacking;

  bool canSelectPacking;

  bool canSelectShipping;

  bool canSelectAddress;

  bool canProceedToPayment;

  bool isPaid;

  OrderUser user;

  PaymentOrder payment;

  /// Preparation time for the order (in days)
  int preparationTime;

  /// Total weight of the order (in grams)
  double weight;

  Map<String, Object> selectedShippingData;

  /// کد مرجع یکتا برای پیگیری سفارش مشتری (قالب: BD-XXXXXXXX)
  String referenceCode;

  double promotionDiscountAmount;

  Map<String, Object> promotionData;

  /// Markup amount for the order (in Tomans)
  int digipayMarkupAmount;

  /// Markup commission percentage for the order (in percent)
  int markupCommissionPercentage;

  OrderStatusEnum? previousStatus;

  String previousStatusDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderDetail &&
    other.id == id &&
    other.createdAt == createdAt &&
    other.orderUuid == orderUuid &&
    other.reservationExpiredAt == reservationExpiredAt &&
    other.merchantOrderId == merchantOrderId &&
    other.status == status &&
    other.statusDisplay == statusDisplay &&
    other.mainAmount == mainAmount &&
    other.finalAmount == finalAmount &&
    other.totalPaidAmount == totalPaidAmount &&
    other.discountAmount == discountAmount &&
    other.taxAmount == taxAmount &&
    other.shippingAmount == shippingAmount &&
    other.loyaltyAmount == loyaltyAmount &&
    other.callbackUrl == callbackUrl &&
    other.merchant == merchant &&
    _deepEquality.equals(other.items, items) &&
    other.sourceAddress == sourceAddress &&
    other.destinationAddress == destinationAddress &&
    other.selectedShippingMethod == selectedShippingMethod &&
    other.shippingSelectedAt == shippingSelectedAt &&
    other.addressSelectedAt == addressSelectedAt &&
    other.packingAmount == packingAmount &&
    other.packingSelectedAt == packingSelectedAt &&
    other.selectedPacking == selectedPacking &&
    other.canSelectPacking == canSelectPacking &&
    other.canSelectShipping == canSelectShipping &&
    other.canSelectAddress == canSelectAddress &&
    other.canProceedToPayment == canProceedToPayment &&
    other.isPaid == isPaid &&
    other.user == user &&
    other.payment == payment &&
    other.preparationTime == preparationTime &&
    other.weight == weight &&
    _deepEquality.equals(other.selectedShippingData, selectedShippingData) &&
    other.referenceCode == referenceCode &&
    other.promotionDiscountAmount == promotionDiscountAmount &&
    _deepEquality.equals(other.promotionData, promotionData) &&
    other.digipayMarkupAmount == digipayMarkupAmount &&
    other.markupCommissionPercentage == markupCommissionPercentage &&
    other.previousStatus == previousStatus &&
    other.previousStatusDisplay == previousStatusDisplay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (createdAt.hashCode) +
    (orderUuid.hashCode) +
    (reservationExpiredAt == null ? 0 : reservationExpiredAt!.hashCode) +
    (merchantOrderId.hashCode) +
    (status.hashCode) +
    (statusDisplay.hashCode) +
    (mainAmount.hashCode) +
    (finalAmount.hashCode) +
    (totalPaidAmount.hashCode) +
    (discountAmount.hashCode) +
    (taxAmount.hashCode) +
    (shippingAmount.hashCode) +
    (loyaltyAmount.hashCode) +
    (callbackUrl.hashCode) +
    (merchant.hashCode) +
    (items.hashCode) +
    (sourceAddress == null ? 0 : sourceAddress!.hashCode) +
    (destinationAddress == null ? 0 : destinationAddress!.hashCode) +
    (selectedShippingMethod.hashCode) +
    (shippingSelectedAt == null ? 0 : shippingSelectedAt!.hashCode) +
    (addressSelectedAt == null ? 0 : addressSelectedAt!.hashCode) +
    (packingAmount.hashCode) +
    (packingSelectedAt == null ? 0 : packingSelectedAt!.hashCode) +
    (selectedPacking.hashCode) +
    (canSelectPacking.hashCode) +
    (canSelectShipping.hashCode) +
    (canSelectAddress.hashCode) +
    (canProceedToPayment.hashCode) +
    (isPaid.hashCode) +
    (user.hashCode) +
    (payment.hashCode) +
    (preparationTime.hashCode) +
    (weight.hashCode) +
    (selectedShippingData.hashCode) +
    (referenceCode.hashCode) +
    (promotionDiscountAmount.hashCode) +
    (promotionData.hashCode) +
    (digipayMarkupAmount.hashCode) +
    (markupCommissionPercentage.hashCode) +
    (previousStatus == null ? 0 : previousStatus!.hashCode) +
    (previousStatusDisplay.hashCode);

  @override
  String toString() => 'OrderDetail[id=$id, createdAt=$createdAt, orderUuid=$orderUuid, reservationExpiredAt=$reservationExpiredAt, merchantOrderId=$merchantOrderId, status=$status, statusDisplay=$statusDisplay, mainAmount=$mainAmount, finalAmount=$finalAmount, totalPaidAmount=$totalPaidAmount, discountAmount=$discountAmount, taxAmount=$taxAmount, shippingAmount=$shippingAmount, loyaltyAmount=$loyaltyAmount, callbackUrl=$callbackUrl, merchant=$merchant, items=$items, sourceAddress=$sourceAddress, destinationAddress=$destinationAddress, selectedShippingMethod=$selectedShippingMethod, shippingSelectedAt=$shippingSelectedAt, addressSelectedAt=$addressSelectedAt, packingAmount=$packingAmount, packingSelectedAt=$packingSelectedAt, selectedPacking=$selectedPacking, canSelectPacking=$canSelectPacking, canSelectShipping=$canSelectShipping, canSelectAddress=$canSelectAddress, canProceedToPayment=$canProceedToPayment, isPaid=$isPaid, user=$user, payment=$payment, preparationTime=$preparationTime, weight=$weight, selectedShippingData=$selectedShippingData, referenceCode=$referenceCode, promotionDiscountAmount=$promotionDiscountAmount, promotionData=$promotionData, digipayMarkupAmount=$digipayMarkupAmount, markupCommissionPercentage=$markupCommissionPercentage, previousStatus=$previousStatus, previousStatusDisplay=$previousStatusDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'order_uuid'] = this.orderUuid;
    if (this.reservationExpiredAt != null) {
      json[r'reservation_expired_at'] = this.reservationExpiredAt;
    } else {
      json[r'reservation_expired_at'] = null;
    }
      json[r'merchant_order_id'] = this.merchantOrderId;
      json[r'status'] = this.status;
      json[r'status_display'] = this.statusDisplay;
      json[r'main_amount'] = this.mainAmount;
      json[r'final_amount'] = this.finalAmount;
      json[r'total_paid_amount'] = this.totalPaidAmount;
      json[r'discount_amount'] = this.discountAmount;
      json[r'tax_amount'] = this.taxAmount;
      json[r'shipping_amount'] = this.shippingAmount;
      json[r'loyalty_amount'] = this.loyaltyAmount;
      json[r'callback_url'] = this.callbackUrl;
      json[r'merchant'] = this.merchant;
      json[r'items'] = this.items;
    if (this.sourceAddress != null) {
      json[r'source_address'] = this.sourceAddress;
    } else {
      json[r'source_address'] = null;
    }
    if (this.destinationAddress != null) {
      json[r'destination_address'] = this.destinationAddress;
    } else {
      json[r'destination_address'] = null;
    }
      json[r'selected_shipping_method'] = this.selectedShippingMethod;
    if (this.shippingSelectedAt != null) {
      json[r'shipping_selected_at'] = this.shippingSelectedAt!.toUtc().toIso8601String();
    } else {
      json[r'shipping_selected_at'] = null;
    }
    if (this.addressSelectedAt != null) {
      json[r'address_selected_at'] = this.addressSelectedAt!.toUtc().toIso8601String();
    } else {
      json[r'address_selected_at'] = null;
    }
      json[r'packing_amount'] = this.packingAmount;
    if (this.packingSelectedAt != null) {
      json[r'packing_selected_at'] = this.packingSelectedAt!.toUtc().toIso8601String();
    } else {
      json[r'packing_selected_at'] = null;
    }
      json[r'selected_packing'] = this.selectedPacking;
      json[r'can_select_packing'] = this.canSelectPacking;
      json[r'can_select_shipping'] = this.canSelectShipping;
      json[r'can_select_address'] = this.canSelectAddress;
      json[r'can_proceed_to_payment'] = this.canProceedToPayment;
      json[r'is_paid'] = this.isPaid;
      json[r'user'] = this.user;
      json[r'payment'] = this.payment;
      json[r'preparation_time'] = this.preparationTime;
      json[r'weight'] = this.weight;
      json[r'selected_shipping_data'] = this.selectedShippingData;
      json[r'reference_code'] = this.referenceCode;
      json[r'promotion_discount_amount'] = this.promotionDiscountAmount;
      json[r'promotion_data'] = this.promotionData;
      json[r'digipay_markup_amount'] = this.digipayMarkupAmount;
      json[r'markup_commission_percentage'] = this.markupCommissionPercentage;
    if (this.previousStatus != null) {
      json[r'previous_status'] = this.previousStatus;
    } else {
      json[r'previous_status'] = null;
    }
      json[r'previous_status_display'] = this.previousStatusDisplay;
    return json;
  }

  /// Returns a new [OrderDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "OrderDetail[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "OrderDetail[id]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "OrderDetail[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "OrderDetail[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'order_uuid'), 'Required key "OrderDetail[order_uuid]" is missing from JSON.');
        assert(json[r'order_uuid'] != null, 'Required key "OrderDetail[order_uuid]" has a null value in JSON.');
        assert(json.containsKey(r'reservation_expired_at'), 'Required key "OrderDetail[reservation_expired_at]" is missing from JSON.');
        assert(json.containsKey(r'merchant_order_id'), 'Required key "OrderDetail[merchant_order_id]" is missing from JSON.');
        assert(json[r'merchant_order_id'] != null, 'Required key "OrderDetail[merchant_order_id]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "OrderDetail[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "OrderDetail[status]" has a null value in JSON.');
        assert(json.containsKey(r'status_display'), 'Required key "OrderDetail[status_display]" is missing from JSON.');
        assert(json[r'status_display'] != null, 'Required key "OrderDetail[status_display]" has a null value in JSON.');
        assert(json.containsKey(r'main_amount'), 'Required key "OrderDetail[main_amount]" is missing from JSON.');
        assert(json[r'main_amount'] != null, 'Required key "OrderDetail[main_amount]" has a null value in JSON.');
        assert(json.containsKey(r'final_amount'), 'Required key "OrderDetail[final_amount]" is missing from JSON.');
        assert(json[r'final_amount'] != null, 'Required key "OrderDetail[final_amount]" has a null value in JSON.');
        assert(json.containsKey(r'total_paid_amount'), 'Required key "OrderDetail[total_paid_amount]" is missing from JSON.');
        assert(json[r'total_paid_amount'] != null, 'Required key "OrderDetail[total_paid_amount]" has a null value in JSON.');
        assert(json.containsKey(r'discount_amount'), 'Required key "OrderDetail[discount_amount]" is missing from JSON.');
        assert(json[r'discount_amount'] != null, 'Required key "OrderDetail[discount_amount]" has a null value in JSON.');
        assert(json.containsKey(r'tax_amount'), 'Required key "OrderDetail[tax_amount]" is missing from JSON.');
        assert(json[r'tax_amount'] != null, 'Required key "OrderDetail[tax_amount]" has a null value in JSON.');
        assert(json.containsKey(r'shipping_amount'), 'Required key "OrderDetail[shipping_amount]" is missing from JSON.');
        assert(json[r'shipping_amount'] != null, 'Required key "OrderDetail[shipping_amount]" has a null value in JSON.');
        assert(json.containsKey(r'loyalty_amount'), 'Required key "OrderDetail[loyalty_amount]" is missing from JSON.');
        assert(json[r'loyalty_amount'] != null, 'Required key "OrderDetail[loyalty_amount]" has a null value in JSON.');
        assert(json.containsKey(r'callback_url'), 'Required key "OrderDetail[callback_url]" is missing from JSON.');
        assert(json[r'callback_url'] != null, 'Required key "OrderDetail[callback_url]" has a null value in JSON.');
        assert(json.containsKey(r'merchant'), 'Required key "OrderDetail[merchant]" is missing from JSON.');
        assert(json[r'merchant'] != null, 'Required key "OrderDetail[merchant]" has a null value in JSON.');
        assert(json.containsKey(r'items'), 'Required key "OrderDetail[items]" is missing from JSON.');
        assert(json[r'items'] != null, 'Required key "OrderDetail[items]" has a null value in JSON.');
        assert(json.containsKey(r'source_address'), 'Required key "OrderDetail[source_address]" is missing from JSON.');
        assert(json.containsKey(r'destination_address'), 'Required key "OrderDetail[destination_address]" is missing from JSON.');
        assert(json.containsKey(r'selected_shipping_method'), 'Required key "OrderDetail[selected_shipping_method]" is missing from JSON.');
        assert(json[r'selected_shipping_method'] != null, 'Required key "OrderDetail[selected_shipping_method]" has a null value in JSON.');
        assert(json.containsKey(r'shipping_selected_at'), 'Required key "OrderDetail[shipping_selected_at]" is missing from JSON.');
        assert(json.containsKey(r'address_selected_at'), 'Required key "OrderDetail[address_selected_at]" is missing from JSON.');
        assert(json.containsKey(r'packing_amount'), 'Required key "OrderDetail[packing_amount]" is missing from JSON.');
        assert(json[r'packing_amount'] != null, 'Required key "OrderDetail[packing_amount]" has a null value in JSON.');
        assert(json.containsKey(r'packing_selected_at'), 'Required key "OrderDetail[packing_selected_at]" is missing from JSON.');
        assert(json.containsKey(r'selected_packing'), 'Required key "OrderDetail[selected_packing]" is missing from JSON.');
        assert(json[r'selected_packing'] != null, 'Required key "OrderDetail[selected_packing]" has a null value in JSON.');
        assert(json.containsKey(r'can_select_packing'), 'Required key "OrderDetail[can_select_packing]" is missing from JSON.');
        assert(json[r'can_select_packing'] != null, 'Required key "OrderDetail[can_select_packing]" has a null value in JSON.');
        assert(json.containsKey(r'can_select_shipping'), 'Required key "OrderDetail[can_select_shipping]" is missing from JSON.');
        assert(json[r'can_select_shipping'] != null, 'Required key "OrderDetail[can_select_shipping]" has a null value in JSON.');
        assert(json.containsKey(r'can_select_address'), 'Required key "OrderDetail[can_select_address]" is missing from JSON.');
        assert(json[r'can_select_address'] != null, 'Required key "OrderDetail[can_select_address]" has a null value in JSON.');
        assert(json.containsKey(r'can_proceed_to_payment'), 'Required key "OrderDetail[can_proceed_to_payment]" is missing from JSON.');
        assert(json[r'can_proceed_to_payment'] != null, 'Required key "OrderDetail[can_proceed_to_payment]" has a null value in JSON.');
        assert(json.containsKey(r'is_paid'), 'Required key "OrderDetail[is_paid]" is missing from JSON.');
        assert(json[r'is_paid'] != null, 'Required key "OrderDetail[is_paid]" has a null value in JSON.');
        assert(json.containsKey(r'user'), 'Required key "OrderDetail[user]" is missing from JSON.');
        assert(json[r'user'] != null, 'Required key "OrderDetail[user]" has a null value in JSON.');
        assert(json.containsKey(r'payment'), 'Required key "OrderDetail[payment]" is missing from JSON.');
        assert(json[r'payment'] != null, 'Required key "OrderDetail[payment]" has a null value in JSON.');
        assert(json.containsKey(r'preparation_time'), 'Required key "OrderDetail[preparation_time]" is missing from JSON.');
        assert(json[r'preparation_time'] != null, 'Required key "OrderDetail[preparation_time]" has a null value in JSON.');
        assert(json.containsKey(r'weight'), 'Required key "OrderDetail[weight]" is missing from JSON.');
        assert(json[r'weight'] != null, 'Required key "OrderDetail[weight]" has a null value in JSON.');
        assert(json.containsKey(r'selected_shipping_data'), 'Required key "OrderDetail[selected_shipping_data]" is missing from JSON.');
        assert(json[r'selected_shipping_data'] != null, 'Required key "OrderDetail[selected_shipping_data]" has a null value in JSON.');
        assert(json.containsKey(r'reference_code'), 'Required key "OrderDetail[reference_code]" is missing from JSON.');
        assert(json[r'reference_code'] != null, 'Required key "OrderDetail[reference_code]" has a null value in JSON.');
        assert(json.containsKey(r'promotion_discount_amount'), 'Required key "OrderDetail[promotion_discount_amount]" is missing from JSON.');
        assert(json[r'promotion_discount_amount'] != null, 'Required key "OrderDetail[promotion_discount_amount]" has a null value in JSON.');
        assert(json.containsKey(r'promotion_data'), 'Required key "OrderDetail[promotion_data]" is missing from JSON.');
        assert(json[r'promotion_data'] != null, 'Required key "OrderDetail[promotion_data]" has a null value in JSON.');
        assert(json.containsKey(r'digipay_markup_amount'), 'Required key "OrderDetail[digipay_markup_amount]" is missing from JSON.');
        assert(json[r'digipay_markup_amount'] != null, 'Required key "OrderDetail[digipay_markup_amount]" has a null value in JSON.');
        assert(json.containsKey(r'markup_commission_percentage'), 'Required key "OrderDetail[markup_commission_percentage]" is missing from JSON.');
        assert(json[r'markup_commission_percentage'] != null, 'Required key "OrderDetail[markup_commission_percentage]" has a null value in JSON.');
        assert(json.containsKey(r'previous_status'), 'Required key "OrderDetail[previous_status]" is missing from JSON.');
        assert(json.containsKey(r'previous_status_display'), 'Required key "OrderDetail[previous_status_display]" is missing from JSON.');
        assert(json[r'previous_status_display'] != null, 'Required key "OrderDetail[previous_status_display]" has a null value in JSON.');
        return true;
      }());

      return OrderDetail(
        id: mapValueOfType<int>(json, r'id')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        orderUuid: mapValueOfType<String>(json, r'order_uuid')!,
        reservationExpiredAt: mapValueOfType<int>(json, r'reservation_expired_at'),
        merchantOrderId: mapValueOfType<String>(json, r'merchant_order_id')!,
        status: OrderStatusEnum.fromJson(json[r'status'])!,
        statusDisplay: mapValueOfType<String>(json, r'status_display')!,
        mainAmount: mapValueOfType<int>(json, r'main_amount')!,
        finalAmount: mapValueOfType<int>(json, r'final_amount')!,
        totalPaidAmount: mapValueOfType<int>(json, r'total_paid_amount')!,
        discountAmount: mapValueOfType<int>(json, r'discount_amount')!,
        taxAmount: mapValueOfType<int>(json, r'tax_amount')!,
        shippingAmount: mapValueOfType<int>(json, r'shipping_amount')!,
        loyaltyAmount: mapValueOfType<int>(json, r'loyalty_amount')!,
        callbackUrl: mapValueOfType<String>(json, r'callback_url')!,
        merchant: Merchant.fromJson(json[r'merchant'])!,
        items: OrderItemCreate.listFromJson(json[r'items']),
        sourceAddress: mapValueOfType<Object>(json, r'source_address'),
        destinationAddress: mapValueOfType<Object>(json, r'destination_address'),
        selectedShippingMethod: ShippingMethod.fromJson(json[r'selected_shipping_method'])!,
        shippingSelectedAt: mapDateTime(json, r'shipping_selected_at', r''),
        addressSelectedAt: mapDateTime(json, r'address_selected_at', r''),
        packingAmount: mapValueOfType<int>(json, r'packing_amount')!,
        packingSelectedAt: mapDateTime(json, r'packing_selected_at', r''),
        selectedPacking: Packing.fromJson(json[r'selected_packing'])!,
        canSelectPacking: mapValueOfType<bool>(json, r'can_select_packing')!,
        canSelectShipping: mapValueOfType<bool>(json, r'can_select_shipping')!,
        canSelectAddress: mapValueOfType<bool>(json, r'can_select_address')!,
        canProceedToPayment: mapValueOfType<bool>(json, r'can_proceed_to_payment')!,
        isPaid: mapValueOfType<bool>(json, r'is_paid')!,
        user: OrderUser.fromJson(json[r'user'])!,
        payment: PaymentOrder.fromJson(json[r'payment'])!,
        preparationTime: mapValueOfType<int>(json, r'preparation_time')!,
        weight: mapValueOfType<double>(json, r'weight')!,
        selectedShippingData: mapCastOfType<String, Object>(json, r'selected_shipping_data')!,
        referenceCode: mapValueOfType<String>(json, r'reference_code')!,
        promotionDiscountAmount: mapValueOfType<double>(json, r'promotion_discount_amount')!,
        promotionData: mapCastOfType<String, Object>(json, r'promotion_data')!,
        digipayMarkupAmount: mapValueOfType<int>(json, r'digipay_markup_amount')!,
        markupCommissionPercentage: mapValueOfType<int>(json, r'markup_commission_percentage')!,
        previousStatus: OrderStatusEnum.fromJson(json[r'previous_status']),
        previousStatusDisplay: mapValueOfType<String>(json, r'previous_status_display')!,
      );
    }
    return null;
  }

  static List<OrderDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderDetail> mapFromJson(dynamic json) {
    final map = <String, OrderDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderDetail-objects as value to a dart map
  static Map<String, List<OrderDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'created_at',
    'order_uuid',
    'reservation_expired_at',
    'merchant_order_id',
    'status',
    'status_display',
    'main_amount',
    'final_amount',
    'total_paid_amount',
    'discount_amount',
    'tax_amount',
    'shipping_amount',
    'loyalty_amount',
    'callback_url',
    'merchant',
    'items',
    'source_address',
    'destination_address',
    'selected_shipping_method',
    'shipping_selected_at',
    'address_selected_at',
    'packing_amount',
    'packing_selected_at',
    'selected_packing',
    'can_select_packing',
    'can_select_shipping',
    'can_select_address',
    'can_proceed_to_payment',
    'is_paid',
    'user',
    'payment',
    'preparation_time',
    'weight',
    'selected_shipping_data',
    'reference_code',
    'promotion_discount_amount',
    'promotion_data',
    'digipay_markup_amount',
    'markup_commission_percentage',
    'previous_status',
    'previous_status_display',
  };
}

