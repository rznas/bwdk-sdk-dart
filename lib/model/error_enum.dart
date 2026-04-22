//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

/// * `User is not authenticated.` - User is not authenticated. * `Order not found.` - نشان یافت نشد * `Order is not in a state where shipping can be selected.` - Order is not in a state where shipping can be selected. * `Order is not in a state where packing can be selected.` - Order is not in a state where packing can be selected. * `Failed to initiate refund. Please try again later.` - Failed to initiate refund. Please try again later. * `Order is expired or cancelled.` - Order is expired or cancelled. * `Invalid request origin.` - مبدأ نامعتبر * `Digi Express shipping method not found.` - مرسوله دیجی اکسپرس برای سفارش %s یافت نشد. * `Order address not found.` - نشان یافت نشد * `Failed to fetch Digi Express shipping time window options.` - خطا در ثبت مرسوله دیجی اکسپرس برای سفارش %s. دلیل: %s * `Address ID not found.` - نشان یافت نشد * `Failed to cancel shipment.` - Failed to cancel shipment. * `Failed to cancel shipment in third party service.` - Failed to cancel shipment in third party service. * `Shipment not found.` - نشان یافت نشد * `Selected shipping method is not eligible for cancellation.` - آیا روش ارسال پرداخت در مقصد است * `DigiExpress shipment is not in cancelable in this state` - مرسوله دیجی اکسپرس برای سفارش %s یافت نشد. * `DigiExpress shipment is not in reviveable in this state` - مرسوله دیجی اکسپرس برای سفارش %s یافت نشد. * `Failed to revive shipment in third party service.` - Failed to revive shipment in third party service. * `Selected shipping method is not eligible for revival.` - شناسه روش ارسال برای استفاده در سفارش
class ErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const ErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const userIsNotAuthenticatedPeriod = ErrorEnum._(r'User is not authenticated.');
  static const orderNotFoundPeriod = ErrorEnum._(r'Order not found.');
  static const orderIsNotInAStateWhereShippingCanBeSelectedPeriod = ErrorEnum._(r'Order is not in a state where shipping can be selected.');
  static const orderIsNotInAStateWherePackingCanBeSelectedPeriod = ErrorEnum._(r'Order is not in a state where packing can be selected.');
  static const failedToInitiateRefundPeriodPleaseTryAgainLaterPeriod = ErrorEnum._(r'Failed to initiate refund. Please try again later.');
  static const orderIsExpiredOrCancelledPeriod = ErrorEnum._(r'Order is expired or cancelled.');
  static const invalidRequestOriginPeriod = ErrorEnum._(r'Invalid request origin.');
  static const digiExpressShippingMethodNotFoundPeriod = ErrorEnum._(r'Digi Express shipping method not found.');
  static const orderAddressNotFoundPeriod = ErrorEnum._(r'Order address not found.');
  static const failedToFetchDigiExpressShippingTimeWindowOptionsPeriod = ErrorEnum._(r'Failed to fetch Digi Express shipping time window options.');
  static const addressIDNotFoundPeriod = ErrorEnum._(r'Address ID not found.');
  static const failedToCancelShipmentPeriod = ErrorEnum._(r'Failed to cancel shipment.');
  static const failedToCancelShipmentInThirdPartyServicePeriod = ErrorEnum._(r'Failed to cancel shipment in third party service.');
  static const shipmentNotFoundPeriod = ErrorEnum._(r'Shipment not found.');
  static const selectedShippingMethodIsNotEligibleForCancellationPeriod = ErrorEnum._(r'Selected shipping method is not eligible for cancellation.');
  static const digiExpressShipmentIsNotInCancelableInThisState = ErrorEnum._(r'DigiExpress shipment is not in cancelable in this state');
  static const digiExpressShipmentIsNotInReviveableInThisState = ErrorEnum._(r'DigiExpress shipment is not in reviveable in this state');
  static const failedToReviveShipmentInThirdPartyServicePeriod = ErrorEnum._(r'Failed to revive shipment in third party service.');
  static const selectedShippingMethodIsNotEligibleForRevivalPeriod = ErrorEnum._(r'Selected shipping method is not eligible for revival.');

  /// List of all possible values in this [enum][ErrorEnum].
  static const values = <ErrorEnum>[
    userIsNotAuthenticatedPeriod,
    orderNotFoundPeriod,
    orderIsNotInAStateWhereShippingCanBeSelectedPeriod,
    orderIsNotInAStateWherePackingCanBeSelectedPeriod,
    failedToInitiateRefundPeriodPleaseTryAgainLaterPeriod,
    orderIsExpiredOrCancelledPeriod,
    invalidRequestOriginPeriod,
    digiExpressShippingMethodNotFoundPeriod,
    orderAddressNotFoundPeriod,
    failedToFetchDigiExpressShippingTimeWindowOptionsPeriod,
    addressIDNotFoundPeriod,
    failedToCancelShipmentPeriod,
    failedToCancelShipmentInThirdPartyServicePeriod,
    shipmentNotFoundPeriod,
    selectedShippingMethodIsNotEligibleForCancellationPeriod,
    digiExpressShipmentIsNotInCancelableInThisState,
    digiExpressShipmentIsNotInReviveableInThisState,
    failedToReviveShipmentInThirdPartyServicePeriod,
    selectedShippingMethodIsNotEligibleForRevivalPeriod,
  ];

  static ErrorEnum? fromJson(dynamic value) => ErrorEnumTypeTransformer().decode(value);

  static List<ErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ErrorEnum] to String,
