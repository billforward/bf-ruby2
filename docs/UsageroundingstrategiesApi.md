# Bfwd::UsageroundingstrategiesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_usage_rounding_strategy**](UsageroundingstrategiesApi.md#create_usage_rounding_strategy) | **POST** /usage-rounding-strategies | Create a new rounding strategy
[**get_usage_rounding_strategy_by_id**](UsageroundingstrategiesApi.md#get_usage_rounding_strategy_by_id) | **GET** /usage-rounding-strategies/{usage-rounding-strategies-ID} | Returns a collection of usage-rounding-strategies, specified by the usage-rounding-strategies-id parameter. By default 10 values are returned. Records are returned in natural order.
[**get_usage_rounding_strategy_by_pricing_component_id**](UsageroundingstrategiesApi.md#get_usage_rounding_strategy_by_pricing_component_id) | **GET** /usage-rounding-strategies/pricing-component/{pricing-component-ID} | Returns a collection of usage-rounding-strategies, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**update_usage_rounding_strategy**](UsageroundingstrategiesApi.md#update_usage_rounding_strategy) | **PUT** /usage-rounding-strategies | Update a rounding strategy


# **create_usage_rounding_strategy**
> UsageRoundingStrategyPagedMetadata create_usage_rounding_strategy(usage_rounding_strategy)

Create a new rounding strategy

{\"nickname\":\"Create a new rounding strategy\",\"request\":\"createUsageRoundingStrategiesRequest.html\",\"response\":\"createUsageRoundingStrategiesResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageroundingstrategiesApi.new

usage_rounding_strategy = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The usage-rounding-strategy object to be created.


begin
  #Create a new rounding strategy
  result = api_instance.create_usage_rounding_strategy(usage_rounding_strategy)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageroundingstrategiesApi->create_usage_rounding_strategy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_rounding_strategy** | [**MutableBillingEntity**](MutableBillingEntity.md)| The usage-rounding-strategy object to be created. | 

### Return type

[**UsageRoundingStrategyPagedMetadata**](UsageRoundingStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_usage_rounding_strategy_by_id**
> UsageRoundingStrategyPagedMetadata get_usage_rounding_strategy_by_id(usage_rounding_strategies_id, opts)

Returns a collection of usage-rounding-strategies, specified by the usage-rounding-strategies-id parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve an existing round strategy\",\"response\":\"getUsageRoundingStrategiesByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageroundingstrategiesApi.new

usage_rounding_strategies_id = "usage_rounding_strategies_id_example" # String | The string ID of the usage-rounding-strategies.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component to return.
  records: 10, # Integer | The maximum number of pricing-components to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of usage-rounding-strategies, specified by the usage-rounding-strategies-id parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_usage_rounding_strategy_by_id(usage_rounding_strategies_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageroundingstrategiesApi->get_usage_rounding_strategy_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_rounding_strategies_id** | **String**| The string ID of the usage-rounding-strategies. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-components to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**UsageRoundingStrategyPagedMetadata**](UsageRoundingStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_usage_rounding_strategy_by_pricing_component_id**
> UsageRoundingStrategyPagedMetadata get_usage_rounding_strategy_by_pricing_component_id(pricing_component_id, opts)

Returns a collection of usage-rounding-strategies, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by pricing component\",\"response\":\"getUsageRoundingStrategiesByPricingComponent.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageroundingstrategiesApi.new

pricing_component_id = "pricing_component_id_example" # String | The string pricing-component-ID of the pricing-component.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component to return.
  records: 10, # Integer | The maximum number of pricing-components to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of usage-rounding-strategies, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_usage_rounding_strategy_by_pricing_component_id(pricing_component_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageroundingstrategiesApi->get_usage_rounding_strategy_by_pricing_component_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_id** | **String**| The string pricing-component-ID of the pricing-component. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-components to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**UsageRoundingStrategyPagedMetadata**](UsageRoundingStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_usage_rounding_strategy**
> UsageRoundingStrategyPagedMetadata update_usage_rounding_strategy(usage_rounding_strategy)

Update a rounding strategy

{\"nickname\":\"Update a rounding strategy\",\"request\":\"updateUsageRoundingStrategiesRequest.html\",\"response\":\"updateUsageRoundingStrategiesResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsageroundingstrategiesApi.new

usage_rounding_strategy = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The usage-rounding-strategy object to be updated.


begin
  #Update a rounding strategy
  result = api_instance.update_usage_rounding_strategy(usage_rounding_strategy)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsageroundingstrategiesApi->update_usage_rounding_strategy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_rounding_strategy** | [**MutableBillingEntity**](MutableBillingEntity.md)| The usage-rounding-strategy object to be updated. | 

### Return type

[**UsageRoundingStrategyPagedMetadata**](UsageRoundingStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



