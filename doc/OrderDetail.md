# openapi.model.OrderDetail

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**createdAt** | [**DateTime**](DateTime.md) |  | [readonly] 
**orderUuid** | **String** |  | [readonly] 
**reservationExpiredAt** | **int** | Unix timestamp تا زمانی که سفارش برای پرداخت رزرو شده است | [readonly] 
**merchantOrderId** | **String** | شناسه منحصر به فرد سفارش در سیستم فروشنده | [readonly] 
**status** | [**OrderStatusEnum**](OrderStatusEnum.md) |  | [readonly] 
**statusDisplay** | **String** |  | [readonly] 
**mainAmount** | **int** | مجموع قیمت‌های اولیه تمام کالاها بدون تخفیف (به تومان) | [readonly] 
**finalAmount** | **int** | قیمت نهایی قابل پرداخت توسط مشتری: مبلغ_اصلی - مبلغ_تخفیف + مبلغ_مالیات (به تومان) | [readonly] 
**totalPaidAmount** | **int** | مبلغ کل پرداخت شده توسط کاربر: مبلغ_نهایی + هزینه_ارسال (به تومان) | [readonly] 
**discountAmount** | **int** | کل تخفیف اعمال شده بر سفارش (به تومان) | [readonly] 
**taxAmount** | **int** | مبلغ کل مالیات برای سفارش (به تومان) | [readonly] 
**shippingAmount** | **int** | هزینه ارسال برای سفارش (به تومان) | [readonly] 
**loyaltyAmount** | **int** | مقدار تخفیف از برنامه باشگاه مشتریان/پاداش (به تومان) | [readonly] 
**callbackUrl** | **String** | آدرسی برای دریافت اطلاع رسانی وضعیت پرداخت پس از تکمیل سفارش | [readonly] 
**merchant** | [**Merchant**](Merchant.md) |  | 
**items** | [**List<OrderItemCreate>**](OrderItemCreate.md) |  | [default to const []]
**sourceAddress** | **Object** |  | [readonly] 
**destinationAddress** | **Object** |  | [readonly] 
**selectedShippingMethod** | [**ShippingMethod**](ShippingMethod.md) |  | [readonly] 
**shippingSelectedAt** | [**DateTime**](DateTime.md) |  | [readonly] 
**addressSelectedAt** | [**DateTime**](DateTime.md) |  | [readonly] 
**packingAmount** | **int** | هزینه روش بسته‌بندی انتخاب‌شده (به تومان) | [readonly] 
**packingSelectedAt** | [**DateTime**](DateTime.md) |  | [readonly] 
**selectedPacking** | [**Packing**](Packing.md) |  | [readonly] 
**canSelectPacking** | **bool** |  | [readonly] 
**canSelectShipping** | **bool** |  | [readonly] 
**canSelectAddress** | **bool** |  | [readonly] 
**canProceedToPayment** | **bool** |  | [readonly] 
**isPaid** | **bool** |  | [readonly] 
**user** | [**OrderUser**](OrderUser.md) |  | [readonly] 
**payment** | [**PaymentOrder**](PaymentOrder.md) |  | [readonly] 
**preparationTime** | **int** | زمان آمادهسازی سفارش (به روز) | [readonly] 
**weight** | **double** | وزن کل سفارش (بر حسب گرم) | [readonly] 
**selectedShippingData** | **Map<String, Object>** |  | [readonly] [default to const {}]
**referenceCode** | **String** | کد مرجع منحصر به فرد برای پیگیری سفارش مشتری (فرمت: BD-XXXXXXXX) | [readonly] 
**promotionDiscountAmount** | **double** |  | [readonly] 
**promotionData** | **Map<String, Object>** |  | [readonly] [default to const {}]
**digipayMarkupAmount** | **int** | مبلغ نشانه‌گذاری برای سفارش (به تومان) | [readonly] 
**markupCommissionPercentage** | **int** | درصد کمیسیون نشانه‌گذاری برای سفارش (به درصد) | [readonly] 
**previousStatus** | [**OrderStatusEnum**](OrderStatusEnum.md) |  | [readonly] 
**previousStatusDisplay** | **String** |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


