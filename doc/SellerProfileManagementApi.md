# openapi.api.SellerProfileManagementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://bwdk-backend.digify.shop*

Method | HTTP request | Description
------------- | ------------- | -------------
[**merchantApiV1AuthStatusRetrieve**](SellerProfileManagementApi.md#merchantapiv1authstatusretrieve) | **GET** /merchant/api/v1/auth/status/ | وضعیت لاگین بودن


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

final api_instance = SellerProfileManagementApi();

try {
    final result = api_instance.merchantApiV1AuthStatusRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling SellerProfileManagementApi->merchantApiV1AuthStatusRetrieve: $e\n');
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

