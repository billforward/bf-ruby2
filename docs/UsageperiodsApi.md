# BillForward::UsageperiodsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_usage_period**](UsageperiodsApi.md#get_usage_period) | **GET** /usage-periods/{subscription-id}/{period-id} | Retrieve by subscription and period
[**get_usage_period_for_all**](UsageperiodsApi.md#get_usage_period_for_all) | **GET** /usage-periods/{subscription-id} | Retrieve by subscription
[**get_usage_period_for_invoice**](UsageperiodsApi.md#get_usage_period_for_invoice) | **GET** /usage-periods/{subscription-id}/invoice/{invoice-id} | Retrieve by invoice)


# **get_usage_period**
> UsagePeriodPagedMetadata get_usage_period(subscription_id, period_id, opts)

Retrieve by subscription and period

{ \"nickname\" : \"Retrieve by subscription and period\",\"response\" : \"getUsagePeriodsForPeriod.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UsageperiodsApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the usage.

period_id = 56 # Integer | The periodID of the usage.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieve by subscription and period
  result = api_instance.get_usage_period(subscription_id, period_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UsageperiodsApi->get_usage_period: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The subscriptionID of the usage. | 
 **period_id** | **Integer**| The periodID of the usage. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**UsagePeriodPagedMetadata**](UsagePeriodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_period_for_all**
> UsagePeriodPagedMetadata get_usage_period_for_all(subscription_id, opts)

Retrieve by subscription

{ \"nickname\" : \"Retrieve by subscription\",\"response\" : \"getUsagePeriods.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UsageperiodsApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the usage.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieve by subscription
  result = api_instance.get_usage_period_for_all(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UsageperiodsApi->get_usage_period_for_all: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The subscriptionID of the usage. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**UsagePeriodPagedMetadata**](UsagePeriodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage_period_for_invoice**
> UsagePeriodPagedMetadata get_usage_period_for_invoice(subscription_id, invoice_id, opts)

Retrieve by invoice)

{ \"nickname\" : \"Retrieve by invoice\",\"response\" : \"getUsagePeriodForInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UsageperiodsApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the usage.

invoice_id = "invoice_id_example" # String | The invoiceID of the usage.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieve by invoice)
  result = api_instance.get_usage_period_for_invoice(subscription_id, invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UsageperiodsApi->get_usage_period_for_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The subscriptionID of the usage. | 
 **invoice_id** | **String**| The invoiceID of the usage. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**UsagePeriodPagedMetadata**](UsagePeriodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



