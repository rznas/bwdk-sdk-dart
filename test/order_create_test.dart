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

// tests for OrderCreate
void main() {
  // final instance = OrderCreate();

  group('test OrderCreate', () {
    // شناسه منحصر به فرد این سفارش در سیستم فروشنده
    // String merchantOrderId
    test('to test the property `merchantOrderId`', () async {
      // TODO
    });

    // شناسه منحصر به فرد برای تأیید اصالت سفارش
    // String merchantUniqueId
    test('to test the property `merchantUniqueId`', () async {
      // TODO
    });

    // مجموع قیمت‌های اولیه تمام کالاها بدون تخفیف (به تومان)
    // int mainAmount
    test('to test the property `mainAmount`', () async {
      // TODO
    });

    // مبلغ نهایی: مبلغ_اصلی - مبلغ_تخفیف + مبلغ_مالیات (به تومان)
    // int finalAmount
    test('to test the property `finalAmount`', () async {
      // TODO
    });

    // مبلغ کل پرداخت شده توسط کاربر: مبلغ_نهایی + هزینه_ارسال (به تومان)
    // int totalPaidAmount
    test('to test the property `totalPaidAmount`', () async {
      // TODO
    });

    // مبلغ کل تخفیف برای تمام سفارش (به تومان)
    // int discountAmount
    test('to test the property `discountAmount`', () async {
      // TODO
    });

    // مبلغ کل مالیات برای تمام سفارش (به تومان)
    // int taxAmount
    test('to test the property `taxAmount`', () async {
      // TODO
    });

    // هزینه ارسال برای سفارش (به تومان)
    // int shippingAmount
    test('to test the property `shippingAmount`', () async {
      // TODO
    });

    // مبلغ تخفیف باشگاه مشتریان/پاداش (به تومان)
    // int loyaltyAmount
    test('to test the property `loyaltyAmount`', () async {
      // TODO
    });

    // آدرس وب‌هوک برای دریافت اطلاع رسانی وضعیت پرداخت
    // String callbackUrl
    test('to test the property `callbackUrl`', () async {
      // TODO
    });

    // Object destinationAddress
    test('to test the property `destinationAddress`', () async {
      // TODO
    });

    // List<OrderItemCreate> items (default value: const [])
    test('to test the property `items`', () async {
      // TODO
    });

    // مقدار توسط سیستم جایگذاری می شود
    // int merchant
    test('to test the property `merchant`', () async {
      // TODO
    });

    // مقدار توسط سیستم جایگذاری می شود
    // Object sourceAddress
    test('to test the property `sourceAddress`', () async {
      // TODO
    });

    // int user
    test('to test the property `user`', () async {
      // TODO
    });

    // مهلت پرداخت (به عنوان Unix timestamp) قبل از اتمام سفارش
    // int reservationExpiredAt
    test('to test the property `reservationExpiredAt`', () async {
      // TODO
    });

    // کد مرجع منحصر به فرد برای پیگیری سفارش مشتری (فرمت: BD-XXXXXXXX)
    // String referenceCode
    test('to test the property `referenceCode`', () async {
      // TODO
    });

    // زمان آمادهسازی سفارش (به روز)
    // int preparationTime (default value: 2)
    test('to test the property `preparationTime`', () async {
      // TODO
    });

    // وزن کل سفارش (بر حسب گرم)
    // double weight
    test('to test the property `weight`', () async {
      // TODO
    });


  });

}
