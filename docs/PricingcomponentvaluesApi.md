# BillForward::PricingcomponentvaluesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pricing_component_value**](PricingcomponentvaluesApi.md#create_pricing_component_value) | **POST** /pricing-component-values | Create a pricing-component-value.
[**get_all_pricing_component_values**](PricingcomponentvaluesApi.md#get_all_pricing_component_values) | **GET** /pricing-component-values | Returns a collection of pricing-component-values.By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_value**](PricingcomponentvaluesApi.md#get_pricing_component_value) | **GET** /pricing-component-values/{pricing-component-ID} | Returns a collection of pricing-component-values, specified by the pricing-component-ID parameter.By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_value_by_subscription_id**](PricingcomponentvaluesApi.md#get_pricing_component_value_by_subscription_id) | **GET** /pricing-component-values/subscription/{subscription-ID} | Returns a collection of pricing-component-values, specified by the subscription-ID parameter.By default 10 values are returned. Records are returned in natural order.
[**update_pricing_component_value**](PricingcomponentvaluesApi.md#update_pricing_component_value) | **PUT** /pricing-component-values | Update a pricing-component-value.


# **create_pricing_component_value**
> PricingComponentValuePagedMetadata create_pricing_component_value(pricing_component_value)

Create a pricing-component-value.

{\"nickname\":\"Create a new value\",\"request\":\"createPricingComponentValueRequest.html\",\"response\":\"createPricingComponentValueResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluesApi.new

pricing_component_value = BillForward::PricingComponentValue.new # PricingComponentValue | The pricing-component-value object to be updated.


begin
  #Create a pricing-component-value.
  result = api_instance.create_pricing_component_value(pricing_component_value)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluesApi->create_pricing_component_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_value** | [**PricingComponentValue**](PricingComponentValue.md)| The pricing-component-value object to be updated. | 

### Return type

[**PricingComponentValuePagedMetadata**](PricingComponentValuePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_pricing_component_values**
> PricingComponentValuePagedMetadata get_all_pricing_component_values(opts)

Returns a collection of pricing-component-values.By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all values\",\"response\":\"getPricingComponentValueAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-value to return.
  records: 10, # Integer | The maximum number of pricing-component-values to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of pricing-component-values.By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_pricing_component_values(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluesApi->get_all_pricing_component_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-value to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-values to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PricingComponentValuePagedMetadata**](PricingComponentValuePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pricing_component_value**
> PricingComponentValuePagedMetadata get_pricing_component_value(pricing_component_id, opts)

Returns a collection of pricing-component-values, specified by the pricing-component-ID parameter.By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get existing values\",\"response\":\"getPricingComponentValueByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluesApi.new

pricing_component_id = "pricing_component_id_example" # String | The string ID of the pricing-component-value.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-value to return.
  records: 10, # Integer | The maximum number of pricing-component-values to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of pricing-component-values, specified by the pricing-component-ID parameter.By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_value(pricing_component_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluesApi->get_pricing_component_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_id** | **String**| The string ID of the pricing-component-value. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-value to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-values to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PricingComponentValuePagedMetadata**](PricingComponentValuePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_pricing_component_value_by_subscription_id**
> PricingComponentValuePagedMetadata get_pricing_component_value_by_subscription_id(subscription_id, opts)

Returns a collection of pricing-component-values, specified by the subscription-ID parameter.By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by subscription\",\"response\":\"getPricingComponentValueBySubscriptionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluesApi.new

subscription_id = "subscription_id_example" # String | The string subscription-ID of the pricing-component-value.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-value to return.
  records: 10, # Integer | The maximum number of pricing-component-values to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of pricing-component-values, specified by the subscription-ID parameter.By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_value_by_subscription_id(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluesApi->get_pricing_component_value_by_subscription_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The string subscription-ID of the pricing-component-value. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-value to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-values to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PricingComponentValuePagedMetadata**](PricingComponentValuePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_pricing_component_value**
> PricingComponentValuePagedMetadata update_pricing_component_value(pricing_component_value)

Update a pricing-component-value.

{\"nickname\":\"Update a value\",\"request\":\"updatePricingComponentValueRequest.html\",\"response\":\"updatePricingComponentValueResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluesApi.new

pricing_component_value = BillForward::PricingComponentValue.new # PricingComponentValue | The pricing-component-value object to be updated.


begin
  #Update a pricing-component-value.
  result = api_instance.update_pricing_component_value(pricing_component_value)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluesApi->update_pricing_component_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_value** | [**PricingComponentValue**](PricingComponentValue.md)| The pricing-component-value object to be updated. | 

### Return type

[**PricingComponentValuePagedMetadata**](PricingComponentValuePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