/// and [decode] dynamic data back to [ErrorEnum].
class ErrorEnumTypeTransformer {
  factory ErrorEnumTypeTransformer() => _instance ??= const ErrorEnumTypeTransformer._();

  const ErrorEnumTypeTransformer._();

  String encode(ErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'User is not authenticated.': return ErrorEnum.userIsNotAuthenticatedPeriod;
        case r'Order not found.': return ErrorEnum.orderNotFoundPeriod;
        case r'Order is not in a state where shipping can be selected.': return ErrorEnum.orderIsNotInAStateWhereShippingCanBeSelectedPeriod;
        case r'Order is not in a state where packing can be selected.': return ErrorEnum.orderIsNotInAStateWherePackingCanBeSelectedPeriod;
        case r'Failed to initiate refund. Please try again later.': return ErrorEnum.failedToInitiateRefundPeriodPleaseTryAgainLaterPeriod;
        case r'Order is expired or cancelled.': return ErrorEnum.orderIsExpiredOrCancelledPeriod;
        case r'Invalid request origin.': return ErrorEnum.invalidRequestOriginPeriod;
        case r'Digi Express shipping method not found.': return ErrorEnum.digiExpressShippingMethodNotFoundPeriod;
        case r'Order address not found.': return ErrorEnum.orderAddressNotFoundPeriod;
        case r'Failed to fetch Digi Express shipping time window options.': return ErrorEnum.failedToFetchDigiExpressShippingTimeWindowOptionsPeriod;
        case r'Address ID not found.': return ErrorEnum.addressIDNotFoundPeriod;
        case r'Failed to cancel shipment.': return ErrorEnum.failedToCancelShipmentPeriod;
        case r'Failed to cancel shipment in third party service.': return ErrorEnum.failedToCancelShipmentInThirdPartyServicePeriod;
        case r'Shipment not found.': return ErrorEnum.shipmentNotFoundPeriod;
        case r'Selected shipping method is not eligible for cancellation.': return ErrorEnum.selectedShippingMethodIsNotEligibleForCancellationPeriod;
        case r'DigiExpress shipment is not in cancelable in this state': return ErrorEnum.digiExpressShipmentIsNotInCancelableInThisState;
        case r'DigiExpress shipment is not in reviveable in this state': return ErrorEnum.digiExpressShipmentIsNotInReviveableInThisState;
        case r'Failed to revive shipment in third party service.': return ErrorEnum.failedToReviveShipmentInThirdPartyServicePeriod;
        case r'Selected shipping method is not eligible for revival.': return ErrorEnum.selectedShippingMethodIsNotEligibleForRevivalPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ErrorEnumTypeTransformer] instance.
  static ErrorEnumTypeTransformer? _instance;
}

