//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for OrderDetail
void main() {
  // final instance = OrderDetail();

  group('test OrderDetail', () {
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // String orderUuid
    test('to test the property `orderUuid`', () async {
      // TODO
    });

    // Unix timestamp تا زمانی که سفارش برای پرداخت رزرو شده است
    // int reservationExpiredAt
    test('to test the property `reservationExpiredAt`', () async {
      // TODO
    });

    // شناسه منحصر به فرد سفارش در سیستم فروشنده
    // String merchantOrderId
    test('to test the property `merchantOrderId`', () async {
      // TODO
    });

    // OrderStatusEnum status
    test('to test the property `status`', () async {
      // TODO
    });

    // String statusDisplay
    test('to test the property `statusDisplay`', () async {
      // TODO
    });

    // مجموع قیمت‌های اولیه تمام کالاها بدون تخفیف (به تومان)
    // int mainAmount
    test('to test the property `mainAmount`', () async {
      // TODO
    });

    // قیمت نهایی قابل پرداخت توسط مشتری: مبلغ_اصلی - مبلغ_تخفیف + مبلغ_مالیات (به تومان)
    // int finalAmount
    test('to test the property `finalAmount`', () async {
      // TODO
    });

    // مبلغ کل پرداخت شده توسط کاربر: مبلغ_نهایی + هزینه_ارسال (به تومان)
    // int totalPaidAmount
    test('to test the property `totalPaidAmount`', () async {
      // TODO
    });

    // کل تخفیف اعمال شده بر سفارش (به تومان)
    // int discountAmount
    test('to test the property `discountAmount`', () async {
      // TODO
    });

    // مبلغ کل مالیات برای سفارش (به تومان)
    // int taxAmount
    test('to test the property `taxAmount`', () async {
      // TODO
    });

    // هزینه ارسال برای سفارش (به تومان)
    // int shippingAmount
    test('to test the property `shippingAmount`', () async {
      // TODO
    });

    // مقدار تخفیف از برنامه باشگاه مشتریان/پاداش (به تومان)
    // int loyaltyAmount
    test('to test the property `loyaltyAmount`', () async {
      // TODO
    });

    // آدرسی برای دریافت اطلاع رسانی وضعیت پرداخت پس از تکمیل سفارش
    // String callbackUrl
    test('to test the property `callbackUrl`', () async {
      // TODO
    });

    // Merchant merchant
    test('to test the property `merchant`', () async {
      // TODO
    });

    // List<OrderItemCreate> items (default value: const [])
    test('to test the property `items`', () async {
      // TODO
    });

    // Object sourceAddress
    test('to test the property `sourceAddress`', () async {
      // TODO
    });

    // Object destinationAddress
    test('to test the property `destinationAddress`', () async {
      // TODO
    });

    // ShippingMethod selectedShippingMethod
    test('to test the property `selectedShippingMethod`', () async {
      // TODO
    });

    // DateTime shippingSelectedAt
    test('to test the property `shippingSelectedAt`', () async {
      // TODO
    });

    // DateTime addressSelectedAt
    test('to test the property `addressSelectedAt`', () async {
      // TODO
    });

    // هزینه روش بسته‌بندی انتخاب‌شده (به تومان)
    // int packingAmount
    test('to test the property `packingAmount`', () async {
      // TODO
    });

    // DateTime packingSelectedAt
    test('to test the property `packingSelectedAt`', () async {
      // TODO
    });

    // Packing selectedPacking
    test('to test the property `selectedPacking`', () async {
      // TODO
    });

    // bool canSelectPacking
    test('to test the property `canSelectPacking`', () async {
      // TODO
    });

    // bool canSelectShipping
    test('to test the property `canSelectShipping`', () async {
      // TODO
    });

    // bool canSelectAddress
    test('to test the property `canSelectAddress`', () async {
      // TODO
    });

    // bool canProceedToPayment
    test('to test the property `canProceedToPayment`', () async {
      // TODO
    });

    // bool isPaid
    test('to test the property `isPaid`', () async {
      // TODO
    });

    // OrderUser user
    test('to test the property `user`', () async {
      // TODO
    });

    // PaymentOrder payment
    test('to test the property `payment`', () async {
      // TODO
    });

    // زمان آمادهسازی سفارش (به روز)
    // int preparationTime
    test('to test the property `preparationTime`', () async {
      // TODO
    });

    // وزن کل سفارش (بر حسب گرم)
    // double weight
    test('to test the property `weight`', () async {
      // TODO
    });

    // Map<String, Object> selectedShippingData (default value: const {})
    test('to test the property `selectedShippingData`', () async {
      // TODO
    });

    // کد مرجع منحصر به فرد برای پیگیری سفارش مشتری (فرمت: BD-XXXXXXXX)
    // String referenceCode
    test('to test the property `referenceCode`', () async {
      // TODO
    });

    // double promotionDiscountAmount
    test('to test the property `promotionDiscountAmount`', () async {
      // TODO
    });

    // Map<String, Object> promotionData (default value: const {})
    test('to test the property `promotionData`', () async {
      // TODO
    });

    // مبلغ نشانه‌گذاری برای سفارش (به تومان)
    // int digipayMarkupAmount
    test('to test the property `digipayMarkupAmount`', () async {
      // TODO
    });

    // درصد کمیسیون نشانه‌گذاری برای سفارش (به درصد)
    // int markupCommissionPercentage
    test('to test the property `markupCommissionPercentage`', () async {
      // TODO
    });

    // OrderStatusEnum previousStatus
    test('to test the property `previousStatus`', () async {
      // TODO
    });

    // String previousStatusDisplay
    test('to test the property `previousStatusDisplay`', () async {
      // TODO
    });


  });

}
