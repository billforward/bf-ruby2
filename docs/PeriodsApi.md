# Bfwd::PeriodsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_periods_for_subscription**](PeriodsApi.md#get_all_periods_for_subscription) | **GET** /periods/{subscription-id} | Retrieve by subscription)
[**get_latest_periods**](PeriodsApi.md#get_latest_periods) | **GET** /periods | Get all periods


# **get_all_periods_for_subscription**
> PeriodPagedMetadata get_all_periods_for_subscription(subscription_id, opts)

Retrieve by subscription)

{ \"nickname\" : \"Retrieve by subscription\",\"response\" : \"getPeriodsForSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PeriodsApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the usage.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieve by subscription)
  result = api_instance.get_all_periods_for_subscription(subscription_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PeriodsApi->get_all_periods_for_subscription: #{e}"
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

[**PeriodPagedMetadata**](PeriodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_latest_periods**
> PeriodPagedMetadata get_latest_periods(opts)

Get all periods

{ \"nickname\" : \"Get all periods\",\"response\" : \"getPeriods.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PeriodsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Get all periods
  result = api_instance.get_latest_periods(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PeriodsApi->get_latest_periods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**PeriodPagedMetadata**](PeriodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



