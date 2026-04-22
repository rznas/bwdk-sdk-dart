# openapi.api.OrderShippingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://bwdk-backend.digify.shop*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderApiV1ManagerCancelShipmentCreate**](OrderShippingApi.md#orderapiv1managercancelshipmentcreate) | **POST** /order/api/v1/manager/{order_uuid}/cancel-shipment/ | Cancel Shipment
[**orderApiV1ManagerChangeShippingMethodUpdate**](OrderShippingApi.md#orderapiv1managerchangeshippingmethodupdate) | **PUT** /order/api/v1/manager/{order_uuid}/change-shipping-method/ | Change Shipping Method
[**orderApiV1ManagerReviveShipmentCreate**](OrderShippingApi.md#orderapiv1managerreviveshipmentcreate) | **POST** /order/api/v1/manager/{order_uuid}/revive-shipment/ | Revive Shipment


# **orderApiV1ManagerCancelShipmentCreate**
> MerchantOrderCancelShipmentResponse orderApiV1ManagerCancelShipmentCreate(orderUuid)

Cancel Shipment

<div dir=\"rtl\" style=\"text-align: right;\">  لغو مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای لغو یک مرسوله ثبت‌شده در سرویس دیجی‌اکسپرس استفاده می‌شود. پس از لغو موفق، مرسوله از صف ارسال خارج می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## شرایط لغو  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت **در انتظار تحویل به پیک** (Request for Pickup) باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/cancel-shipment/     Note over M,API: Header: X-API-KEY (بدون بدنه)      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else مرسوله قابل لغو نیست         API-->>M: 400 خطا         Note over API,M: {error: \"...\"}     else لغو موفق         API->>DX: لغو مرسوله         DX-->>API: تأیید لغو         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = OrderShippingApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.orderApiV1ManagerCancelShipmentCreate(orderUuid);
    print(result);
} catch (e) {
    print('Exception when calling OrderShippingApi->orderApiV1ManagerCancelShipmentCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderUuid** | **String**|  | 

### Return type

[**MerchantOrderCancelShipmentResponse**](MerchantOrderCancelShipmentResponse.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerChangeShippingMethodUpdate**
> OrderDetail orderApiV1ManagerChangeShippingMethodUpdate(orderUuid, orderDetail)

Change Shipping Method

<div dir=\"rtl\" style=\"text-align: right;\">  تغییر روش ارسال سفارش  ## توضیحات  این endpoint به فروشنده اجازه می‌دهد روش ارسال یک سفارش را تغییر دهد. این عملیات معمولاً زمانی استفاده می‌شود که فروشنده بخواهد از DigiExpress به روش ارسال پیش‌فرض (یا بالعکس) تغییر دهد.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **updated_shipping**: شناسه روش ارسال جدید * **preparation_time** (اختیاری): زمان آماده‌سازی (روز) برای DigiExpress  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = OrderShippingApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final orderDetail = OrderDetail(); // OrderDetail | 

try {
    final result = api_instance.orderApiV1ManagerChangeShippingMethodUpdate(orderUuid, orderDetail);
    print(result);
} catch (e) {
    print('Exception when calling OrderShippingApi->orderApiV1ManagerChangeShippingMethodUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderUuid** | **String**|  | 
 **orderDetail** | [**OrderDetail**](OrderDetail.md)|  | 

### Return type

[**OrderDetail**](OrderDetail.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerReviveShipmentCreate**
> MerchantOrderReviveShipmentResponse orderApiV1ManagerReviveShipmentCreate(orderUuid, reviveShipment)

Revive Shipment

<div dir=\"rtl\" style=\"text-align: right;\">  احیای مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای احیای (reactivate) یک مرسوله دیجی‌اکسپرس که قبلاً لغو شده یا در وضعیت غیرفعال است استفاده می‌شود. با ارسال `preparation_time` (زمان آماده‌سازی بر حسب روز)، زمان جدید آماده بودن بار تنظیم می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **preparation_time** (اختیاری، پیش‌فرض: ۲): تعداد روز تا آماده‌شدن بار برای تحویل به پیک  ## شرایط  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت قابل احیا باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/revive-shipment/     Note over M,API: Header: X-API-KEY<br/>{preparation_time: 2}      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else احیا موفق         API->>DX: احیای مرسوله با زمان جدید         DX-->>API: تأیید احیا         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = OrderShippingApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final reviveShipment = ReviveShipment(); // ReviveShipment | 

try {
    final result = api_instance.orderApiV1ManagerReviveShipmentCreate(orderUuid, reviveShipment);
    print(result);
} catch (e) {
    print('Exception when calling OrderShippingApi->orderApiV1ManagerReviveShipmentCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderUuid** | **String**|  | 
 **reviveShipment** | [**ReviveShipment**](ReviveShipment.md)|  | [optional] 

### Return type

[**MerchantOrderReviveShipmentResponse**](MerchantOrderReviveShipmentResponse.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

