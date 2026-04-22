# openapi.model.Option

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**typeName** | [**TypeNameEnum**](TypeNameEnum.md) | نوع ویژگی محصول: رنگ، سایز، گارانتی، وزن یا سایر  * `color` - رنگ * `size` - اندازه * `warranty` - گارانتی * `weight` - وزن * `other` - سایر | 
**name** | **String** | نام ویژگی (مثلاً 'قرمز' برای رنگ قرمز، 'XL' برای سایز) | 
**value** | **String** | مقدار ویژگی (مثلاً '#FF0000' برای کد رنگ یا مقدار دیگر) | 
**isColor** | **bool** | اگر نوع ویژگی رنگ است درست است، وگرنه غلط | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


