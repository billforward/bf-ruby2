# BillForward::PricingcalculatorApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_amendment_cost**](PricingcalculatorApi.md#get_amendment_cost) | **POST** /pricing-calculator/amendment-cost | Calculates the price of a subscription&#39;s upgrading/downgrading to a new pricing component value.
[**get_coupon_instance_initialisation_cost**](PricingcalculatorApi.md#get_coupon_instance_initialisation_cost) | **POST** /pricing-calculator/coupon-instance/initialisation | Calculates the price of a subscription to a rate plan, at specified values of pricing component values, and with the specified coupon applied.
[**get_product_rate_plan_costs**](PricingcalculatorApi.md#get_product_rate_plan_costs) | **POST** /pricing-calculator/product-rate-plan | Calculates the price of a subscription to a rate plan, at specified values of pricing component values.


# **get_amendment_cost**
> AmendmentPriceNTimePagedMetadata get_amendment_cost(ammendment_price_request)

Calculates the price of a subscription's upgrading/downgrading to a new pricing component value.

{ \"nickname\" : \"Calculate upgrade price\", \"request\" : \"AmendmentPriceRequest.html\" ,\"response\" : \"AmendmentPriceNTime.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcalculatorApi.new

ammendment_price_request = BillForward::BillingEntityBase.new # BillingEntityBase | An amendment pricing request


begin
  #Calculates the price of a subscription's upgrading/downgrading to a new pricing component value.
  result = api_instance.get_amendment_cost(ammendment_price_request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcalculatorApi->get_amendment_cost: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ammendment_price_request** | [**BillingEntityBase**](BillingEntityBase.md)| An amendment pricing request | 

### Return type

[**AmendmentPriceNTimePagedMetadata**](AmendmentPriceNTimePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_coupon_instance_initialisation_cost**
> PriceCalculationPagedMetadata get_coupon_instance_initialisation_cost(coupon_instance_initialisation_request)

Calculates the price of a subscription to a rate plan, at specified values of pricing component values, and with the specified coupon applied.

{ \"nickname\" : \"Calculate price with a coupon\",\"request\" : \"PriceRequestWithCoupon.html\" ,\"response\" : \"PriceCalculationWithCoupon.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcalculatorApi.new

coupon_instance_initialisation_request = BillForward::BillingEntityBase.new # BillingEntityBase | A coupon instance initialisation request


begin
  #Calculates the price of a subscription to a rate plan, at specified values of pricing component values, and with the specified coupon applied.
  result = api_instance.get_coupon_instance_initialisation_cost(coupon_instance_initialisation_request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcalculatorApi->get_coupon_instance_initialisation_cost: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_instance_initialisation_request** | [**BillingEntityBase**](BillingEntityBase.md)| A coupon instance initialisation request | 

### Return type

[**PriceCalculationPagedMetadata**](PriceCalculationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_product_rate_plan_costs**
> PriceCalculationPagedMetadata get_product_rate_plan_costs(price_request)

Calculates the price of a subscription to a rate plan, at specified values of pricing component values.

{ \"nickname\" : \"Calculate price\", \"request\" : \"PriceRequest.html\" ,\"response\" : \"PriceCalculation.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcalculatorApi.new

price_request = BillForward::BillingEntityBase.new # BillingEntityBase | A price request


begin
  #Calculates the price of a subscription to a rate plan, at specified values of pricing component values.
  result = api_instance.get_product_rate_plan_costs(price_request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcalculatorApi->get_product_rate_plan_costs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **price_request** | [**BillingEntityBase**](BillingEntityBase.md)| A price request | 

### Return type

[**PriceCalculationPagedMetadata**](PriceCalculationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



