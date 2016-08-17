# BillForward::SubscriptionsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_charge_to_subscription**](SubscriptionsApi.md#add_charge_to_subscription) | **POST** /subscriptions/{subscription-ID}/charge | Creates a charge on the specified subscription.
[**add_coupon_to_subscription**](SubscriptionsApi.md#add_coupon_to_subscription) | **POST** /subscriptions/{subscription-ID}/coupons | Applies a coupon to a subscription.
[**add_credit_note_to_subscription**](SubscriptionsApi.md#add_credit_note_to_subscription) | **POST** /subscriptions/{subscription-ID}/credit | Creates a credit-note which may be used by only the specified subscription.
[**add_payment_method_to_subscription**](SubscriptionsApi.md#add_payment_method_to_subscription) | **POST** /subscriptions/{subscription-ID}/payment-methods | Enables the payment method to pay invoices of this subscription.
[**advance_subscription**](SubscriptionsApi.md#advance_subscription) | **POST** /subscriptions/{subscription-ID}/advance | Advance the subscription through time.
[**available_payment_methods_for_subscription**](SubscriptionsApi.md#available_payment_methods_for_subscription) | **GET** /subscriptions/{subscription-ID}/payment-methods | Returns all available payment methods for the specified subscription. By default 10 values are returned. Records are returned in natural order.
[**batch_create_subscriptions**](SubscriptionsApi.md#batch_create_subscriptions) | **POST** /subscriptions/batch | Create multiple subscriptions.
[**cancel_subscription**](SubscriptionsApi.md#cancel_subscription) | **POST** /subscriptions/{subscription-ID}/cancel | Retires the subscription specified by the subscription-ID parameter. Retiring a subscription causes it to cancel based on the specified retirement settings for the product.
[**create_aggregating_subscription**](SubscriptionsApi.md#create_aggregating_subscription) | **POST** /subscriptions/aggregating | Create an aggregating subscription.
[**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Create a new subscription.
[**create_subscription_v2**](SubscriptionsApi.md#create_subscription_v2) | **POST** /subscriptions/create | Create a subscription (V2).
[**create_timer**](SubscriptionsApi.md#create_timer) | **POST** /subscriptions/{subscription-ID}/timer | Create a timer for a subscription event.
[**delete_metadata_for_subscription**](SubscriptionsApi.md#delete_metadata_for_subscription) | **DELETE** /subscriptions/{subscription-ID}/metadata | Remove any associated metadata.
[**freeze_subscription**](SubscriptionsApi.md#freeze_subscription) | **POST** /subscriptions/{subscription-ID}/freeze | Freeze the subscription.
[**get_all_subscriptions**](SubscriptionsApi.md#get_all_subscriptions) | **GET** /subscriptions | Retrieves a collection of all subscriptions. By default 10 values are returned. Records are returned in natural order.
[**get_applicable_coupons_for_subscription**](SubscriptionsApi.md#get_applicable_coupons_for_subscription) | **GET** /subscriptions/{subscription-ID}/applicable-coupons | Retrieves a collection of the coupons which can be applied to this subscription.
[**get_available_credit_subscription**](SubscriptionsApi.md#get_available_credit_subscription) | **GET** /subscriptions/{subscription-ID}/credit | Returns all available credit-notes for the specified subscription. By default 10 values are returned. Records are returned in natural order.
[**get_charges_on_subscription**](SubscriptionsApi.md#get_charges_on_subscription) | **GET** /subscriptions/{subscription-ID}/charges | Returns all charges for the specified subscription. By default 10 values are returned. Records are returned in natural order.
[**get_children_of_subscription**](SubscriptionsApi.md#get_children_of_subscription) | **GET** /subscriptions/{subscription-ID}/children | Return all entities whose invoices will be aggregated by the specified subscription By default 10 values are returned. Records are returned in natural order.
[**get_coupons_on_subscription**](SubscriptionsApi.md#get_coupons_on_subscription) | **GET** /subscriptions/{subscription-ID}/coupons | Retrieves a collection of the coupons and the unique codes currently applied to the subscription.
[**get_invoices_for_subscription_by_state**](SubscriptionsApi.md#get_invoices_for_subscription_by_state) | **GET** /subscriptions/{subscriptionID}/invoices/{state} | Retrieves a collection of invoice objects of the specified state for the given subscription. By default 10 values are returned. Records are returned in natural order.
[**get_metadata_for_subscription**](SubscriptionsApi.md#get_metadata_for_subscription) | **GET** /subscriptions/{subscription-ID}/metadata | Retrieve any associated metadata.
[**get_parent_subscription**](SubscriptionsApi.md#get_parent_subscription) | **GET** /subscriptions/{subscription-ID}/parent | Return the parent of the given subscription.
[**get_pricing_component_values_of_subscription**](SubscriptionsApi.md#get_pricing_component_values_of_subscription) | **GET** /subscriptions/{subscription-ID}/values | Gets the subscription&#39;s current pricing-component values.
[**get_subscription_by_account_id**](SubscriptionsApi.md#get_subscription_by_account_id) | **GET** /subscriptions/account/{account-ID} | Retrieves a collection of subscriptions, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_subscription_by_id**](SubscriptionsApi.md#get_subscription_by_id) | **GET** /subscriptions/{subscription-ID} | Retrieves a single subscription, specified by the ID parameter.
[**get_subscription_by_product_id**](SubscriptionsApi.md#get_subscription_by_product_id) | **GET** /subscriptions/product/{product-ID} | Retrieves a collection of subscriptions, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_subscription_by_product_rate_plan_id**](SubscriptionsApi.md#get_subscription_by_product_rate_plan_id) | **GET** /subscriptions/product-rate-plan/{product-rate-plan-ID} | Retrieves a collection of subscriptions, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_subscription_by_state**](SubscriptionsApi.md#get_subscription_by_state) | **GET** /subscriptions/state/{state} | Retrieves a collection of subscriptions, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
[**get_subscription_by_version_id**](SubscriptionsApi.md#get_subscription_by_version_id) | **GET** /subscriptions/version/{version-ID} | Retrieves a single subscription, specified by the version-ID parameter.
[**get_subscriptions_by_initial_period_start**](SubscriptionsApi.md#get_subscriptions_by_initial_period_start) | **GET** /subscriptions/initial-period-start/{lower-threshold}/{upper-threshold} | Retrieves a collection of subscription objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_subscriptions_by_period_end**](SubscriptionsApi.md#get_subscriptions_by_period_end) | **GET** /subscriptions/period-end/{lower-threshold}/{upper-threshold} | Retrieves a collection of subscription objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_subscriptions_by_period_start**](SubscriptionsApi.md#get_subscriptions_by_period_start) | **GET** /subscriptions/period-start/{lower-threshold}/{upper-threshold} | Retrieves a collection of subscription objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_subscriptions_by_successful_periods**](SubscriptionsApi.md#get_subscriptions_by_successful_periods) | **GET** /subscriptions/successful-periods/{lower-threshold}/{upper-threshold} | Retrieves a collection of subscription objects whose successful periods count falls within the range specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_swagger_subscription**](SubscriptionsApi.md#get_swagger_subscription) | **GET** /subscriptions/swagger-end-point/{query-string} | 
[**get_timers_for_subscription**](SubscriptionsApi.md#get_timers_for_subscription) | **GET** /subscriptions/{subscription-ID}/timer | Retrieves a collection timer amendments for the specified subscription.. By default 10 values are returned. Records are returned in natural order.
[**import_subscription**](SubscriptionsApi.md#import_subscription) | **POST** /subscriptions/import | Import a subscription.
[**invoice_charges_on_subscription**](SubscriptionsApi.md#invoice_charges_on_subscription) | **POST** /subscriptions/{subscription-ID}/invoice-charges | Invoice any outstanding charges for the subscription.
[**migrate_subscription**](SubscriptionsApi.md#migrate_subscription) | **POST** /subscriptions/{subscription-ID}/migrate | Migrate the subscription to a new plan.
[**remove_coupon_from_subscription**](SubscriptionsApi.md#remove_coupon_from_subscription) | **DELETE** /subscriptions/{subscription-ID}/coupons/{coupon-code} | Removes the coupon from the subscription.
[**remove_credit_from_subscription**](SubscriptionsApi.md#remove_credit_from_subscription) | **DELETE** /subscriptions/{subscription-ID}/credit/{value} | Decrease the amount of credit available to the specified subscription.
[**remove_payment_method_from_subscription**](SubscriptionsApi.md#remove_payment_method_from_subscription) | **DELETE** /subscriptions/{subscription-ID}/payment-methods/{payment-method-ID} | Removes the specified payment method for the given subscription.
[**remove_pricing_component_value_change_from_subscription**](SubscriptionsApi.md#remove_pricing_component_value_change_from_subscription) | **DELETE** /subscriptions/{subscription-ID}/values/{pricing-component} | Discards from the subscription any scheduled changes in the value of the specified pricing-component.
[**resume_subscription**](SubscriptionsApi.md#resume_subscription) | **POST** /subscriptions/{subscription-ID}/resume | Resume the frozen subscription.
[**revive_subscription**](SubscriptionsApi.md#revive_subscription) | **POST** /subscriptions/{subscription-ID}/revive | Revives a cancelled subscription and returns it to its previous state
[**set_metadata_for_subscription**](SubscriptionsApi.md#set_metadata_for_subscription) | **POST** /subscriptions/{subscription-ID}/metadata | Remove any existing metadata keys and create the provided data.
[**set_pricing_component_value_on_subscription**](SubscriptionsApi.md#set_pricing_component_value_on_subscription) | **POST** /subscriptions/{subscription-ID}/pricing-component-values | Sets upon this subscription a new value for the specified pricing-component without performing an upgrade.
[**set_pricing_component_value_on_subscription_v2**](SubscriptionsApi.md#set_pricing_component_value_on_subscription_v2) | **POST** /subscriptions/{subscription-ID}/values/{pricing-component} | Upgrades/downgrades this subscription to some new value for the specified pricing-component.
[**update_subscription**](SubscriptionsApi.md#update_subscription) | **PUT** /subscriptions | Update a subscription.
[**update_subscription_v2**](SubscriptionsApi.md#update_subscription_v2) | **PUT** /subscriptions/update | Update a subscription (V2).
[**upsert_metadata_for_subscription**](SubscriptionsApi.md#upsert_metadata_for_subscription) | **PUT** /subscriptions/{subscription-ID}/metadata | Update any existing metadata key-values and insert any new key-values, no keys will be removed.


# **add_charge_to_subscription**
> SubscriptionChargePagedMetadata add_charge_to_subscription(subscription_id, charge)

Creates a charge on the specified subscription.

{\"nickname\":\"Add Charge\",\"response\":\"addChargeToSubscriptionRequest.html\",\"response\":\"addChargeToSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

charge = BillForward::AddChargeRequest.new # AddChargeRequest | The charge request


begin
  #Creates a charge on the specified subscription.
  result = api_instance.add_charge_to_subscription(subscription_id, charge)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->add_charge_to_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **charge** | [**AddChargeRequest**](AddChargeRequest.md)| The charge request | 

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_coupon_to_subscription**
> CouponPagedMetadata add_coupon_to_subscription(subscription_id, request)

Applies a coupon to a subscription.

{\"nickname\":\"Apply coupon\", \"request\":\"addCouponCodeRequest.html\",\"response\":\"addCouponCodeResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

request = BillForward::AddCouponCodeRequest.new # AddCouponCodeRequest | Request containing the coupon code.


begin
  #Applies a coupon to a subscription.
  result = api_instance.add_coupon_to_subscription(subscription_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->add_coupon_to_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **request** | [**AddCouponCodeRequest**](AddCouponCodeRequest.md)| Request containing the coupon code. | 

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_credit_note_to_subscription**
> CreditNotePagedMetadata add_credit_note_to_subscription(subscription_id, credit_note)

Creates a credit-note which may be used by only the specified subscription.

{\"nickname\":\"Add Credit\",\"request\":\"addCreditNoteToSubscriptionRequest.html\", \"response\":\"addCreditNoteToSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

credit_note = BillForward::CreditSubscriptionRequest.new # CreditSubscriptionRequest | The credit-note request


begin
  #Creates a credit-note which may be used by only the specified subscription.
  result = api_instance.add_credit_note_to_subscription(subscription_id, credit_note)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->add_credit_note_to_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **credit_note** | [**CreditSubscriptionRequest**](CreditSubscriptionRequest.md)| The credit-note request | 

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_payment_method_to_subscription**
> PaymentMethodPagedMetadata add_payment_method_to_subscription(subscription_id, payment_method)

Enables the payment method to pay invoices of this subscription.

{\"nickname\":\"Add payment-method to subscription\",\"response\":\"addPaymentMethod.html\",\"request\":\"addPaymentMethod.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

payment_method = BillForward::AddPaymentMethodRequest.new # AddPaymentMethodRequest | 


begin
  #Enables the payment method to pay invoices of this subscription.
  result = api_instance.add_payment_method_to_subscription(subscription_id, payment_method)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->add_payment_method_to_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **payment_method** | [**AddPaymentMethodRequest**](AddPaymentMethodRequest.md)|  | 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **advance_subscription**
> TimeResponsePagedMetadata advance_subscription(subscription_id, request)

Advance the subscription through time.

{\"nickname\":\"Advance\",\"request\":\"advanceSubscriptionRequest.html\",\"response\":\"advanceSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

request = BillForward::TimeRequest.new # TimeRequest | The request


begin
  #Advance the subscription through time.
  result = api_instance.advance_subscription(subscription_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->advance_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **request** | [**TimeRequest**](TimeRequest.md)| The request | 

### Return type

[**TimeResponsePagedMetadata**](TimeResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **available_payment_methods_for_subscription**
> PaymentMethodPagedMetadata available_payment_methods_for_subscription(subscription_id, opts)

Returns all available payment methods for the specified subscription. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"List on subscription\",\"response\" : \"getAvailablePaymentMethods.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns all available payment methods for the specified subscription. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.available_payment_methods_for_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->available_payment_methods_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **batch_create_subscriptions**
> SubscriptionPagedMetadata batch_create_subscriptions(request)

Create multiple subscriptions.

{\"nickname\":\"Create multiple subscriptions\",\"response\":\"createMultipleSubscriptionViaHelper.html\",\"request\":\"createMultipleSubscriptionViaHelper.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

request = BillForward::CreateSubscriptionBatchRequest.new # CreateSubscriptionBatchRequest | 


begin
  #Create multiple subscriptions.
  result = api_instance.batch_create_subscriptions(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->batch_create_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateSubscriptionBatchRequest**](CreateSubscriptionBatchRequest.md)|  | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cancel_subscription**
> SubscriptionCancellationPagedMetadata cancel_subscription(subscription_id, subscription_cancellation)

Retires the subscription specified by the subscription-ID parameter. Retiring a subscription causes it to cancel based on the specified retirement settings for the product.

{\"nickname\":\"Cancel subscription\",\"response\":\"deleteSubscription.html\",\"request\":\"deleteSubscriptionRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

subscription_cancellation = BillForward::CancelSubscriptionRequest.new # CancelSubscriptionRequest | The cancellation request


begin
  #Retires the subscription specified by the subscription-ID parameter. Retiring a subscription causes it to cancel based on the specified retirement settings for the product.
  result = api_instance.cancel_subscription(subscription_id, subscription_cancellation)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->cancel_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **subscription_cancellation** | [**CancelSubscriptionRequest**](CancelSubscriptionRequest.md)| The cancellation request | 

### Return type

[**SubscriptionCancellationPagedMetadata**](SubscriptionCancellationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_aggregating_subscription**
> SubscriptionPagedMetadata create_aggregating_subscription(request)

Create an aggregating subscription.

{\"nickname\":\"Create aggregating subscription\",\"response\":\"createAggregatingSubscription.html\",\"request\":\"createAggregatingSubscription.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

request = BillForward::CreateAggregatingSubscriptionRequest.new # CreateAggregatingSubscriptionRequest | 


begin
  #Create an aggregating subscription.
  result = api_instance.create_aggregating_subscription(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_aggregating_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateAggregatingSubscriptionRequest**](CreateAggregatingSubscriptionRequest.md)|  | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_subscription**
> SubscriptionPagedMetadata create_subscription(subscription)

Create a new subscription.

{\"nickname\":\"Create a new subscription\",\"request\":\"createSubscriptionRequest.html\",\"response\":\"createSubscriptionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription = BillForward::Subscription.new # Subscription | The subscription object to be updated.


begin
  #Create a new subscription.
  result = api_instance.create_subscription(subscription)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription** | [**Subscription**](Subscription.md)| The subscription object to be updated. | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **create_subscription_v2**
> SubscriptionPagedMetadata create_subscription_v2(request)

Create a subscription (V2).

{\"nickname\":\"Create a subscription (V2)\",\"response\":\"createSubscriptionViaHelper.html\",\"request\":\"createSubscriptionViaHelper.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

request = BillForward::CreateSubscriptionRequest.new # CreateSubscriptionRequest | 


begin
  #Create a subscription (V2).
  result = api_instance.create_subscription_v2(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_subscription_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateSubscriptionRequest**](CreateSubscriptionRequest.md)|  | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_timer**
> TimerAmendment create_timer(subscription_id, request)

Create a timer for a subscription event.

{\"nickname\":\"Create Timer\",\"response\":\"createSubscriptionTimer.html\",\"request\":\"createSubscriptionTimer.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

request = BillForward::BillingEntityBase.new # BillingEntityBase | 


begin
  #Create a timer for a subscription event.
  result = api_instance.create_timer(subscription_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_timer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **request** | [**BillingEntityBase**](BillingEntityBase.md)|  | 

### Return type

[**TimerAmendment**](TimerAmendment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_metadata_for_subscription**
> DynamicMetadata delete_metadata_for_subscription(subscription_id, opts)

Remove any associated metadata.

{\"nickname\":\"Clear from subscription\",\"request\" :\"deleteSubscriptionMetadataRequest.html\",\"response\":\"deleteSubscriptionMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any associated metadata.
  result = api_instance.delete_metadata_for_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->delete_metadata_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **freeze_subscription**
> SubscriptionPagedMetadata freeze_subscription(subscription_id, request)

Freeze the subscription.

{\"nickname\":\"Freeze\",\"request\":\"freezeSubscriptionRequest.html\",\"response\":\"freezeSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

request = BillForward::PauseRequest.new # PauseRequest | The request


begin
  #Freeze the subscription.
  result = api_instance.freeze_subscription(subscription_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->freeze_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **request** | [**PauseRequest**](PauseRequest.md)| The request | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_subscriptions**
> SubscriptionPagedMetadata get_all_subscriptions(opts)

Retrieves a collection of all subscriptions. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve all subscriptions\",\"response\":\"getSubscriptionAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired subscriptions should be returned.
  exclude_children: true, # BOOLEAN | Should child subscriptiosn be excluded.
  metadata: "metadata_example", # String | 
  exclude_service_ended: true, # BOOLEAN | 
  account_id: ["account_id_example"] # Array<String> | A list of accountIDs to filter subscriptions on
}

begin
  #Retrieves a collection of all subscriptions. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_subscriptions(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_all_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child subscriptiosn be excluded. | [optional] [default to true]
 **metadata** | **String**|  | [optional] 
 **exclude_service_ended** | **BOOLEAN**|  | [optional] 
 **account_id** | [**Array&lt;String&gt;**](String.md)| A list of accountIDs to filter subscriptions on | [optional] 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_applicable_coupons_for_subscription**
> CouponPagedMetadata get_applicable_coupons_for_subscription(subscription_id, opts)

Retrieves a collection of the coupons which can be applied to this subscription.

{ \"nickname\" : \"Retrieve applicable coupons\",\"response\" : \"getApplicableCoupons.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of the coupons which can be applied to this subscription.
  result = api_instance.get_applicable_coupons_for_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_applicable_coupons_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_available_credit_subscription**
> CreditNotePagedMetadata get_available_credit_subscription(subscription_id, opts)

Returns all available credit-notes for the specified subscription. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get available credit\",\"response\":\"getAvailableCreditSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Returns all available credit-notes for the specified subscription. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_available_credit_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_available_credit_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_charges_on_subscription**
> SubscriptionChargePagedMetadata get_charges_on_subscription(subscription_id, opts)

Returns all charges for the specified subscription. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get charges\",\"response\":\"getChargesSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  state: "state_example", # String | Ihe direction of any ordering, either ASC or DESC.
  type: "type_example", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Returns all charges for the specified subscription. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_charges_on_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_charges_on_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **state** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] 
 **type** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] 
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_children_of_subscription**
> SubscriptionPagedMetadata get_children_of_subscription(subscription_id, opts)

Return all entities whose invoices will be aggregated by the specified subscription By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get Aggregated Entities\",\"response\":\"getAggregatedEntities.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Return all entities whose invoices will be aggregated by the specified subscription By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_children_of_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_children_of_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_coupons_on_subscription**
> CouponPagedMetadata get_coupons_on_subscription(subscription_id, opts)

Retrieves a collection of the coupons and the unique codes currently applied to the subscription.

{\"nickname\":\"Retrieve coupons\",\"response\":\"getCoupons.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of the coupons and the unique codes currently applied to the subscription.
  result = api_instance.get_coupons_on_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_coupons_on_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoices_for_subscription_by_state**
> InvoicePagedMetadata get_invoices_for_subscription_by_state(subscription_id, state, opts)

Retrieves a collection of invoice objects of the specified state for the given subscription. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve invoices by state for subscription\",\"response\":\"getInvoicesForSubscriptionByState.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | The unique id of the subscription.

state = "state_example" # String | The state of the invoices to retrieve.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves a collection of invoice objects of the specified state for the given subscription. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_for_subscription_by_state(subscription_id, state, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_invoices_for_subscription_by_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The unique id of the subscription. | 
 **state** | **String**| The state of the invoices to retrieve. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_metadata_for_subscription**
> DynamicMetadata get_metadata_for_subscription(subscription_id, opts)

Retrieve any associated metadata.

{\"nickname\":\"Retrieve on subscription\",\"request\":\"getSubscriptionMetadataRequest.html\",\"response\":\"getSubscriptionMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieve any associated metadata.
  result = api_instance.get_metadata_for_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_metadata_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_parent_subscription**
> SubscriptionPagedMetadata get_parent_subscription(subscription_id, opts)

Return the parent of the given subscription.

{\"nickname\":\"Get parent\",\"response\":\"getParentSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Return the parent of the given subscription.
  result = api_instance.get_parent_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_parent_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_pricing_component_values_of_subscription**
> PricingComponentValuePagedMetadata get_pricing_component_values_of_subscription(subscription_id)

Gets the subscription's current pricing-component values.

{\"nickname\":\"Get values\",\"response\":\"getPricingComponentValues.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.


begin
  #Gets the subscription's current pricing-component values.
  result = api_instance.get_pricing_component_values_of_subscription(subscription_id)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_pricing_component_values_of_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 

### Return type

[**PricingComponentValuePagedMetadata**](PricingComponentValuePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscription_by_account_id**
> SubscriptionPagedMetadata get_subscription_by_account_id(account_id, opts)

Retrieves a collection of subscriptions, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by account\",\"response\":\"getSubscriptionByAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired subscriptions should be returned.
  exclude_children: true # BOOLEAN | Should child subscriptiosn be excluded.
}

begin
  #Retrieves a collection of subscriptions, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscription_by_account_id(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child subscriptiosn be excluded. | [optional] [default to true]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscription_by_id**
> SubscriptionPagedMetadata get_subscription_by_id(subscription_id, opts)

Retrieves a single subscription, specified by the ID parameter.

{\"nickname\":\"Retrieve an existing subscription\",\"response\":\"getSubscriptionByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a single subscription, specified by the ID parameter.
  result = api_instance.get_subscription_by_id(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscription_by_product_id**
> SubscriptionPagedMetadata get_subscription_by_product_id(product_id, opts)

Retrieves a collection of subscriptions, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by product\",\"response\":\"getSubscriptionByProduct.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

product_id = "product_id_example" # String | ID of the product

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired subscriptions should be returned.
  exclude_children: true # BOOLEAN | Should child subscriptiosn be excluded.
}

begin
  #Retrieves a collection of subscriptions, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscription_by_product_id(product_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_by_product_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| ID of the product | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child subscriptiosn be excluded. | [optional] [default to true]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscription_by_product_rate_plan_id**
> SubscriptionPagedMetadata get_subscription_by_product_rate_plan_id(product_rate_plan_id, opts)

Retrieves a collection of subscriptions, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by rate-plan\",\"response\":\"getSubscriptionByProductRatePlan.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired subscriptions should be returned.
  exclude_children: true # BOOLEAN | Should child subscriptiosn be excluded.
}

begin
  #Retrieves a collection of subscriptions, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscription_by_product_rate_plan_id(product_rate_plan_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_by_product_rate_plan_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child subscriptiosn be excluded. | [optional] [default to true]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscription_by_state**
> SubscriptionPagedMetadata get_subscription_by_state(state, opts)

Retrieves a collection of subscriptions, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by state\",\"response\":\"getSubscriptionByState.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

state = "state_example" # String | The current state of the subscription, either Provisioned, AwaitingPayment, Paid or Cancelled

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired subscriptions should be returned.
  exclude_children: true # BOOLEAN | Should child subscriptiosn be excluded.
}

begin
  #Retrieves a collection of subscriptions, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscription_by_state(state, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_by_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The current state of the subscription, either Provisioned, AwaitingPayment, Paid or Cancelled | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child subscriptiosn be excluded. | [optional] [default to true]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscription_by_version_id**
> SubscriptionPagedMetadata get_subscription_by_version_id(version_id, opts)

Retrieves a single subscription, specified by the version-ID parameter.

{\"nickname\":\"Retrieve by version\",\"response\":\"getSubscriptionByVersionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

version_id = "version_id_example" # String | The version-ID of the subscription.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves a single subscription, specified by the version-ID parameter.
  result = api_instance.get_subscription_by_version_id(version_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscription_by_version_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version_id** | **String**| The version-ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscriptions_by_initial_period_start**
> SubscriptionPagedMetadata get_subscriptions_by_initial_period_start(lower_threshold, upper_threshold, opts)

Retrieves a collection of subscription objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by initial period-start\",\"response\":\"getSubscriptionByInitialPeriodStart.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves a collection of subscription objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscriptions_by_initial_period_start(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscriptions_by_initial_period_start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscriptions_by_period_end**
> SubscriptionPagedMetadata get_subscriptions_by_period_end(lower_threshold, upper_threshold, opts)

Retrieves a collection of subscription objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by period-end\",\"response\":\"getSubscriptionByPeriodEnd.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves a collection of subscription objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscriptions_by_period_end(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscriptions_by_period_end: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscriptions_by_period_start**
> SubscriptionPagedMetadata get_subscriptions_by_period_start(lower_threshold, upper_threshold, opts)

Retrieves a collection of subscription objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by period-start\",\"response\":\"getSubscriptionByPeriodStart.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves a collection of subscription objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscriptions_by_period_start(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscriptions_by_period_start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_subscriptions_by_successful_periods**
> SubscriptionPagedMetadata get_subscriptions_by_successful_periods(lower_threshold, upper_threshold, opts)

Retrieves a collection of subscription objects whose successful periods count falls within the range specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by successful period\",\"response\":\"getSubscriptionBySuccessfulPeriods.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

lower_threshold = 56 # Integer | The lower threshold of the range

upper_threshold = 56 # Integer | The upper threshold of the range.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves a collection of subscription objects whose successful periods count falls within the range specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscriptions_by_successful_periods(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_subscriptions_by_successful_periods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **Integer**| The lower threshold of the range | 
 **upper_threshold** | **Integer**| The upper threshold of the range. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_swagger_subscription**
> SwaggerTypeListSubs get_swagger_subscription(query_string, opts)



{ \"nickname\" : \"\",\"response\" : \"\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

query_string = "query_string_example" # String | The query string used to search.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The starting index of the search results.
  records: 10, # Integer | The number of search results to return.
  format: "JSON", # String | The response format, either JSON or XML.
  wildcard: false, # BOOLEAN | Toggle if we search for full words or whether a wildcard is used.
  entity: false # BOOLEAN | Is an entity returned with the search results.
}

begin
  #
  result = api_instance.get_swagger_subscription(query_string, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_swagger_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_string** | **String**| The query string used to search. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The starting index of the search results. | [optional] [default to 0]
 **records** | **Integer**| The number of search results to return. | [optional] [default to 10]
 **format** | **String**| The response format, either JSON or XML. | [optional] [default to JSON]
 **wildcard** | **BOOLEAN**| Toggle if we search for full words or whether a wildcard is used. | [optional] [default to false]
 **entity** | **BOOLEAN**| Is an entity returned with the search results. | [optional] [default to false]

### Return type

[**SwaggerTypeListSubs**](SwaggerTypeListSubs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_timers_for_subscription**
> TimerAmendment get_timers_for_subscription(subscription_id, opts)

Retrieves a collection timer amendments for the specified subscription.. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get Timers\",\"response\":\"getTimersforSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired timers should be returned.
  state: "state_example", # String | The state of the timer amendment
  event: "event_example" # String | The type of timer event
}

begin
  #Retrieves a collection timer amendments for the specified subscription.. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_timers_for_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_timers_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired timers should be returned. | [optional] [default to false]
 **state** | **String**| The state of the timer amendment | [optional] 
 **event** | **String**| The type of timer event | [optional] 

### Return type

[**TimerAmendment**](TimerAmendment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **import_subscription**
> SubscriptionPagedMetadata import_subscription(request)

Import a subscription.

{\"nickname\":\"Import\",\"request\":\"importSubscriptionRequest.html\",\"response\":\"importSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

request = BillForward::BillingEntityBase.new # BillingEntityBase | The request


begin
  #Import a subscription.
  result = api_instance.import_subscription(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->import_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BillingEntityBase**](BillingEntityBase.md)| The request | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **invoice_charges_on_subscription**
> InvoicePagedMetadata invoice_charges_on_subscription(subscription_id, charge)

Invoice any outstanding charges for the subscription.

{\"nickname\":\"Invoice Charges\",\"request\":\"invoiceChargesRequest.html\",\"response\":\"invoiceCharges.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

charge = BillForward::InvoiceChargeRequest.new # InvoiceChargeRequest | The charge request


begin
  #Invoice any outstanding charges for the subscription.
  result = api_instance.invoice_charges_on_subscription(subscription_id, charge)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->invoice_charges_on_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **charge** | [**InvoiceChargeRequest**](InvoiceChargeRequest.md)| The charge request | 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **migrate_subscription**
> SubscriptionPagedMetadata migrate_subscription(subscription_id, request)

Migrate the subscription to a new plan.

{\"nickname\":\"Migrate\",\"request\":\"migrateSubscriptionRequest.html\", \"response\":\"migrateSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

request = BillForward::MigrationRequest.new # MigrationRequest | The migration request


begin
  #Migrate the subscription to a new plan.
  result = api_instance.migrate_subscription(subscription_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->migrate_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **request** | [**MigrationRequest**](MigrationRequest.md)| The migration request | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_coupon_from_subscription**
> CouponPagedMetadata remove_coupon_from_subscription(subscription_id, coupon_code, opts)

Removes the coupon from the subscription.

{\"nickname\":\"Remove coupon\",\"response\":\"removeCouponResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

coupon_code = "coupon_code_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Removes the coupon from the subscription.
  result = api_instance.remove_coupon_from_subscription(subscription_id, coupon_code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->remove_coupon_from_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **coupon_code** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **remove_credit_from_subscription**
> CreditNotePagedMetadata remove_credit_from_subscription(subscription_id, value, opts)

Decrease the amount of credit available to the specified subscription.

{\"nickname\":\"Remove Credit\",\"response\":\"removeCreditForSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

value = "value_example" # String | <p>Either a credit note ID or a currency value.</p><p>If a credit note ID is provided any remaining credit will be removed.</p><p>If a decimal is provided this value will be removed from any credit available to the subscription. For example if the subscription is in USD setting the value as 10 will reduce credit by $10 (USD), setting 9.86  would reduce the credit by $9.86 (USD). The value will be reduced from any credit available.</p>

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Decrease the amount of credit available to the specified subscription.
  result = api_instance.remove_credit_from_subscription(subscription_id, value, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->remove_credit_from_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **value** | **String**| &lt;p&gt;Either a credit note ID or a currency value.&lt;/p&gt;&lt;p&gt;If a credit note ID is provided any remaining credit will be removed.&lt;/p&gt;&lt;p&gt;If a decimal is provided this value will be removed from any credit available to the subscription. For example if the subscription is in USD setting the value as 10 will reduce credit by $10 (USD), setting 9.86  would reduce the credit by $9.86 (USD). The value will be reduced from any credit available.&lt;/p&gt; | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **remove_payment_method_from_subscription**
> PaymentMethodPagedMetadata remove_payment_method_from_subscription(subscription_id, payment_method_id, opts)

Removes the specified payment method for the given subscription.

{\"nickname\":\"Remove payment-method\",\"response\":\"removePaymentMethod.html\",\"request\":\"removePaymentMethod.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Removes the specified payment method for the given subscription.
  result = api_instance.remove_payment_method_from_subscription(subscription_id, payment_method_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->remove_payment_method_from_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **payment_method_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **remove_pricing_component_value_change_from_subscription**
> PaymentMethodPagedMetadata remove_pricing_component_value_change_from_subscription(subscription_id, pricing_component, opts)

Discards from the subscription any scheduled changes in the value of the specified pricing-component.

{\"nickname\":\"Discard value changes\",\"response\":\"removePricingComponentValueChange.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

pricing_component = "pricing_component_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Discards from the subscription any scheduled changes in the value of the specified pricing-component.
  result = api_instance.remove_pricing_component_value_change_from_subscription(subscription_id, pricing_component, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->remove_pricing_component_value_change_from_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **pricing_component** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **resume_subscription**
> SubscriptionPagedMetadata resume_subscription(subscription_id, request)

Resume the frozen subscription.

{\"nickname\":\"Resume\",\"request\":\"resumeSubscriptionRequest.html\",\"response\":\"resumeSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

request = BillForward::ResumeRequest.new # ResumeRequest | The request


begin
  #Resume the frozen subscription.
  result = api_instance.resume_subscription(subscription_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->resume_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **request** | [**ResumeRequest**](ResumeRequest.md)| The request | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revive_subscription**
> SubscriptionPagedMetadata revive_subscription(subscription_id, request)

Revives a cancelled subscription and returns it to its previous state

{\"nickname\":\"Revive subscription\",\"request\":\"reviveSubscriptionRequest.html\", \"response\":\"reviveSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

request = BillForward::ReviveSubscriptionRequest.new # ReviveSubscriptionRequest | The revive request


begin
  #Revives a cancelled subscription and returns it to its previous state
  result = api_instance.revive_subscription(subscription_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->revive_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **request** | [**ReviveSubscriptionRequest**](ReviveSubscriptionRequest.md)| The revive request | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_metadata_for_subscription**
> DynamicMetadata set_metadata_for_subscription(metadata, subscription_id, opts)

Remove any existing metadata keys and create the provided data.

{\"nickname\":\"Set on subscription\",\"request\":\"setSubscriptionMetadataRequest.html\",\"response\":\"setSubscriptionMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any existing metadata keys and create the provided data.
  result = api_instance.set_metadata_for_subscription(metadata, subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->set_metadata_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_pricing_component_value_on_subscription**
> PricingComponentValuePagedMetadata set_pricing_component_value_on_subscription(subscription_id, pricing_component_value)

Sets upon this subscription a new value for the specified pricing-component without performing an upgrade.

{\"nickname\":\"Set values\",\"request\":\"setPricingComponentValuesRequest.html\",\"response\":\"setPricingComponentValues.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

pricing_component_value = BillForward::PricingComponentValue.new # PricingComponentValue | The pricing-component-value request


begin
  #Sets upon this subscription a new value for the specified pricing-component without performing an upgrade.
  result = api_instance.set_pricing_component_value_on_subscription(subscription_id, pricing_component_value)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->set_pricing_component_value_on_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **pricing_component_value** | [**PricingComponentValue**](PricingComponentValue.md)| The pricing-component-value request | 

### Return type

[**PricingComponentValuePagedMetadata**](PricingComponentValuePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_pricing_component_value_on_subscription_v2**
> PricingComponentValueResponsePagedMetadata set_pricing_component_value_on_subscription_v2(subscription_id, pricing_component, value)

Upgrades/downgrades this subscription to some new value for the specified pricing-component.

{\"nickname\":\"Set value\",\"request\":\"setPricingComponentValueRequest.html\",\"response\":\"setPricingComponentValue.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

pricing_component = "pricing_component_example" # String | Name or ID of the pricing-component.

value = BillForward::PricingComponentValueRequest.new # PricingComponentValueRequest | The pricing-component-value request


begin
  #Upgrades/downgrades this subscription to some new value for the specified pricing-component.
  result = api_instance.set_pricing_component_value_on_subscription_v2(subscription_id, pricing_component, value)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->set_pricing_component_value_on_subscription_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **pricing_component** | **String**| Name or ID of the pricing-component. | 
 **value** | [**PricingComponentValueRequest**](PricingComponentValueRequest.md)| The pricing-component-value request | 

### Return type

[**PricingComponentValueResponsePagedMetadata**](PricingComponentValueResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_subscription**
> SubscriptionPagedMetadata update_subscription(subscription)

Update a subscription.

{\"nickname\":\"Update a subscription\",\"request\":\"updateSubscriptionRequest.html\",\"response\":\"updateSubscriptionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

subscription = BillForward::Subscription.new # Subscription | The subscription object to be updated.


begin
  #Update a subscription.
  result = api_instance.update_subscription(subscription)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription** | [**Subscription**](Subscription.md)| The subscription object to be updated. | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **update_subscription_v2**
> SubscriptionPagedMetadata update_subscription_v2(request)

Update a subscription (V2).

{\"nickname\":\"Update subscription (V2)\",\"response\":\"updateSubscriptionViaHelper.html\",\"request\":\"updateSubscriptionViaHelper.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

request = BillForward::UpdateSubscriptionRequest.new # UpdateSubscriptionRequest | 


begin
  #Update a subscription (V2).
  result = api_instance.update_subscription_v2(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_subscription_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateSubscriptionRequest**](UpdateSubscriptionRequest.md)|  | 

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upsert_metadata_for_subscription**
> DynamicMetadata upsert_metadata_for_subscription(metadata, subscription_id, opts)

Update any existing metadata key-values and insert any new key-values, no keys will be removed.

{\"nickname\":\"Upsert on subscription\",\"request\":\"upsertSubscriptionMetadataRequest.html\",\"response\":\"upsertSubscriptionMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SubscriptionsApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

subscription_id = "subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Update any existing metadata key-values and insert any new key-values, no keys will be removed.
  result = api_instance.upsert_metadata_for_subscription(metadata, subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SubscriptionsApi->upsert_metadata_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



