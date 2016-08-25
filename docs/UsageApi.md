# Bfwd::UsageApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_usage_instance**](UsageApi.md#create_usage_instance) | **POST** /usage | Add usage
[**get_usage_by_id**](UsageApi.md#get_usage_by_id) | **GET** /usage/{subscription-id}/{period-id} | Retrieve by subscription and period
[**get_usage_by_subscription_id**](UsageApi.md#get_usage_by_subscription_id) | **GET** /usage/{subscription-id} | Retrieve by subscription
[**get_usage_by_subscription_id_uo_m_period_and_usage_type**](UsageApi.md#get_usage_by_subscription_id_uo_m_period_and_usage_type) | **GET** /usage/{subscription-id}/{uom}/{period-id}/{usage-type} | Retrieve by subscription, period and type
[**update_usage_instance**](UsageApi.md#update_usage_instance) | **PUT** /usage | Update usage


# **create_usage_instance**
> UsagePagedMetadata create_usage_instance(usage)

Add usage

{\"nickname\":\"Add usage\",\"request\":\"createUsageRequest.html\",\"response\":\"createUsageResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageApi.new

usage = Bfwd::CompoundUsage.new # CompoundUsage | An array of The 'Usage' objects to be created.


begin
  #Add usage
  result = api_instance.create_usage_instance(usage)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageApi->create_usage_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage** | [**CompoundUsage**](CompoundUsage.md)| An array of The &#39;Usage&#39; objects to be created. | 

### Return type

[**UsagePagedMetadata**](UsagePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_usage_by_id**
> UsagePagedMetadata get_usage_by_id(subscription_id, period_id, opts)

Retrieve by subscription and period

{\"nickname\":\"Retrieve by subscription and period\",\"response\":\"getUsageForPeriod.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageApi.new

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
  result = api_instance.get_usage_by_id(subscription_id, period_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageApi->get_usage_by_id: #{e}"
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

[**UsagePagedMetadata**](UsagePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_usage_by_subscription_id**
> UsagePagedMetadata get_usage_by_subscription_id(subscription_id, opts)

Retrieve by subscription

{\"nickname\":\"Retrieve by subscription\",\"response\":\"getUsage.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the subscription whose Usage instances you wish to GET.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieve by subscription
  result = api_instance.get_usage_by_subscription_id(subscription_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageApi->get_usage_by_subscription_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The subscriptionID of the subscription whose Usage instances you wish to GET. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**UsagePagedMetadata**](UsagePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_usage_by_subscription_id_uo_m_period_and_usage_type**
> UsagePagedMetadata get_usage_by_subscription_id_uo_m_period_and_usage_type(subscription_id, uom, period_id, usage_type, opts)

Retrieve by subscription, period and type

{\"nickname\":\"Retrieve by subscription, period and type\",\"response\":\"getDetailedUsageForPeriod.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the usage.

uom = "uom_example" # String | The uom of the usage.

period_id = 56 # Integer | The periodID of the usage.

usage_type = "usage_type_example" # String | The type of the usage.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieve by subscription, period and type
  result = api_instance.get_usage_by_subscription_id_uo_m_period_and_usage_type(subscription_id, uom, period_id, usage_type, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageApi->get_usage_by_subscription_id_uo_m_period_and_usage_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The subscriptionID of the usage. | 
 **uom** | **String**| The uom of the usage. | 
 **period_id** | **Integer**| The periodID of the usage. | 
 **usage_type** | **String**| The type of the usage. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**UsagePagedMetadata**](UsagePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **update_usage_instance**
> UsagePagedMetadata update_usage_instance(usage)

Update usage

{\"nickname\":\"Update usage\",\"request\":\"updateUsageRequest.html\",\"response\":\"updateUsageResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageApi.new

usage = Bfwd::CompoundUsage.new # CompoundUsage | An array of The 'Usage' objects to be updated.


begin
  #Update usage
  result = api_instance.update_usage_instance(usage)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageApi->update_usage_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage** | [**CompoundUsage**](CompoundUsage.md)| An array of The &#39;Usage&#39; objects to be updated. | 

### Return type

[**UsagePagedMetadata**](UsagePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



