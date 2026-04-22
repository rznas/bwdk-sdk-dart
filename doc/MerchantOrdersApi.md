# openapi.api.MerchantOrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://bwdk-backend.digify.shop*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orderApiV1CreateOrderCreate**](MerchantOrdersApi.md#orderapiv1createordercreate) | **POST** /order/api/v1/create-order/ | ساخت سفارش
[**orderApiV1ManagerList**](MerchantOrdersApi.md#orderapiv1managerlist) | **GET** /order/api/v1/manager/ | لیست سفارشات
[**orderApiV1ManagerPaidList**](MerchantOrdersApi.md#orderapiv1managerpaidlist) | **GET** /order/api/v1/manager/paid/ | سفارش پرداخت‌شده و تایید‌نشده
[**orderApiV1ManagerRefundCreate**](MerchantOrdersApi.md#orderapiv1managerrefundcreate) | **POST** /order/api/v1/manager/{order_uuid}/refund/ | بازگشت سفارش
[**orderApiV1ManagerRetrieve**](MerchantOrdersApi.md#orderapiv1managerretrieve) | **GET** /order/api/v1/manager/{order_uuid}/ | دریافت سفارش
[**orderApiV1ManagerUpdateStatusUpdate**](MerchantOrdersApi.md#orderapiv1managerupdatestatusupdate) | **PUT** /order/api/v1/manager/{order_uuid}/update-status/ | Update Order Status
[**orderApiV1ManagerVerifyCreate**](MerchantOrdersApi.md#orderapiv1managerverifycreate) | **POST** /order/api/v1/manager/{order_uuid}/verify/ | تایید سفارش


# **orderApiV1CreateOrderCreate**
> OrderCreateResponse orderApiV1CreateOrderCreate(orderCreate)

ساخت سفارش

<div dir=\"rtl\" style=\"text-align: right;\">  ساخت سفارش جدید در سیستم BWDK  ## توضیحات  این endpoint برای ایجاد یک سفارش جدید در سیستم خرید با دیجی‌کالا استفاده می‌شود. در این درخواست باید اطلاعات سفارش، اقلام سبد خرید، و آدرس callback شامل شود.  برای شروع ارتباط با سرویس‌های **خرید با دیجی‌کالا** شما باید دارای **API_KEY** باشید که این مورد از سمت تیم دیجی‌فای در اختیار شما قرار خواهد گرفت.  ### روند کاری  **مرحله ۱: درخواست ساخت سفارش**  کاربر پس از انتخاب کالاهای خود در سبد خرید، بر روی دکمه **خرید با دیجی‌کالا** کلیک می‌کند و بک‌اند مرچنت درخواستی برای ساخت سفارش BWDK دریافت می‌کند. در این مرحله اولین درخواست خود را به بک‌اند BWDK ارسال می‌نمایید:  BWDK یک سفارش جدید برای مرچنت با وضعیت **INITIAL** ایجاد می‌کند و **order_uuid** را جنریت می‌کند. آدرس **order_start_url** نقطه شروع مسیر تکمیل سفارش است (انتخاب آدرس، شیپینگ، پکینگ، پرداخت و غیره).  **مرحله ۲: بررسی نهایی سفارش پیش از تأیید**  پس از اینکه مشتری فرآیند پرداخت را تکمیل کرد و به **callback_url** هدایت شد، بک‌اند مرچنت باید پیش از فراخوانی verify، یک‌بار سفارش را دریافت کرده و مبالغ نهایی (شامل هزینه کالاها، شیپینگ، تخفیف‌ها و جمع کل) را با اطلاعات سمت مرچنت تطبیق دهد تا از صحت تراکنش اطمینان حاصل شود.  **مرحله ۳: تأیید سفارش**  پس از تطبیق موفق مبالغ، درخواست verify ارسال می‌شود تا سفارش نهایی و آماده ارسال گردد. <br> </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant C as مشتری     participant PG as درگاه پرداخت      M->>API: POST /api/v1/orders/create     Note over M,API: شناسه سفارش, کالاها, مبلغ, callback_url     API-->>M: {لینک شروع سفارش, شناسه سفارش}      M->>C: تغییر مسیر به لینک شروع      C->>API: تکمیل درخواست خرید توسط مشتری     API->>PG: شروع فرآیند پرداخت     PG-->>C: نتیجه پرداخت     PG->>API: تأیید پرداخت     API-->>C: تغییر مسیر به callback_url      M->>API: GET /api/v1/orders/manager/{uuid}     Note over M,API: بررسی نهایی مبالغ سفارش     API-->>M: اطلاعات سفارش (مبالغ، اقلام، وضعیت)      M->>API: POST /api/v1/orders/manager/{uuid}/verify     Note over M,API: {شناسه منحصربفرد فروشنده}     API-->>M: سفارش تأیید شد و آماده ارسال است ```  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MerchantOrdersApi();
final orderCreate = OrderCreate(); // OrderCreate | 

try {
    final result = api_instance.orderApiV1CreateOrderCreate(orderCreate);
    print(result);
} catch (e) {
    print('Exception when calling MerchantOrdersApi->orderApiV1CreateOrderCreate: $e\n');
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

final api_instance = MerchantOrdersApi();
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
final status = 56; // int | * `1` - اولیه * `2` - شروع شده * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - پرداخت‌شده توسط کاربر * `8` - پرداخت موفیت آمیز نبود * `9` - تأیید شده توسط فروشگاه * `10` - تأیید توسط فروشگاه ناموفق بود * `11` - ناموفق از سوی فروشگاه * `12` - لغوشده توسط فروشگاه * `13` - درخواست بازگشت وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگشت وجه به فروشگاه پس از عدم تأیید توسط فروشگاه * `15` - درخواست بازگشت وجه به مشتری پس از ناموفق بودن توسط فروشگاه * `16` - بازپرداخت به فروشگاه پس از لغو توسط فروشگاه * `17` - بازپرداخت تکمیل شد * `18` - زمان انقضا گذشته است * `19` - تحویل شده * `20` - جمع اوری شده و در حال ارسال
final statuses = statuses_example; // String | 
final todayPickup = true; // bool | 

try {
    final result = api_instance.orderApiV1ManagerList(cities, createdAt, cursor, orderIds, ordering, paymentTypes, provinces, referenceCode, search, shippingTypes, status, statuses, todayPickup);
    print(result);
} catch (e) {
    print('Exception when calling MerchantOrdersApi->orderApiV1ManagerList: $e\n');
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
 **status** | **int**| * `1` - اولیه * `2` - شروع شده * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - پرداخت‌شده توسط کاربر * `8` - پرداخت موفیت آمیز نبود * `9` - تأیید شده توسط فروشگاه * `10` - تأیید توسط فروشگاه ناموفق بود * `11` - ناموفق از سوی فروشگاه * `12` - لغوشده توسط فروشگاه * `13` - درخواست بازگشت وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگشت وجه به فروشگاه پس از عدم تأیید توسط فروشگاه * `15` - درخواست بازگشت وجه به مشتری پس از ناموفق بودن توسط فروشگاه * `16` - بازپرداخت به فروشگاه پس از لغو توسط فروشگاه * `17` - بازپرداخت تکمیل شد * `18` - زمان انقضا گذشته است * `19` - تحویل شده * `20` - جمع اوری شده و در حال ارسال | [optional] 
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

final api_instance = MerchantOrdersApi();
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
final status = 56; // int | * `1` - اولیه * `2` - شروع شده * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - پرداخت‌شده توسط کاربر * `8` - پرداخت موفیت آمیز نبود * `9` - تأیید شده توسط فروشگاه * `10` - تأیید توسط فروشگاه ناموفق بود * `11` - ناموفق از سوی فروشگاه * `12` - لغوشده توسط فروشگاه * `13` - درخواست بازگشت وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگشت وجه به فروشگاه پس از عدم تأیید توسط فروشگاه * `15` - درخواست بازگشت وجه به مشتری پس از ناموفق بودن توسط فروشگاه * `16` - بازپرداخت به فروشگاه پس از لغو توسط فروشگاه * `17` - بازپرداخت تکمیل شد * `18` - زمان انقضا گذشته است * `19` - تحویل شده * `20` - جمع اوری شده و در حال ارسال
final statuses = statuses_example; // String | 
final todayPickup = true; // bool | 

try {
    final result = api_instance.orderApiV1ManagerPaidList(cities, createdAt, cursor, orderIds, ordering, paymentTypes, provinces, referenceCode, search, shippingTypes, status, statuses, todayPickup);
    print(result);
} catch (e) {
    print('Exception when calling MerchantOrdersApi->orderApiV1ManagerPaidList: $e\n');
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
 **status** | **int**| * `1` - اولیه * `2` - شروع شده * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - پرداخت‌شده توسط کاربر * `8` - پرداخت موفیت آمیز نبود * `9` - تأیید شده توسط فروشگاه * `10` - تأیید توسط فروشگاه ناموفق بود * `11` - ناموفق از سوی فروشگاه * `12` - لغوشده توسط فروشگاه * `13` - درخواست بازگشت وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگشت وجه به فروشگاه پس از عدم تأیید توسط فروشگاه * `15` - درخواست بازگشت وجه به مشتری پس از ناموفق بودن توسط فروشگاه * `16` - بازپرداخت به فروشگاه پس از لغو توسط فروشگاه * `17` - بازپرداخت تکمیل شد * `18` - زمان انقضا گذشته است * `19` - تحویل شده * `20` - جمع اوری شده و در حال ارسال | [optional] 
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

final api_instance = MerchantOrdersApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final refundOrder = RefundOrder(); // RefundOrder | 

try {
    final result = api_instance.orderApiV1ManagerRefundCreate(orderUuid, refundOrder);
    print(result);
} catch (e) {
    print('Exception when calling MerchantOrdersApi->orderApiV1ManagerRefundCreate: $e\n');
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

final api_instance = MerchantOrdersApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final result = api_instance.orderApiV1ManagerRetrieve(orderUuid);
    print(result);
} catch (e) {
    print('Exception when calling MerchantOrdersApi->orderApiV1ManagerRetrieve: $e\n');
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

# **orderApiV1ManagerUpdateStatusUpdate**
> OrderDetail orderApiV1ManagerUpdateStatusUpdate(orderUuid, updateOrderStatus)

Update Order Status

<div dir=\"rtl\" style=\"text-align: right;\">  بروزرسانی وضعیت سفارش  ## توضیحات  این endpoint به فروشنده امکان می‌دهد وضعیت یک سفارش را به‌صورت مستقیم تغییر دهد. این endpoint برای مواردی مانند علامت‌گذاری سفارش به‌عنوان «ارسال شده» یا «تحویل داده شده» توسط فروشنده استفاده می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## وضعیت‌های مجاز  * **DELIVERED**: تحویل شد * **DISPATCHED**: ارسال شد * سایر وضعیت‌های تعریف‌شده در سیستم  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API      M->>API: PUT /order/api/v1/manager/{order_uuid}/update-status/     Note over M,API: Header: X-API-KEY<br/>{status: \"DELIVERED\"}      alt وضعیت معتبر است         API-->>M: 200 موفق         Note over API,M: اطلاعات کامل سفارش با وضعیت جدید     else وضعیت نامعتبر است         API-->>M: 400 خطا         Note over API,M: {error: \"invalid status\"}     end ``` 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MerchantOrdersApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateOrderStatus = UpdateOrderStatus(); // UpdateOrderStatus | 

try {
    final result = api_instance.orderApiV1ManagerUpdateStatusUpdate(orderUuid, updateOrderStatus);
    print(result);
} catch (e) {
    print('Exception when calling MerchantOrdersApi->orderApiV1ManagerUpdateStatusUpdate: $e\n');
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

final api_instance = MerchantOrdersApi();
final orderUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final verifyOrder = VerifyOrder(); // VerifyOrder | 

try {
    final result = api_instance.orderApiV1ManagerVerifyCreate(orderUuid, verifyOrder);
    print(result);
} catch (e) {
    print('Exception when calling MerchantOrdersApi->orderApiV1ManagerVerifyCreate: $e\n');
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

