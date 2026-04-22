# openapi.model.ShippingMethod

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** | نام روش/گزینه بسته‌بندی | 
**description** | **String** | شناسه روش ارسال برای استفاده در سفارش | [optional] 
**shippingType** | [**ShippingTypeEnum**](ShippingTypeEnum.md) | شناسه وضعیت ارسال از دیجی اکسپرس  * `1` - سایر * `2` - دیجی اکسپرس | [optional] 
**getShippingTypeDisplay** | **String** |  | [readonly] 
**shippingTypeDisplay** | **String** |  | [readonly] 
**cost** | **int** | هزینه ارسال برای منطقه اصلی (مثلاً تهران) به تومان | [optional] 
**secondaryCost** | **int** | هزینه ارسال برای مناطق دیگر به تومان | [optional] 
**minimumTimeSending** | **int** | حداقل تعداد روز از تاریخ سفارش تا تحویل | [optional] 
**maximumTimeSending** | **int** | Maximum number of days from order date to delivery | [optional] 
**deliveryTimeDisplay** | **String** |  | [readonly] 
**deliveryTimeRangeDisplay** | [**DeliveryTimeRangeDisplay**](DeliveryTimeRangeDisplay.md) |  | [readonly] 
**inventoryAddress** | [**BusinessAddress**](BusinessAddress.md) |  | [readonly] 
**isPayAtDestination** | **bool** | آیا روش ارسال پرداخت در مقصد است | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


