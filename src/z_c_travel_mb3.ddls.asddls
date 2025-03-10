@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumptio - Travel'
@Metadata.allowExtensions: true

define root view entity Z_C_TRAVEL_MB3 as projection on Z_I_TRAVEL_MB3
{
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    booking_fee as BookingFee,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    total_price as TotalPrice ,
    @Semantics.currencyCode: true
    currency_code as CurrencyCode,
    description as Description,
    overall_status as TravelStatus,
    last_changed_at as LastChangedAt,
    /* Associations */
    _Agency,
    _Booking : redirected to composition child Z_C_BOOKING_MB3, 
    _Currency,
    _Customer
}
