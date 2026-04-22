# openapi.model.OrderItemCreate

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | نام کامل محصول شامل تمام مشخصات | 
**primaryAmount** | **int** | قیمت اولیه برای هر واحد بدون تخفیف (به تومان) | [optional] 
**amount** | **int** | قیمت نهایی برای تمام واحدها بعد از تخفیف (به تومان) | [optional] 
**count** | **int** | تعداد واحدهای این کالا در سفارش | 
**discountAmount** | **int** | مبلغ کل تخفیف برای این کالا (به تومان) | [optional] 
**taxAmount** | **int** | مبلغ کل مالیات برای این کالا (به تومان) | [optional] 
**imageLink** | **String** | آدرس تصویر محصول | [optional] 
**options** | [**List<Option>**](Option.md) |  | [default to const []]
**preparationTime** | **int** | زمان آمادهسازی کالا (به روز) | [optional] [default to 2]
**weight** | **double** | وزن کالا (بر حسب گرم) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


