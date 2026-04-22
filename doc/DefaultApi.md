# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://bwdk-backend.digify.shop*

Method | HTTP request | Description
------------- | ------------- | -------------
[**merchantApiV1AuthStatusRetrieve**](DefaultApi.md#merchantapiv1authstatusretrieve) | **GET** /merchant/api/v1/auth/status/ | وضعیت لاگین بودن
[**orderApiV1CreateOrderCreate**](DefaultApi.md#orderapiv1createordercreate) | **POST** /order/api/v1/create-order/ | ساخت سفارش
[**orderApiV1ManagerCancelShipmentCreate**](DefaultApi.md#orderapiv1managercancelshipmentcreate) | **POST** /order/api/v1/manager/{order_uuid}/cancel-shipment/ | لغو ارسال سفارش
[**orderApiV1ManagerChangeShippingMethodUpdate**](DefaultApi.md#orderapiv1managerchangeshippingmethodupdate) | **PUT** /order/api/v1/manager/{order_uuid}/change-shipping-method/ | تغییر روش ارسال
[**orderApiV1ManagerList**](DefaultApi.md#orderapiv1managerlist) | **GET** /order/api/v1/manager/ | لیست سفارشات
[**orderApiV1ManagerPaidList**](DefaultApi.md#orderapiv1managerpaidlist) | **GET** /order/api/v1/manager/paid/ | سفارش پرداخت‌شده و تایید‌نشده
[**orderApiV1ManagerRefundCreate**](DefaultApi.md#orderapiv1managerrefundcreate) | **POST** /order/api/v1/manager/{order_uuid}/refund/ | بازگشت سفارش
[**orderApiV1ManagerRetrieve**](DefaultApi.md#orderapiv1managerretrieve) | **GET** /order/api/v1/manager/{order_uuid}/ | دریافت سفارش
[**orderApiV1ManagerReviveShipmentCreate**](DefaultApi.md#orderapiv1managerreviveshipmentcreate) | **POST** /order/api/v1/manager/{order_uuid}/revive-shipment/ | احیای ارسال سفارش
[**orderApiV1ManagerUpdateStatusUpdate**](DefaultApi.md#orderapiv1managerupdatestatusupdate) | **PUT** /order/api/v1/manager/{order_uuid}/update-status/ | به‌روزرسانی وضعیت سفارش
[**orderApiV1ManagerVerifyCreate**](DefaultApi.md#orderapiv1managerverifycreate) | **POST** /order/api/v1/manager/{order_uuid}/verify/ | تایید سفارش
[**walletsApiV1WalletBalanceRetrieve**](DefaultApi.md#walletsapiv1walletbalanceretrieve) | **GET** /wallets/api/v1/wallet-balance/ | دریافت موجودی کیف پول


# **merchantApiV1AuthStatusRetrieve**
> AuthStatusResponse merchantApiV1AuthStatusRetrieve()

وضعیت لاگین بودن

<div dir=\"rtl\" style=\"text-align: right;\">  بررسی وضعیت احراز هویت فروشنده  ## توضیحات  این endpoint برای بررسی اعتبار **API_KEY** فروشنده استفاده می‌شود. اگر کلید معتبر باشد، پاسخ `is_authenticated: true` برمی‌گردد. از این endpoint برای تأیید صحت کلید API قبل از شروع عملیات استفاده کنید.  نیاز به **API_KEY** فروشنده دارد (فقط Header لازم است، بدنه درخواست ندارد).  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();

try {
    final result = api_instance.merchantApiV1AuthStatusRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->merchantApiV1AuthStatusRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthStatusResponse**](AuthStatusResponse.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1CreateOrderCreate**
> OrderCreateResponse orderApiV1CreateOrderCreate(orderCreate)

ساخت سفارش

<div dir=\"rtl\" style=\"text-align: right;\">  ساخت سفارش جدید در سیستم BWDK  ## توضیحات  این endpoint برای ایجاد یک سفارش جدید در سیستم خرید با دیجی‌کالا استفاده می‌شود. در این درخواست باید اطلاعات سفارش، اقلام سبد خرید، و آدرس callback شامل شود.  برای شروع ارتباط با سرویس‌های **خرید با دیجی‌کالا** شما باید دارای **API_KEY** باشید که این مورد از سمت تیم دیجی‌فای در اختیار شما قرار خواهد گرفت.  ### روند کاری  **مرحله ۱: درخواست ساخت سفارش**  کاربر پس از انتخاب کالاهای خود در سبد خرید، بر روی دکمه **خرید با دیجی‌کالا** کلیک می‌کند و بک‌اند مرچنت درخواستی برای ساخت سفارش BWDK دریافت می‌کند. در این مرحله اولین درخواست خود را به بک‌اند BWDK ارسال می‌نمایید:  BWDK یک سفارش جدید برای مرچنت با وضعیت **INITIAL** ایجاد می‌کند و **order_uuid** را جنریت می‌کند. آدرس **order_start_url** نقطه شروع مسیر تکمیل سفارش است (انتخاب آدرس، شیپینگ، پکینگ، پرداخت و غیره). <br> </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant C as مشتری     participant PG as درگاه پرداخت      M->>API: POST /api/v1/orders/create     Note over M,API: شناسه سفارش, کالاها, مبلغ, callback_url     API-->>M: {لینک شروع سفارش, شناسه سفارش}      M->>C: تغییر مسیر به لینک شروع      C->>API: تکمیل درخواست خرید توسط مشتری     API->>PG: شروع فرآیند پرداخت     PG-->>C: نتیجه پرداخت     PG->>API: تأیید پرداخت     API-->>C: تغییر مسیر به callback_url      M->>API: POST /api/v1/orders/manager/{uuid}/verify     Note over M,API: {شناسه منحصربفرد فروشنده}     API-->>M: سفارش تأیید شد و آماده ارسال است ```  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderCreate = OrderCreate(); // OrderCreate | 

try {
    final result = api_instance.orderApiV1CreateOrderCreate(orderCreate);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1CreateOrderCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCreate** | [**OrderCreate**](OrderCreate.md)|  | 

### Return type

[**OrderCreateResponse**](OrderCreateResponse.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerCancelShipmentCreate**
> MerchantOrderCancelShipmentResponse orderApiV1ManagerCancelShipmentCreate(orderUuid)

لغو ارسال سفارش

<div dir=\"rtl\" style=\"text-align: right;\">  لغو مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای لغو یک مرسوله ثبت‌شده در سرویس دیجی‌اکسپرس استفاده می‌شود. پس از لغو موفق، مرسوله از صف ارسال خارج می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## شرایط لغو  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت **در انتظار تحویل به پیک** (Request for Pickup) باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/cancel-shipment/     Note over M,API: Header: X-API-KEY (بدون بدنه)      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else مرسوله قابل لغو نیست         API-->>M: 400 خطا         Note over API,M: {error: \"...\"}     else لغو موفق         API->>DX: لغو مرسوله         DX-->>API: تأیید لغو         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.orderApiV1ManagerCancelShipmentCreate(orderUuid);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerCancelShipmentCreate: $e\n');
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

تغییر روش ارسال

<div dir=\"rtl\" style=\"text-align: right;\">  تغییر روش ارسال سفارش  ## توضیحات  این endpoint به فروشنده اجازه می‌دهد روش ارسال یک سفارش را تغییر دهد. این عملیات معمولاً زمانی استفاده می‌شود که فروشنده بخواهد از DigiExpress به روش ارسال پیش‌فرض (یا بالعکس) تغییر دهد.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **updated_shipping**: شناسه روش ارسال جدید * **preparation_time** (اختیاری): زمان آماده‌سازی (روز) برای DigiExpress  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final orderDetail = OrderDetail(); // OrderDetail | 

try {
    final result = api_instance.orderApiV1ManagerChangeShippingMethodUpdate(orderUuid, orderDetail);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerChangeShippingMethodUpdate: $e\n');
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

# **orderApiV1ManagerList**
> PaginatedOrderDetailList orderApiV1ManagerList(cities, createdAt, cursor, orderIds, ordering, paymentTypes, provinces, referenceCode, search, shippingTypes, status, statuses, todayPickup)

لیست سفارشات

<div dir=\"rtl\" style=\"text-align: right;\">  لیست سفارشات فروشنده  ## توضیحات  این endpoint لیست تمام سفارشات مرتبط با فروشنده را با امکان فیلتر، جستجو و مرتب‌سازی برمی‌گرداند. نتایج به صورت صفحه‌بندی‌شده (Cursor Pagination) ارسال می‌شوند و به ترتیب جدیدترین سفارش اول مرتب می‌شوند.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای فیلتر  * **status**: وضعیت سفارش (INITIAL, PENDING, PAID_BY_USER, VERIFIED_BY_MERCHANT, ...) * **created_at__gte / created_at__lte**: فیلتر بر اساس تاریخ ایجاد * **search**: جستجو در شماره تلفن مشتری، نام، کد مرجع، شناسه سفارش مرچنت * **ordering**: مرتب‌سازی بر اساس created_at, final_amount, status, merchant_order_id  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final cities = cities_example; // String | 
final createdAt = 2013-10-20; // DateTime | 
final cursor = cursor_example; // String | مقدار نشانگر صفحه‌بندی.
final orderIds = orderIds_example; // String | 
final ordering = ordering_example; // String | کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود.
final paymentTypes = paymentTypes_example; // String | 
final provinces = provinces_example; // String | 
final referenceCode = referenceCode_example; // String | 
final search = search_example; // String | یک عبارت جستجو.
final shippingTypes = shippingTypes_example; // String | 
final status = 56; // int | * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله
final statuses = statuses_example; // String | 
final todayPickup = true; // bool | 

try {
    final result = api_instance.orderApiV1ManagerList(cities, createdAt, cursor, orderIds, ordering, paymentTypes, provinces, referenceCode, search, shippingTypes, status, statuses, todayPickup);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cities** | **String**|  | [optional] 
 **createdAt** | **DateTime**|  | [optional] 
 **cursor** | **String**| مقدار نشانگر صفحه‌بندی. | [optional] 
 **orderIds** | **String**|  | [optional] 
 **ordering** | **String**| کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود. | [optional] 
 **paymentTypes** | **String**|  | [optional] 
 **provinces** | **String**|  | [optional] 
 **referenceCode** | **String**|  | [optional] 
 **search** | **String**| یک عبارت جستجو. | [optional] 
 **shippingTypes** | **String**|  | [optional] 
 **status** | **int**| * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله | [optional] 
 **statuses** | **String**|  | [optional] 
 **todayPickup** | **bool**|  | [optional] 

### Return type

[**PaginatedOrderDetailList**](PaginatedOrderDetailList.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerPaidList**
> PaginatedMerchantPaidOrderListList orderApiV1ManagerPaidList(cities, createdAt, cursor, orderIds, ordering, paymentTypes, provinces, referenceCode, search, shippingTypes, status, statuses, todayPickup)

سفارش پرداخت‌شده و تایید‌نشده

لیست تمامی سفارشاتی که توسط کاربر پرداخت شده اند ولی توسط فروشنده تایید نشده اند. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final cities = cities_example; // String | 
final createdAt = 2013-10-20; // DateTime | 
final cursor = cursor_example; // String | مقدار نشانگر صفحه‌بندی.
final orderIds = orderIds_example; // String | 
final ordering = ordering_example; // String | کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود.
final paymentTypes = paymentTypes_example; // String | 
final provinces = provinces_example; // String | 
final referenceCode = referenceCode_example; // String | 
final search = search_example; // String | یک عبارت جستجو.
final shippingTypes = shippingTypes_example; // String | 
final status = 56; // int | * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله
final statuses = statuses_example; // String | 
final todayPickup = true; // bool | 

try {
    final result = api_instance.orderApiV1ManagerPaidList(cities, createdAt, cursor, orderIds, ordering, paymentTypes, provinces, referenceCode, search, shippingTypes, status, statuses, todayPickup);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerPaidList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cities** | **String**|  | [optional] 
 **createdAt** | **DateTime**|  | [optional] 
 **cursor** | **String**| مقدار نشانگر صفحه‌بندی. | [optional] 
 **orderIds** | **String**|  | [optional] 
 **ordering** | **String**| کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود. | [optional] 
 **paymentTypes** | **String**|  | [optional] 
 **provinces** | **String**|  | [optional] 
 **referenceCode** | **String**|  | [optional] 
 **search** | **String**| یک عبارت جستجو. | [optional] 
 **shippingTypes** | **String**|  | [optional] 
 **status** | **int**| * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله | [optional] 
 **statuses** | **String**|  | [optional] 
 **todayPickup** | **bool**|  | [optional] 

### Return type

[**PaginatedMerchantPaidOrderListList**](PaginatedMerchantPaidOrderListList.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerRefundCreate**
> MerchantOrderRefundResponse orderApiV1ManagerRefundCreate(orderUuid, refundOrder)

بازگشت سفارش

<div dir=\"rtl\" style=\"text-align: right;\"> بازگشت و لغو سفارش  ## توضیحات  این endpoint برای بازگشت یا لغو سفارشی استفاده می‌شود که قبلاً پرداخت شده یا تایید شده است. در این مرحله مبلغ سفارش به کاربر بازگشت داده می‌شود و وضعیت سفارش به **REFUNDED** تغییر می‌یابد.   ## شرایط بازگشت  سفارش باید در یکی از وضعیت‌های زیر باشد تا بازگشت امکان‌پذیر باشد: * **PAID_BY_USER**: سفارش پرداخت شده است اما هنوز تایید نشده * **VERIFIED_BY_MERCHANT**: سفارش تایید شده است  سفارش نباید قبلاً بازگشت داده شده باشد.  **پاسخ خطا** - اگر سفارش در وضعیت مناسب نباشد یا قبلاً بازگشت داده شده باشد </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API      M->>API: POST /api/v1/orders/manager/{uuid}/refund     Note over M,API: {reason: \"درخواست مشتری\"}      alt سفارش قابل بازگشت نیست         API-->>M: 500 خطا         Note over API,M: {error: \"شروع بازگشت ناموفق بود.<br/>لطفاً دوباره تلاش کنید.\"}     else سفارش معتبر است         API-->>M: 200 موفق         Note over API,M: {message: \"درخواست بازگشت با<br/>موفقیت شروع شد\",<br/>order_uuid, status: 13,<br/>status_display,<br/>refund_reason}          M->>API: GET /api/v1/orders/manager/{uuid}         Note over M,API: بررسی وضعیت سفارش<br/>(endpoint جداگانه /refund/status وجود ندارد)          alt status: 17 (بازگشت تکمیل شد)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: 17,<br/>status_display: \"بازگشت تکمیل شد\",<br/>metadata.refund_tracking_code,<br/>metadata.refund_completed_at}          else status: 13 (در حال پردازش)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: 13,<br/>status_display: \"درخواست بازگشت به مشتری<br/>به دلیل درخواست<br/>مشتری\",<br/>metadata.refund_reason}          else status: قبلی (بازگشت ناموفق)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: (قبلی),<br/>metadata.refund_error,<br/>metadata.refund_failed_at}         end     end ``` 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final refundOrder = RefundOrder(); // RefundOrder | 

try {
    final result = api_instance.orderApiV1ManagerRefundCreate(orderUuid, refundOrder);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerRefundCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderUuid** | **String**|  | 
 **refundOrder** | [**RefundOrder**](RefundOrder.md)|  | [optional] 

### Return type

[**MerchantOrderRefundResponse**](MerchantOrderRefundResponse.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerRetrieve**
> OrderDetail orderApiV1ManagerRetrieve(orderUuid)

دریافت سفارش

<div dir=\"rtl\" style=\"text-align: right;\">  # مدیریت سفارشات  ## توضیحات  این endpoint برای مدیریت و مشاهده سفارشات فروشنده استفاده می‌شود.  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.orderApiV1ManagerRetrieve(orderUuid);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderUuid** | **String**|  | 

### Return type

[**OrderDetail**](OrderDetail.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerReviveShipmentCreate**
> MerchantOrderReviveShipmentResponse orderApiV1ManagerReviveShipmentCreate(orderUuid, reviveShipment)

احیای ارسال سفارش

<div dir=\"rtl\" style=\"text-align: right;\">  احیای مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای احیای (reactivate) یک مرسوله دیجی‌اکسپرس که قبلاً لغو شده یا در وضعیت غیرفعال است استفاده می‌شود. با ارسال `preparation_time` (زمان آماده‌سازی بر حسب روز)، زمان جدید آماده بودن بار تنظیم می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **preparation_time** (اختیاری، پیش‌فرض: ۲): تعداد روز تا آماده‌شدن بار برای تحویل به پیک  ## شرایط  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت قابل احیا باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/revive-shipment/     Note over M,API: Header: X-API-KEY<br/>{preparation_time: 2}      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else احیا موفق         API->>DX: احیای مرسوله با زمان جدید         DX-->>API: تأیید احیا         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final reviveShipment = ReviveShipment(); // ReviveShipment | 

try {
    final result = api_instance.orderApiV1ManagerReviveShipmentCreate(orderUuid, reviveShipment);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerReviveShipmentCreate: $e\n');
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

# **orderApiV1ManagerUpdateStatusUpdate**
> OrderDetail orderApiV1ManagerUpdateStatusUpdate(orderUuid, updateOrderStatus)

به‌روزرسانی وضعیت سفارش

<div dir=\"rtl\" style=\"text-align: right;\">  بروزرسانی وضعیت سفارش  ## توضیحات  این endpoint به فروشنده امکان می‌دهد وضعیت یک سفارش را به‌صورت مستقیم تغییر دهد. این endpoint برای مواردی مانند علامت‌گذاری سفارش به‌عنوان «ارسال شده» یا «تحویل داده شده» توسط فروشنده استفاده می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## وضعیت‌های مجاز  * **DELIVERED**: تحویل شد * **DISPATCHED**: ارسال شد * سایر وضعیت‌های تعریف‌شده در سیستم  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API      M->>API: PUT /order/api/v1/manager/{order_uuid}/update-status/     Note over M,API: Header: X-API-KEY<br/>{status: \"DELIVERED\"}      alt وضعیت معتبر است         API-->>M: 200 موفق         Note over API,M: اطلاعات کامل سفارش با وضعیت جدید     else وضعیت نامعتبر است         API-->>M: 400 خطا         Note over API,M: {error: \"invalid status\"}     end ``` 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateOrderStatus = UpdateOrderStatus(); // UpdateOrderStatus | 

try {
    final result = api_instance.orderApiV1ManagerUpdateStatusUpdate(orderUuid, updateOrderStatus);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerUpdateStatusUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderUuid** | **String**|  | 
 **updateOrderStatus** | [**UpdateOrderStatus**](UpdateOrderStatus.md)|  | 

### Return type

[**OrderDetail**](OrderDetail.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderApiV1ManagerVerifyCreate**
> OrderDetail orderApiV1ManagerVerifyCreate(orderUuid, verifyOrder)

تایید سفارش

<div dir=\"rtl\" style=\"text-align: right;\">  تایید سفارش پس از پرداخت  ## توضیحات  پس از اتمام فرایند پرداخت توسط کاربر، مرچنت باید سفارش را تایید کند. این endpoint برای تایید و نهایی کردن سفارش پس از پرداخت موفق توسط مشتری استفاده می‌شود. در این مرحله مرچنت سفارش را تایید می‌کند و وضعیت سفارش به **VERIFIED_BY_MERCHANT** تغییر می‌یابد.  ## روند کاری  **مرحله ۲: بازگشت کاربر و دریافت نتیجه**  پس از تکمیل فرایند پرداخت (موفق یا ناموفق)، کاربر به آدرس callback_url که هنگام ساخت سفارش ارسال کرده بودید بازگردانده می‌شود. در این درخواست وضعیت سفارش به صورت query parameters ارسال می‌شود:   **Query Parameters:** * **success**: متغیر منطقی نشان‌دهنده موفق یا ناموفق بودن سفارش * **status**: وضعیت سفارش (PAID، FAILED، وغیره) * **phone_number**: شماره تلفن مشتری * **order_uuid**: شناسه یکتای سفارش * **merchant_order_id**: شناسه سفارش در سیستم مرچنت  **مرحله ۳: تایید سفارش در بک‌اند**  سپس شما باید این endpoint را فراخوانی کنید تا سفارش را تایید کنید و اطمینان حاصل کنید که سفارش موفقیت‌آمیز ثبت شده است: </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final verifyOrder = VerifyOrder(); // VerifyOrder | 

try {
    final result = api_instance.orderApiV1ManagerVerifyCreate(orderUuid, verifyOrder);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->orderApiV1ManagerVerifyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderUuid** | **String**|  | 
 **verifyOrder** | [**VerifyOrder**](VerifyOrder.md)|  | 

### Return type

[**OrderDetail**](OrderDetail.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsApiV1WalletBalanceRetrieve**
> WalletBalance walletsApiV1WalletBalanceRetrieve()

دریافت موجودی کیف پول

<div dir=\"rtl\" style=\"text-align: right;\">  موجودی کیف پول فروشنده  ## توضیحات  این endpoint موجودی کیف پول فروشنده را برمی‌گرداند. کیف پول برای پرداخت هزینه ارسال دیجی‌اکسپرس استفاده می‌شود. هنگام ثبت مرسوله دیجی‌اکسپرس، هزینه ارسال به‌صورت خودکار از کیف پول کسر می‌شود.  نیاز به **API_KEY** فروشنده دارد.  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();

try {
    final result = api_instance.walletsApiV1WalletBalanceRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->walletsApiV1WalletBalanceRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WalletBalance**](WalletBalance.md)

### Authorization

[MerchantAPIKeyAuth](../README.md#MerchantAPIKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

