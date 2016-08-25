# Bfwd::AnalyticsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_debts**](AnalyticsApi.md#get_account_debts) | **POST** /analytics/payments/accounts/outstanding | Gets outstanding debts per account, within a date range.
[**get_account_ltv**](AnalyticsApi.md#get_account_ltv) | **GET** /analytics/account-ltv/{account-id}/{end-datetime} | Gets an account&#39;s life-time value, as of a given end date.
[**get_account_payments**](AnalyticsApi.md#get_account_payments) | **POST** /analytics/payments/accounts | Gets hourly payments per product, within a date range.
[**get_billforward_managed_payments**](AnalyticsApi.md#get_billforward_managed_payments) | **GET** /analytics/billforward-managed-payments/{start-datetime}/{end-datetime} | Gets all payments managed by BillForward, within a date range.
[**get_churn**](AnalyticsApi.md#get_churn) | **GET** /analytics/churn/{start-datetime}/{end-datetime} | Gets churn, within a date range.
[**get_debts**](AnalyticsApi.md#get_debts) | **GET** /analytics/payments/outstanding/{start-datetime}/{end-datetime} | Gets debts within a date range.
[**get_payments**](AnalyticsApi.md#get_payments) | **GET** /analytics/payments/{start-datetime}/{end-datetime} | Gets payments within a date range.
[**get_product_payments**](AnalyticsApi.md#get_product_payments) | **POST** /analytics/payments-per-product | Gets hourly payments per product, within a date range.
[**get_product_rate_plan_payments**](AnalyticsApi.md#get_product_rate_plan_payments) | **POST** /analytics/payments/product-rate-plan | Gets hourly payments per product, within a date range.
[**get_subscription_ltv**](AnalyticsApi.md#get_subscription_ltv) | **GET** /analytics/subscription-ltv/{subscription-id}/{end-datetime} | Gets a subscription&#39;s life-time value, as of a given end date.
[**get_upgrades**](AnalyticsApi.md#get_upgrades) | **GET** /analytics/upgrades/{start-datetime}/{end-datetime} | Gets upgrades, within a date range.


# **get_account_debts**
> AccountPaymentsResultPagedMetadata get_account_debts(debts_per_account)

Gets outstanding debts per account, within a date range.

{\"nickname\" : \"Get account debts\",\"response\" : \"getAccountDebts.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

debts_per_account = Bfwd::BillingEntityBase.new # BillingEntityBase | The payments-per-account object.


begin
  #Gets outstanding debts per account, within a date range.
  result = api_instance.get_account_debts(debts_per_account)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_account_debts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **debts_per_account** | [**BillingEntityBase**](BillingEntityBase.md)| The payments-per-account object. | 

### Return type

[**AccountPaymentsResultPagedMetadata**](AccountPaymentsResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_account_ltv**
> AccountLTVResultPagedMetadata get_account_ltv(account_id, end_datetime, opts)

Gets an account's life-time value, as of a given end date.

{\"nickname\":\"Get account life-time value\",\"response\":\"getAccountLTV.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

account_id = "account_id_example" # String | The id of the account.

end_datetime = "end_datetime_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Gets an account's life-time value, as of a given end date.
  result = api_instance.get_account_ltv(account_id, end_datetime, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_account_ltv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The id of the account. | 
 **end_datetime** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**AccountLTVResultPagedMetadata**](AccountLTVResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_account_payments**
> AccountPaymentsResultPagedMetadata get_account_payments(payments_per_account)

Gets hourly payments per product, within a date range.

{\"nickname\" : \"Get payments per account\",\"response\" : \"getAccountPayments.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

payments_per_account = Bfwd::BillingEntityBase.new # BillingEntityBase | The payments-per-account object.


begin
  #Gets hourly payments per product, within a date range.
  result = api_instance.get_account_payments(payments_per_account)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_account_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payments_per_account** | [**BillingEntityBase**](BillingEntityBase.md)| The payments-per-account object. | 

### Return type

[**AccountPaymentsResultPagedMetadata**](AccountPaymentsResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_billforward_managed_payments**
> BillforwardManagedPaymentsResultPagedMetadata get_billforward_managed_payments(start_datetime, end_datetime, opts)

Gets all payments managed by BillForward, within a date range.

{\"nickname\":\"Get managed payments\",\"response\":\"getManagedPayments.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

start_datetime = "start_datetime_example" # String | The UTC DateTime specifying the start of the result period.

end_datetime = "end_datetime_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Gets all payments managed by BillForward, within a date range.
  result = api_instance.get_billforward_managed_payments(start_datetime, end_datetime, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_billforward_managed_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_datetime** | **String**| The UTC DateTime specifying the start of the result period. | 
 **end_datetime** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**BillforwardManagedPaymentsResultPagedMetadata**](BillforwardManagedPaymentsResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_churn**
> CassChurnResultPagedMetadata get_churn(start_datetime, end_datetime, opts)

Gets churn, within a date range.

{\"nickname\":\"Get churn\",\"response\":\"getChurn.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

start_datetime = "start_datetime_example" # String | The UTC DateTime specifying the start of the result period.

end_datetime = "end_datetime_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Gets churn, within a date range.
  result = api_instance.get_churn(start_datetime, end_datetime, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_churn: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_datetime** | **String**| The UTC DateTime specifying the start of the result period. | 
 **end_datetime** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**CassChurnResultPagedMetadata**](CassChurnResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_debts**
> DebtsResultPagedMetadata get_debts(start_datetime, end_datetime, opts)

Gets debts within a date range.

{\"nickname\":\"Get debts\",\"response\":\"getDebts.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

start_datetime = "start_datetime_example" # String | The UTC DateTime specifying the start of the result period.

end_datetime = "end_datetime_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Gets debts within a date range.
  result = api_instance.get_debts(start_datetime, end_datetime, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_debts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_datetime** | **String**| The UTC DateTime specifying the start of the result period. | 
 **end_datetime** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**DebtsResultPagedMetadata**](DebtsResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_payments**
> CassPaymentResultPagedMetadata get_payments(start_datetime, end_datetime, opts)

Gets payments within a date range.

{\"nickname\":\"Get all payments\",\"response\":\"getPayments.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

start_datetime = "start_datetime_example" # String | The UTC DateTime specifying the start of the result period.

end_datetime = "end_datetime_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Gets payments within a date range.
  result = api_instance.get_payments(start_datetime, end_datetime, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_datetime** | **String**| The UTC DateTime specifying the start of the result period. | 
 **end_datetime** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**CassPaymentResultPagedMetadata**](CassPaymentResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_product_payments**
> ProductPaymentsResultPagedMetadata get_product_payments(payments_per_product)

Gets hourly payments per product, within a date range.

{\"nickname\" : \"Get payments per product\",\"response\" : \"getProductPayments.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

payments_per_product = Bfwd::BillingEntityBase.new # BillingEntityBase | The payments-per-product object.


begin
  #Gets hourly payments per product, within a date range.
  result = api_instance.get_product_payments(payments_per_product)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_product_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payments_per_product** | [**BillingEntityBase**](BillingEntityBase.md)| The payments-per-product object. | 

### Return type

[**ProductPaymentsResultPagedMetadata**](ProductPaymentsResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_product_rate_plan_payments**
> ProductRatePlanPaymentsResultPagedMetadata get_product_rate_plan_payments(payments_per_product_rate_plan)

Gets hourly payments per product, within a date range.

{\"nickname\" : \"Get payments per rate plan\",\"response\" : \"getRatePlanPayments.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

payments_per_product_rate_plan = Bfwd::BillingEntityBase.new # BillingEntityBase | The payments-per-product-rate-plan object.


begin
  #Gets hourly payments per product, within a date range.
  result = api_instance.get_product_rate_plan_payments(payments_per_product_rate_plan)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_product_rate_plan_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payments_per_product_rate_plan** | [**BillingEntityBase**](BillingEntityBase.md)| The payments-per-product-rate-plan object. | 

### Return type

[**ProductRatePlanPaymentsResultPagedMetadata**](ProductRatePlanPaymentsResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_subscription_ltv**
> SubscriptionLTVResultPagedMetadata get_subscription_ltv(subscription_id, end_datetime, opts)

Gets a subscription's life-time value, as of a given end date.

{\"nickname\":\"Get sub life-time value\",\"response\":\"getSubscriptionLTV.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

subscription_id = "subscription_id_example" # String | The id of the subscription.

end_datetime = "end_datetime_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Gets a subscription's life-time value, as of a given end date.
  result = api_instance.get_subscription_ltv(subscription_id, end_datetime, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_subscription_ltv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The id of the subscription. | 
 **end_datetime** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**SubscriptionLTVResultPagedMetadata**](SubscriptionLTVResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_upgrades**
> CassUpgradeResultPagedMetadata get_upgrades(start_datetime, end_datetime, opts)

Gets upgrades, within a date range.

{\"nickname\":\"Get upgrades\",\"response\":\"getUpgrades.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AnalyticsApi.new

start_datetime = "start_datetime_example" # String | The UTC DateTime specifying the start of the result period.

end_datetime = "end_datetime_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Gets upgrades, within a date range.
  result = api_instance.get_upgrades(start_datetime, end_datetime, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AnalyticsApi->get_upgrades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_datetime** | **String**| The UTC DateTime specifying the start of the result period. | 
 **end_datetime** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**CassUpgradeResultPagedMetadata**](CassUpgradeResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



