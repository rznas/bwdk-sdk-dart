//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// وضعیت لاگین بودن
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  بررسی وضعیت احراز هویت فروشنده  ## توضیحات  این endpoint برای بررسی اعتبار **API_KEY** فروشنده استفاده می‌شود. اگر کلید معتبر باشد، پاسخ `is_authenticated: true` برمی‌گردد. از این endpoint برای تأیید صحت کلید API قبل از شروع عملیات استفاده کنید.  نیاز به **API_KEY** فروشنده دارد (فقط Header لازم است، بدنه درخواست ندارد).  </div> 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> merchantApiV1AuthStatusRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/merchant/api/v1/auth/status/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// وضعیت لاگین بودن
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  بررسی وضعیت احراز هویت فروشنده  ## توضیحات  این endpoint برای بررسی اعتبار **API_KEY** فروشنده استفاده می‌شود. اگر کلید معتبر باشد، پاسخ `is_authenticated: true` برمی‌گردد. از این endpoint برای تأیید صحت کلید API قبل از شروع عملیات استفاده کنید.  نیاز به **API_KEY** فروشنده دارد (فقط Header لازم است، بدنه درخواست ندارد).  </div> 
  Future<AuthStatusResponse?> merchantApiV1AuthStatusRetrieve() async {
    final response = await merchantApiV1AuthStatusRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthStatusResponse',) as AuthStatusResponse;
    
    }
    return null;
  }

  /// ساخت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  ساخت سفارش جدید در سیستم BWDK  ## توضیحات  این endpoint برای ایجاد یک سفارش جدید در سیستم خرید با دیجی‌کالا استفاده می‌شود. در این درخواست باید اطلاعات سفارش، اقلام سبد خرید، و آدرس callback شامل شود.  برای شروع ارتباط با سرویس‌های **خرید با دیجی‌کالا** شما باید دارای **API_KEY** باشید که این مورد از سمت تیم دیجی‌فای در اختیار شما قرار خواهد گرفت.  ### روند کاری  **مرحله ۱: درخواست ساخت سفارش**  کاربر پس از انتخاب کالاهای خود در سبد خرید، بر روی دکمه **خرید با دیجی‌کالا** کلیک می‌کند و بک‌اند مرچنت درخواستی برای ساخت سفارش BWDK دریافت می‌کند. در این مرحله اولین درخواست خود را به بک‌اند BWDK ارسال می‌نمایید:  BWDK یک سفارش جدید برای مرچنت با وضعیت **INITIAL** ایجاد می‌کند و **order_uuid** را جنریت می‌کند. آدرس **order_start_url** نقطه شروع مسیر تکمیل سفارش است (انتخاب آدرس، شیپینگ، پکینگ، پرداخت و غیره). <br> </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant C as مشتری     participant PG as درگاه پرداخت      M->>API: POST /api/v1/orders/create     Note over M,API: شناسه سفارش, کالاها, مبلغ, callback_url     API-->>M: {لینک شروع سفارش, شناسه سفارش}      M->>C: تغییر مسیر به لینک شروع      C->>API: تکمیل درخواست خرید توسط مشتری     API->>PG: شروع فرآیند پرداخت     PG-->>C: نتیجه پرداخت     PG->>API: تأیید پرداخت     API-->>C: تغییر مسیر به callback_url      M->>API: POST /api/v1/orders/manager/{uuid}/verify     Note over M,API: {شناسه منحصربفرد فروشنده}     API-->>M: سفارش تأیید شد و آماده ارسال است ```  </div> 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderCreate] orderCreate (required):
  Future<Response> orderApiV1CreateOrderCreateWithHttpInfo(OrderCreate orderCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/create-order/';

    // ignore: prefer_final_locals
    Object? postBody = orderCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ساخت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  ساخت سفارش جدید در سیستم BWDK  ## توضیحات  این endpoint برای ایجاد یک سفارش جدید در سیستم خرید با دیجی‌کالا استفاده می‌شود. در این درخواست باید اطلاعات سفارش، اقلام سبد خرید، و آدرس callback شامل شود.  برای شروع ارتباط با سرویس‌های **خرید با دیجی‌کالا** شما باید دارای **API_KEY** باشید که این مورد از سمت تیم دیجی‌فای در اختیار شما قرار خواهد گرفت.  ### روند کاری  **مرحله ۱: درخواست ساخت سفارش**  کاربر پس از انتخاب کالاهای خود در سبد خرید، بر روی دکمه **خرید با دیجی‌کالا** کلیک می‌کند و بک‌اند مرچنت درخواستی برای ساخت سفارش BWDK دریافت می‌کند. در این مرحله اولین درخواست خود را به بک‌اند BWDK ارسال می‌نمایید:  BWDK یک سفارش جدید برای مرچنت با وضعیت **INITIAL** ایجاد می‌کند و **order_uuid** را جنریت می‌کند. آدرس **order_start_url** نقطه شروع مسیر تکمیل سفارش است (انتخاب آدرس، شیپینگ، پکینگ، پرداخت و غیره). <br> </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant C as مشتری     participant PG as درگاه پرداخت      M->>API: POST /api/v1/orders/create     Note over M,API: شناسه سفارش, کالاها, مبلغ, callback_url     API-->>M: {لینک شروع سفارش, شناسه سفارش}      M->>C: تغییر مسیر به لینک شروع      C->>API: تکمیل درخواست خرید توسط مشتری     API->>PG: شروع فرآیند پرداخت     PG-->>C: نتیجه پرداخت     PG->>API: تأیید پرداخت     API-->>C: تغییر مسیر به callback_url      M->>API: POST /api/v1/orders/manager/{uuid}/verify     Note over M,API: {شناسه منحصربفرد فروشنده}     API-->>M: سفارش تأیید شد و آماده ارسال است ```  </div> 
  ///
  /// Parameters:
  ///
  /// * [OrderCreate] orderCreate (required):
  Future<OrderCreateResponse?> orderApiV1CreateOrderCreate(OrderCreate orderCreate,) async {
    final response = await orderApiV1CreateOrderCreateWithHttpInfo(orderCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderCreateResponse',) as OrderCreateResponse;
    
    }
    return null;
  }

  /// لغو ارسال سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  لغو مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای لغو یک مرسوله ثبت‌شده در سرویس دیجی‌اکسپرس استفاده می‌شود. پس از لغو موفق، مرسوله از صف ارسال خارج می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## شرایط لغو  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت **در انتظار تحویل به پیک** (Request for Pickup) باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/cancel-shipment/     Note over M,API: Header: X-API-KEY (بدون بدنه)      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else مرسوله قابل لغو نیست         API-->>M: 400 خطا         Note over API,M: {error: \"...\"}     else لغو موفق         API->>DX: لغو مرسوله         DX-->>API: تأیید لغو         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  Future<Response> orderApiV1ManagerCancelShipmentCreateWithHttpInfo(String orderUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/{order_uuid}/cancel-shipment/'
      .replaceAll('{order_uuid}', orderUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// لغو ارسال سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  لغو مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای لغو یک مرسوله ثبت‌شده در سرویس دیجی‌اکسپرس استفاده می‌شود. پس از لغو موفق، مرسوله از صف ارسال خارج می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## شرایط لغو  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت **در انتظار تحویل به پیک** (Request for Pickup) باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/cancel-shipment/     Note over M,API: Header: X-API-KEY (بدون بدنه)      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else مرسوله قابل لغو نیست         API-->>M: 400 خطا         Note over API,M: {error: \"...\"}     else لغو موفق         API->>DX: لغو مرسوله         DX-->>API: تأیید لغو         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  Future<MerchantOrderCancelShipmentResponse?> orderApiV1ManagerCancelShipmentCreate(String orderUuid,) async {
    final response = await orderApiV1ManagerCancelShipmentCreateWithHttpInfo(orderUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MerchantOrderCancelShipmentResponse',) as MerchantOrderCancelShipmentResponse;
    
    }
    return null;
  }

  /// تغییر روش ارسال
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  تغییر روش ارسال سفارش  ## توضیحات  این endpoint به فروشنده اجازه می‌دهد روش ارسال یک سفارش را تغییر دهد. این عملیات معمولاً زمانی استفاده می‌شود که فروشنده بخواهد از DigiExpress به روش ارسال پیش‌فرض (یا بالعکس) تغییر دهد.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **updated_shipping**: شناسه روش ارسال جدید * **preparation_time** (اختیاری): زمان آماده‌سازی (روز) برای DigiExpress  </div> 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [OrderDetail] orderDetail (required):
  Future<Response> orderApiV1ManagerChangeShippingMethodUpdateWithHttpInfo(String orderUuid, OrderDetail orderDetail,) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/{order_uuid}/change-shipping-method/'
      .replaceAll('{order_uuid}', orderUuid);

    // ignore: prefer_final_locals
    Object? postBody = orderDetail;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// تغییر روش ارسال
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  تغییر روش ارسال سفارش  ## توضیحات  این endpoint به فروشنده اجازه می‌دهد روش ارسال یک سفارش را تغییر دهد. این عملیات معمولاً زمانی استفاده می‌شود که فروشنده بخواهد از DigiExpress به روش ارسال پیش‌فرض (یا بالعکس) تغییر دهد.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **updated_shipping**: شناسه روش ارسال جدید * **preparation_time** (اختیاری): زمان آماده‌سازی (روز) برای DigiExpress  </div> 
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [OrderDetail] orderDetail (required):
  Future<OrderDetail?> orderApiV1ManagerChangeShippingMethodUpdate(String orderUuid, OrderDetail orderDetail,) async {
    final response = await orderApiV1ManagerChangeShippingMethodUpdateWithHttpInfo(orderUuid, orderDetail,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDetail',) as OrderDetail;
    
    }
    return null;
  }

  /// لیست سفارشات
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  لیست سفارشات فروشنده  ## توضیحات  این endpoint لیست تمام سفارشات مرتبط با فروشنده را با امکان فیلتر، جستجو و مرتب‌سازی برمی‌گرداند. نتایج به صورت صفحه‌بندی‌شده (Cursor Pagination) ارسال می‌شوند و به ترتیب جدیدترین سفارش اول مرتب می‌شوند.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای فیلتر  * **status**: وضعیت سفارش (INITIAL, PENDING, PAID_BY_USER, VERIFIED_BY_MERCHANT, ...) * **created_at__gte / created_at__lte**: فیلتر بر اساس تاریخ ایجاد * **search**: جستجو در شماره تلفن مشتری، نام، کد مرجع، شناسه سفارش مرچنت * **ordering**: مرتب‌سازی بر اساس created_at, final_amount, status, merchant_order_id  </div> 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cities:
  ///
  /// * [DateTime] createdAt:
  ///
  /// * [String] cursor:
  ///   مقدار نشانگر صفحه‌بندی.
  ///
  /// * [String] orderIds:
  ///
  /// * [String] ordering:
  ///   کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود.
  ///
  /// * [String] paymentTypes:
  ///
  /// * [String] provinces:
  ///
  /// * [String] referenceCode:
  ///
  /// * [String] search:
  ///   یک عبارت جستجو.
  ///
  /// * [String] shippingTypes:
  ///
  /// * [int] status:
  ///   * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله
  ///
  /// * [String] statuses:
  ///
  /// * [bool] todayPickup:
  Future<Response> orderApiV1ManagerListWithHttpInfo({ String? cities, DateTime? createdAt, String? cursor, String? orderIds, String? ordering, String? paymentTypes, String? provinces, String? referenceCode, String? search, String? shippingTypes, int? status, String? statuses, bool? todayPickup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cities != null) {
      queryParams.addAll(_queryParams('', 'cities', cities));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
    if (orderIds != null) {
      queryParams.addAll(_queryParams('', 'order_ids', orderIds));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (paymentTypes != null) {
      queryParams.addAll(_queryParams('', 'payment_types', paymentTypes));
    }
    if (provinces != null) {
      queryParams.addAll(_queryParams('', 'provinces', provinces));
    }
    if (referenceCode != null) {
      queryParams.addAll(_queryParams('', 'reference_code', referenceCode));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (shippingTypes != null) {
      queryParams.addAll(_queryParams('', 'shipping_types', shippingTypes));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (statuses != null) {
      queryParams.addAll(_queryParams('', 'statuses', statuses));
    }
    if (todayPickup != null) {
      queryParams.addAll(_queryParams('', 'today_pickup', todayPickup));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// لیست سفارشات
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  لیست سفارشات فروشنده  ## توضیحات  این endpoint لیست تمام سفارشات مرتبط با فروشنده را با امکان فیلتر، جستجو و مرتب‌سازی برمی‌گرداند. نتایج به صورت صفحه‌بندی‌شده (Cursor Pagination) ارسال می‌شوند و به ترتیب جدیدترین سفارش اول مرتب می‌شوند.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای فیلتر  * **status**: وضعیت سفارش (INITIAL, PENDING, PAID_BY_USER, VERIFIED_BY_MERCHANT, ...) * **created_at__gte / created_at__lte**: فیلتر بر اساس تاریخ ایجاد * **search**: جستجو در شماره تلفن مشتری، نام، کد مرجع، شناسه سفارش مرچنت * **ordering**: مرتب‌سازی بر اساس created_at, final_amount, status, merchant_order_id  </div> 
  ///
  /// Parameters:
  ///
  /// * [String] cities:
  ///
  /// * [DateTime] createdAt:
  ///
  /// * [String] cursor:
  ///   مقدار نشانگر صفحه‌بندی.
  ///
  /// * [String] orderIds:
  ///
  /// * [String] ordering:
  ///   کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود.
  ///
  /// * [String] paymentTypes:
  ///
  /// * [String] provinces:
  ///
  /// * [String] referenceCode:
  ///
  /// * [String] search:
  ///   یک عبارت جستجو.
  ///
  /// * [String] shippingTypes:
  ///
  /// * [int] status:
  ///   * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله
  ///
  /// * [String] statuses:
  ///
  /// * [bool] todayPickup:
  Future<PaginatedOrderDetailList?> orderApiV1ManagerList({ String? cities, DateTime? createdAt, String? cursor, String? orderIds, String? ordering, String? paymentTypes, String? provinces, String? referenceCode, String? search, String? shippingTypes, int? status, String? statuses, bool? todayPickup, }) async {
    final response = await orderApiV1ManagerListWithHttpInfo( cities: cities, createdAt: createdAt, cursor: cursor, orderIds: orderIds, ordering: ordering, paymentTypes: paymentTypes, provinces: provinces, referenceCode: referenceCode, search: search, shippingTypes: shippingTypes, status: status, statuses: statuses, todayPickup: todayPickup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedOrderDetailList',) as PaginatedOrderDetailList;
    
    }
    return null;
  }

  /// سفارش پرداخت‌شده و تایید‌نشده
  ///
  /// لیست تمامی سفارشاتی که توسط کاربر پرداخت شده اند ولی توسط فروشنده تایید نشده اند. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cities:
  ///
  /// * [DateTime] createdAt:
  ///
  /// * [String] cursor:
  ///   مقدار نشانگر صفحه‌بندی.
  ///
  /// * [String] orderIds:
  ///
  /// * [String] ordering:
  ///   کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود.
  ///
  /// * [String] paymentTypes:
  ///
  /// * [String] provinces:
  ///
  /// * [String] referenceCode:
  ///
  /// * [String] search:
  ///   یک عبارت جستجو.
  ///
  /// * [String] shippingTypes:
  ///
  /// * [int] status:
  ///   * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله
  ///
  /// * [String] statuses:
  ///
  /// * [bool] todayPickup:
  Future<Response> orderApiV1ManagerPaidListWithHttpInfo({ String? cities, DateTime? createdAt, String? cursor, String? orderIds, String? ordering, String? paymentTypes, String? provinces, String? referenceCode, String? search, String? shippingTypes, int? status, String? statuses, bool? todayPickup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/paid/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cities != null) {
      queryParams.addAll(_queryParams('', 'cities', cities));
    }
    if (createdAt != null) {
      queryParams.addAll(_queryParams('', 'created_at', createdAt));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
    if (orderIds != null) {
      queryParams.addAll(_queryParams('', 'order_ids', orderIds));
    }
    if (ordering != null) {
      queryParams.addAll(_queryParams('', 'ordering', ordering));
    }
    if (paymentTypes != null) {
      queryParams.addAll(_queryParams('', 'payment_types', paymentTypes));
    }
    if (provinces != null) {
      queryParams.addAll(_queryParams('', 'provinces', provinces));
    }
    if (referenceCode != null) {
      queryParams.addAll(_queryParams('', 'reference_code', referenceCode));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (shippingTypes != null) {
      queryParams.addAll(_queryParams('', 'shipping_types', shippingTypes));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (statuses != null) {
      queryParams.addAll(_queryParams('', 'statuses', statuses));
    }
    if (todayPickup != null) {
      queryParams.addAll(_queryParams('', 'today_pickup', todayPickup));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// سفارش پرداخت‌شده و تایید‌نشده
  ///
  /// لیست تمامی سفارشاتی که توسط کاربر پرداخت شده اند ولی توسط فروشنده تایید نشده اند. 
  ///
  /// Parameters:
  ///
  /// * [String] cities:
  ///
  /// * [DateTime] createdAt:
  ///
  /// * [String] cursor:
  ///   مقدار نشانگر صفحه‌بندی.
  ///
  /// * [String] orderIds:
  ///
  /// * [String] ordering:
  ///   کدام فیلد باید هنگام مرتب‌سازی نتایج استفاده شود.
  ///
  /// * [String] paymentTypes:
  ///
  /// * [String] provinces:
  ///
  /// * [String] referenceCode:
  ///
  /// * [String] search:
  ///   یک عبارت جستجو.
  ///
  /// * [String] shippingTypes:
  ///
  /// * [int] status:
  ///   * `1` - اولیه * `2` - شروع در * `3` - در انتظار * `4` - در انتظار درگاه * `5` - منقضی شده * `6` - لغو شده * `7` - ممنوع شده توسط ما * `8` - ناموفق در پرداخت * `9` - تأیید شده توسط فروشنده * `10` - ناموفق در تأیید توسط فروشنده * `11` - فروشگاه * `12` - لغو شده توسط فروشنده * `13` - درخواست بازگرداندن وجه به مشتری به دلیل درخواست مشتری * `14` - درخواست بازگرداندن وجه به فروشنده پس از ناموفقی در تأیید توسط فروشنده * `15` - درخواست بازگرداندن وجه به مشتری پس از ناموفقی توسط فروشنده * `16` - بازگردانده شده به فروشنده پس از لغو توسط فروشنده * `17` - بازگرداندن وجه تکمیل شد * `18` - زمان مجاز برای منقضی کردن گذشته است * `19` - تحویل نشده * `20` - مرسوله
  ///
  /// * [String] statuses:
  ///
  /// * [bool] todayPickup:
  Future<PaginatedMerchantPaidOrderListList?> orderApiV1ManagerPaidList({ String? cities, DateTime? createdAt, String? cursor, String? orderIds, String? ordering, String? paymentTypes, String? provinces, String? referenceCode, String? search, String? shippingTypes, int? status, String? statuses, bool? todayPickup, }) async {
    final response = await orderApiV1ManagerPaidListWithHttpInfo( cities: cities, createdAt: createdAt, cursor: cursor, orderIds: orderIds, ordering: ordering, paymentTypes: paymentTypes, provinces: provinces, referenceCode: referenceCode, search: search, shippingTypes: shippingTypes, status: status, statuses: statuses, todayPickup: todayPickup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedMerchantPaidOrderListList',) as PaginatedMerchantPaidOrderListList;
    
    }
    return null;
  }

  /// بازگشت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\"> بازگشت و لغو سفارش  ## توضیحات  این endpoint برای بازگشت یا لغو سفارشی استفاده می‌شود که قبلاً پرداخت شده یا تایید شده است. در این مرحله مبلغ سفارش به کاربر بازگشت داده می‌شود و وضعیت سفارش به **REFUNDED** تغییر می‌یابد.   ## شرایط بازگشت  سفارش باید در یکی از وضعیت‌های زیر باشد تا بازگشت امکان‌پذیر باشد: * **PAID_BY_USER**: سفارش پرداخت شده است اما هنوز تایید نشده * **VERIFIED_BY_MERCHANT**: سفارش تایید شده است  سفارش نباید قبلاً بازگشت داده شده باشد.  **پاسخ خطا** - اگر سفارش در وضعیت مناسب نباشد یا قبلاً بازگشت داده شده باشد </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API      M->>API: POST /api/v1/orders/manager/{uuid}/refund     Note over M,API: {reason: \"درخواست مشتری\"}      alt سفارش قابل بازگشت نیست         API-->>M: 500 خطا         Note over API,M: {error: \"شروع بازگشت ناموفق بود.<br/>لطفاً دوباره تلاش کنید.\"}     else سفارش معتبر است         API-->>M: 200 موفق         Note over API,M: {message: \"درخواست بازگشت با<br/>موفقیت شروع شد\",<br/>order_uuid, status: 13,<br/>status_display,<br/>refund_reason}          M->>API: GET /api/v1/orders/manager/{uuid}         Note over M,API: بررسی وضعیت سفارش<br/>(endpoint جداگانه /refund/status وجود ندارد)          alt status: 17 (بازگشت تکمیل شد)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: 17,<br/>status_display: \"بازگشت تکمیل شد\",<br/>metadata.refund_tracking_code,<br/>metadata.refund_completed_at}          else status: 13 (در حال پردازش)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: 13,<br/>status_display: \"درخواست بازگشت به مشتری<br/>به دلیل درخواست<br/>مشتری\",<br/>metadata.refund_reason}          else status: قبلی (بازگشت ناموفق)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: (قبلی),<br/>metadata.refund_error,<br/>metadata.refund_failed_at}         end     end ``` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [RefundOrder] refundOrder:
  Future<Response> orderApiV1ManagerRefundCreateWithHttpInfo(String orderUuid, { RefundOrder? refundOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/{order_uuid}/refund/'
      .replaceAll('{order_uuid}', orderUuid);

    // ignore: prefer_final_locals
    Object? postBody = refundOrder;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// بازگشت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\"> بازگشت و لغو سفارش  ## توضیحات  این endpoint برای بازگشت یا لغو سفارشی استفاده می‌شود که قبلاً پرداخت شده یا تایید شده است. در این مرحله مبلغ سفارش به کاربر بازگشت داده می‌شود و وضعیت سفارش به **REFUNDED** تغییر می‌یابد.   ## شرایط بازگشت  سفارش باید در یکی از وضعیت‌های زیر باشد تا بازگشت امکان‌پذیر باشد: * **PAID_BY_USER**: سفارش پرداخت شده است اما هنوز تایید نشده * **VERIFIED_BY_MERCHANT**: سفارش تایید شده است  سفارش نباید قبلاً بازگشت داده شده باشد.  **پاسخ خطا** - اگر سفارش در وضعیت مناسب نباشد یا قبلاً بازگشت داده شده باشد </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API      M->>API: POST /api/v1/orders/manager/{uuid}/refund     Note over M,API: {reason: \"درخواست مشتری\"}      alt سفارش قابل بازگشت نیست         API-->>M: 500 خطا         Note over API,M: {error: \"شروع بازگشت ناموفق بود.<br/>لطفاً دوباره تلاش کنید.\"}     else سفارش معتبر است         API-->>M: 200 موفق         Note over API,M: {message: \"درخواست بازگشت با<br/>موفقیت شروع شد\",<br/>order_uuid, status: 13,<br/>status_display,<br/>refund_reason}          M->>API: GET /api/v1/orders/manager/{uuid}         Note over M,API: بررسی وضعیت سفارش<br/>(endpoint جداگانه /refund/status وجود ندارد)          alt status: 17 (بازگشت تکمیل شد)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: 17,<br/>status_display: \"بازگشت تکمیل شد\",<br/>metadata.refund_tracking_code,<br/>metadata.refund_completed_at}          else status: 13 (در حال پردازش)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: 13,<br/>status_display: \"درخواست بازگشت به مشتری<br/>به دلیل درخواست<br/>مشتری\",<br/>metadata.refund_reason}          else status: قبلی (بازگشت ناموفق)             API-->>M: 200 موفق             Note over API,M: {order_uuid, status: (قبلی),<br/>metadata.refund_error,<br/>metadata.refund_failed_at}         end     end ``` 
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [RefundOrder] refundOrder:
  Future<MerchantOrderRefundResponse?> orderApiV1ManagerRefundCreate(String orderUuid, { RefundOrder? refundOrder, }) async {
    final response = await orderApiV1ManagerRefundCreateWithHttpInfo(orderUuid,  refundOrder: refundOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MerchantOrderRefundResponse',) as MerchantOrderRefundResponse;
    
    }
    return null;
  }

  /// دریافت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  # مدیریت سفارشات  ## توضیحات  این endpoint برای مدیریت و مشاهده سفارشات فروشنده استفاده می‌شود.  </div> 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  Future<Response> orderApiV1ManagerRetrieveWithHttpInfo(String orderUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/{order_uuid}/'
      .replaceAll('{order_uuid}', orderUuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// دریافت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  # مدیریت سفارشات  ## توضیحات  این endpoint برای مدیریت و مشاهده سفارشات فروشنده استفاده می‌شود.  </div> 
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  Future<OrderDetail?> orderApiV1ManagerRetrieve(String orderUuid,) async {
    final response = await orderApiV1ManagerRetrieveWithHttpInfo(orderUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDetail',) as OrderDetail;
    
    }
    return null;
  }

  /// احیای ارسال سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  احیای مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای احیای (reactivate) یک مرسوله دیجی‌اکسپرس که قبلاً لغو شده یا در وضعیت غیرفعال است استفاده می‌شود. با ارسال `preparation_time` (زمان آماده‌سازی بر حسب روز)، زمان جدید آماده بودن بار تنظیم می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **preparation_time** (اختیاری، پیش‌فرض: ۲): تعداد روز تا آماده‌شدن بار برای تحویل به پیک  ## شرایط  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت قابل احیا باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/revive-shipment/     Note over M,API: Header: X-API-KEY<br/>{preparation_time: 2}      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else احیا موفق         API->>DX: احیای مرسوله با زمان جدید         DX-->>API: تأیید احیا         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [ReviveShipment] reviveShipment:
  Future<Response> orderApiV1ManagerReviveShipmentCreateWithHttpInfo(String orderUuid, { ReviveShipment? reviveShipment, }) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/{order_uuid}/revive-shipment/'
      .replaceAll('{order_uuid}', orderUuid);

    // ignore: prefer_final_locals
    Object? postBody = reviveShipment;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// احیای ارسال سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  احیای مرسوله دیجی‌اکسپرس  ## توضیحات  این endpoint برای احیای (reactivate) یک مرسوله دیجی‌اکسپرس که قبلاً لغو شده یا در وضعیت غیرفعال است استفاده می‌شود. با ارسال `preparation_time` (زمان آماده‌سازی بر حسب روز)، زمان جدید آماده بودن بار تنظیم می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## پارامترهای ورودی  * **preparation_time** (اختیاری، پیش‌فرض: ۲): تعداد روز تا آماده‌شدن بار برای تحویل به پیک  ## شرایط  * سفارش باید دارای روش ارسال **DigiExpress** باشد * مرسوله باید در وضعیت قابل احیا باشد  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API     participant DX as دیجی‌اکسپرس      M->>API: POST /order/api/v1/manager/{order_uuid}/revive-shipment/     Note over M,API: Header: X-API-KEY<br/>{preparation_time: 2}      alt روش ارسال DigiExpress نیست         API-->>M: 400 خطا         Note over API,M: {error: \"Selected shipping method is not DigiExpress\"}     else احیا موفق         API->>DX: احیای مرسوله با زمان جدید         DX-->>API: تأیید احیا         API-->>M: 200 موفق         Note over API,M: {message, order_uuid, status, status_display}     end ``` 
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [ReviveShipment] reviveShipment:
  Future<MerchantOrderReviveShipmentResponse?> orderApiV1ManagerReviveShipmentCreate(String orderUuid, { ReviveShipment? reviveShipment, }) async {
    final response = await orderApiV1ManagerReviveShipmentCreateWithHttpInfo(orderUuid,  reviveShipment: reviveShipment, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MerchantOrderReviveShipmentResponse',) as MerchantOrderReviveShipmentResponse;
    
    }
    return null;
  }

  /// به‌روزرسانی وضعیت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  بروزرسانی وضعیت سفارش  ## توضیحات  این endpoint به فروشنده امکان می‌دهد وضعیت یک سفارش را به‌صورت مستقیم تغییر دهد. این endpoint برای مواردی مانند علامت‌گذاری سفارش به‌عنوان «ارسال شده» یا «تحویل داده شده» توسط فروشنده استفاده می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## وضعیت‌های مجاز  * **DELIVERED**: تحویل شد * **DISPATCHED**: ارسال شد * سایر وضعیت‌های تعریف‌شده در سیستم  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API      M->>API: PUT /order/api/v1/manager/{order_uuid}/update-status/     Note over M,API: Header: X-API-KEY<br/>{status: \"DELIVERED\"}      alt وضعیت معتبر است         API-->>M: 200 موفق         Note over API,M: اطلاعات کامل سفارش با وضعیت جدید     else وضعیت نامعتبر است         API-->>M: 400 خطا         Note over API,M: {error: \"invalid status\"}     end ``` 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [UpdateOrderStatus] updateOrderStatus (required):
  Future<Response> orderApiV1ManagerUpdateStatusUpdateWithHttpInfo(String orderUuid, UpdateOrderStatus updateOrderStatus,) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/{order_uuid}/update-status/'
      .replaceAll('{order_uuid}', orderUuid);

    // ignore: prefer_final_locals
    Object? postBody = updateOrderStatus;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// به‌روزرسانی وضعیت سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  بروزرسانی وضعیت سفارش  ## توضیحات  این endpoint به فروشنده امکان می‌دهد وضعیت یک سفارش را به‌صورت مستقیم تغییر دهد. این endpoint برای مواردی مانند علامت‌گذاری سفارش به‌عنوان «ارسال شده» یا «تحویل داده شده» توسط فروشنده استفاده می‌شود.  نیاز به **API_KEY** فروشنده دارد.  ## وضعیت‌های مجاز  * **DELIVERED**: تحویل شد * **DISPATCHED**: ارسال شد * سایر وضعیت‌های تعریف‌شده در سیستم  </div>  ```mermaid sequenceDiagram     participant M as فروشنده     participant API as BWDK API      M->>API: PUT /order/api/v1/manager/{order_uuid}/update-status/     Note over M,API: Header: X-API-KEY<br/>{status: \"DELIVERED\"}      alt وضعیت معتبر است         API-->>M: 200 موفق         Note over API,M: اطلاعات کامل سفارش با وضعیت جدید     else وضعیت نامعتبر است         API-->>M: 400 خطا         Note over API,M: {error: \"invalid status\"}     end ``` 
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [UpdateOrderStatus] updateOrderStatus (required):
  Future<OrderDetail?> orderApiV1ManagerUpdateStatusUpdate(String orderUuid, UpdateOrderStatus updateOrderStatus,) async {
    final response = await orderApiV1ManagerUpdateStatusUpdateWithHttpInfo(orderUuid, updateOrderStatus,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDetail',) as OrderDetail;
    
    }
    return null;
  }

  /// تایید سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  تایید سفارش پس از پرداخت  ## توضیحات  پس از اتمام فرایند پرداخت توسط کاربر، مرچنت باید سفارش را تایید کند. این endpoint برای تایید و نهایی کردن سفارش پس از پرداخت موفق توسط مشتری استفاده می‌شود. در این مرحله مرچنت سفارش را تایید می‌کند و وضعیت سفارش به **VERIFIED_BY_MERCHANT** تغییر می‌یابد.  ## روند کاری  **مرحله ۲: بازگشت کاربر و دریافت نتیجه**  پس از تکمیل فرایند پرداخت (موفق یا ناموفق)، کاربر به آدرس callback_url که هنگام ساخت سفارش ارسال کرده بودید بازگردانده می‌شود. در این درخواست وضعیت سفارش به صورت query parameters ارسال می‌شود:   **Query Parameters:** * **success**: متغیر منطقی نشان‌دهنده موفق یا ناموفق بودن سفارش * **status**: وضعیت سفارش (PAID، FAILED، وغیره) * **phone_number**: شماره تلفن مشتری * **order_uuid**: شناسه یکتای سفارش * **merchant_order_id**: شناسه سفارش در سیستم مرچنت  **مرحله ۳: تایید سفارش در بک‌اند**  سپس شما باید این endpoint را فراخوانی کنید تا سفارش را تایید کنید و اطمینان حاصل کنید که سفارش موفقیت‌آمیز ثبت شده است: </div> 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [VerifyOrder] verifyOrder (required):
  Future<Response> orderApiV1ManagerVerifyCreateWithHttpInfo(String orderUuid, VerifyOrder verifyOrder,) async {
    // ignore: prefer_const_declarations
    final path = r'/order/api/v1/manager/{order_uuid}/verify/'
      .replaceAll('{order_uuid}', orderUuid);

    // ignore: prefer_final_locals
    Object? postBody = verifyOrder;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// تایید سفارش
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  تایید سفارش پس از پرداخت  ## توضیحات  پس از اتمام فرایند پرداخت توسط کاربر، مرچنت باید سفارش را تایید کند. این endpoint برای تایید و نهایی کردن سفارش پس از پرداخت موفق توسط مشتری استفاده می‌شود. در این مرحله مرچنت سفارش را تایید می‌کند و وضعیت سفارش به **VERIFIED_BY_MERCHANT** تغییر می‌یابد.  ## روند کاری  **مرحله ۲: بازگشت کاربر و دریافت نتیجه**  پس از تکمیل فرایند پرداخت (موفق یا ناموفق)، کاربر به آدرس callback_url که هنگام ساخت سفارش ارسال کرده بودید بازگردانده می‌شود. در این درخواست وضعیت سفارش به صورت query parameters ارسال می‌شود:   **Query Parameters:** * **success**: متغیر منطقی نشان‌دهنده موفق یا ناموفق بودن سفارش * **status**: وضعیت سفارش (PAID، FAILED، وغیره) * **phone_number**: شماره تلفن مشتری * **order_uuid**: شناسه یکتای سفارش * **merchant_order_id**: شناسه سفارش در سیستم مرچنت  **مرحله ۳: تایید سفارش در بک‌اند**  سپس شما باید این endpoint را فراخوانی کنید تا سفارش را تایید کنید و اطمینان حاصل کنید که سفارش موفقیت‌آمیز ثبت شده است: </div> 
  ///
  /// Parameters:
  ///
  /// * [String] orderUuid (required):
  ///
  /// * [VerifyOrder] verifyOrder (required):
  Future<OrderDetail?> orderApiV1ManagerVerifyCreate(String orderUuid, VerifyOrder verifyOrder,) async {
    final response = await orderApiV1ManagerVerifyCreateWithHttpInfo(orderUuid, verifyOrder,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrderDetail',) as OrderDetail;
    
    }
    return null;
  }

  /// دریافت موجودی کیف پول
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  موجودی کیف پول فروشنده  ## توضیحات  این endpoint موجودی کیف پول فروشنده را برمی‌گرداند. کیف پول برای پرداخت هزینه ارسال دیجی‌اکسپرس استفاده می‌شود. هنگام ثبت مرسوله دیجی‌اکسپرس، هزینه ارسال به‌صورت خودکار از کیف پول کسر می‌شود.  نیاز به **API_KEY** فروشنده دارد.  </div> 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> walletsApiV1WalletBalanceRetrieveWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/wallets/api/v1/wallet-balance/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// دریافت موجودی کیف پول
  ///
  /// <div dir=\"rtl\" style=\"text-align: right;\">  موجودی کیف پول فروشنده  ## توضیحات  این endpoint موجودی کیف پول فروشنده را برمی‌گرداند. کیف پول برای پرداخت هزینه ارسال دیجی‌اکسپرس استفاده می‌شود. هنگام ثبت مرسوله دیجی‌اکسپرس، هزینه ارسال به‌صورت خودکار از کیف پول کسر می‌شود.  نیاز به **API_KEY** فروشنده دارد.  </div> 
  Future<WalletBalance?> walletsApiV1WalletBalanceRetrieve() async {
    final response = await walletsApiV1WalletBalanceRetrieveWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WalletBalance',) as WalletBalance;
    
    }
    return null;
  }
}
