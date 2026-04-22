# BWDK Dart SDK — Integration Guide for Agents

You are integrating **BWDK (Buy With DigiKala)** into a Dart server project (Shelf / Conduit / server-side Flutter) via this SDK. Read this file **first**, then consult the companion references below.

## BWDK constants

- **Host:** `https://bwdk-backend.digify.shop`
- **Auth scheme:** `MerchantAPIKeyAuth` — header `Authorization: <api_key>`.
- **Main API class:** `DefaultApi`.
- **Package name:** `openapi` (default from the `dart` generator).
- **Dart:** 2.12+.

## Companion references

| File                     | When to read                                                 |
|--------------------------|--------------------------------------------------------------|
| `README.md`              | `pubspec.yaml` dependency snippet and "Getting Started" example. Follow it verbatim. |
| `FLOWCHART.md`           | Canonical order state machine. All callback/webhook branching MUST match these state names. |
| `doc/DefaultApi.md`      | Exact method names and signatures per endpoint.              |
| `doc/*.md`               | Per-model reference (e.g. `doc/OrderCreate.md`).             |

Note: the Dart generator writes reference files under `doc/` (not `docs/`).

Do **not** duplicate install or method-signature details here — fetch `README.md`.

## Minimal wrapper pattern

```dart
import 'package:openapi/api.dart';

defaultApiClient.basePath = 'https://bwdk-backend.digify.shop';
defaultApiClient
    .getAuthentication<ApiKeyAuth>('MerchantAPIKeyAuth')
    .apiKey = Platform.environment['BWDK_API_KEY']!;

final api = DefaultApi();
final order = await api.orderApiV1CreateOrderCreate(payload);
```

Method names are camelCase and OpenAPI-generated (e.g. `orderApiV1CreateOrderCreate`, `orderApiV1ManagerVerifyCreate`). Look them up in `doc/DefaultApi.md`; do **not** guess.

## Integration invariants

1. **SDK only.** Never call BWDK with `package:http` or `dio` directly for BWDK endpoints.
2. **Callback flow.** After payment, BWDK redirects the customer to your `callback_url`. Load the order (`orderApiV1ManagerRetrieve`), switch on `order.status` per `FLOWCHART.md`, then call `orderApiV1ManagerVerifyCreate` — `verify` is mandatory before `SHIPPED`.
3. **Errors.** Catch `ApiException`; inspect `.code` (HTTP status) and `.message`. Retry only on transport errors, never on 4xx.
4. **Pinning.** In `pubspec.yaml`, pin the git ref to a `vX.Y.Z` tag, not to `main`.

## Project conventions

- Configure `defaultApiClient` once at boot; don't repeat per request.
- In server-side Flutter, keep the SDK out of UI packages — wrap it in a separate domain layer.
- Prefer the generated `async` / `Future`-returning methods; the callback-style is deprecated.
