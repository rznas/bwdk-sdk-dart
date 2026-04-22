# openapi.model.OrderCreate

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchantOrderId** | **String** | شناسه منحصر به فرد این سفارش در سیستم فروشنده | 
**merchantUniqueId** | **String** | شناسه منحصر به فرد برای تأیید اصالت سفارش | 
**mainAmount** | **int** | مجموع قیمت‌های اولیه تمام کالاها بدون تخفیف (به تومان) | [optional] 
**finalAmount** | **int** | مبلغ نهایی: مبلغ_اصلی - مبلغ_تخفیف + مبلغ_مالیات (به تومان) | [optional] 
**totalPaidAmount** | **int** | مبلغ کل پرداخت شده توسط کاربر: مبلغ_نهایی + هزینه_ارسال (به تومان) | [optional] 
**discountAmount** | **int** | مبلغ کل تخفیف برای تمام سفارش (به تومان) | [optional] 
**taxAmount** | **int** | مبلغ کل مالیات برای تمام سفارش (به تومان) | [optional] 
**shippingAmount** | **int** | هزینه ارسال برای سفارش (به تومان) | [optional] 
**loyaltyAmount** | **int** | مبلغ تخفیف باشگاه مشتریان/پاداش (به تومان) | [optional] 
**callbackUrl** | **String** | آدرس وب‌هوک برای دریافت اطلاع رسانی وضعیت پرداخت | 
**destinationAddress** | **Object** |  | [readonly] 
**items** | [**List<OrderItemCreate>**](OrderItemCreate.md) |  | [default to const []]
**merchant** | **int** | مقدار توسط سیستم جایگذاری می شود | [optional] 
**sourceAddress** | **Object** | مقدار توسط سیستم جایگذاری می شود | [optional] 
**user** | **int** |  | [readonly] 
**reservationExpiredAt** | **int** | مهلت پرداخت (به عنوان Unix timestamp) قبل از اتمام سفارش | [optional] 
**referenceCode** | **String** | کد مرجع یکتا برای پیگیری سفارش مشتری (قالب: BD-XXXXXXXX) | [readonly] 
**preparationTime** | **int** | Preparation time for the order (in days) | [optional] [default to 2]
**weight** | **double** | Total Weight of the order (in grams) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


