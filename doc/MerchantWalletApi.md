# openapi.api.MerchantWalletApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://bwdk-backend.digify.shop*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletsApiV1WalletBalanceRetrieve**](MerchantWalletApi.md#walletsapiv1walletbalanceretrieve) | **GET** /wallets/api/v1/wallet-balance/ | Get Wallet Balance


# **walletsApiV1WalletBalanceRetrieve**
> WalletBalance walletsApiV1WalletBalanceRetrieve()

Get Wallet Balance

<div dir=\"rtl\" style=\"text-align: right;\">  موجودی کیف پول فروشنده  ## توضیحات  این endpoint موجودی کیف پول فروشنده را برمی‌گرداند. کیف پول برای پرداخت هزینه ارسال دیجی‌اکسپرس استفاده می‌شود. هنگام ثبت مرسوله دیجی‌اکسپرس، هزینه ارسال به‌صورت خودکار از کیف پول کسر می‌شود.  نیاز به **API_KEY** فروشنده دارد.  </div> 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: MerchantAPIKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MerchantWalletApi();

try {
    final result = api_instance.walletsApiV1WalletBalanceRetrieve();
    print(result);
} catch (e) {
    print('Exception when calling MerchantWalletApi->walletsApiV1WalletBalanceRetrieve: $e\n');
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

