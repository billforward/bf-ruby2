# BillForward::PricingcomponenttiersApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pricing_component_tier**](PricingcomponenttiersApi.md#create_pricing_component_tier) | **POST** /pricing-component-tiers | Create
[**get_all_pricing_component_tiers**](PricingcomponenttiersApi.md#get_all_pricing_component_tiers) | **GET** /pricing-component-tiers | Returns a collection of pricing-component-tier-tiers. By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_tier**](PricingcomponenttiersApi.md#get_pricing_component_tier) | **GET** /pricing-component-tiers/{pricing-component-tier-ID} | Returns a collection of pricing-component-tier-tiers, specified by the pricing-component-tier-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_tier_by_product_rate_plan_id**](PricingcomponenttiersApi.md#get_pricing_component_tier_by_product_rate_plan_id) | **GET** /pricing-component-tiers/product-rate-plan/{product-rate-plan-ID} | Returns a collection of pricing-component-tier-tiers, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**update_pricing_component_tier**](PricingcomponenttiersApi.md#update_pricing_component_tier) | **PUT** /pricing-component-tiers | Update.


# **create_pricing_component_tier**
> PricingComponentTierPagedMetadata create_pricing_component_tier(pricing_component_tier)

Create

{\"nickname\":\"Create a new tier\",\"request\":\"createPricingComponentTierRequest.html\",\"response\":\"createPricingComponentTierResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponenttiersApi.new

pricing_component_tier = BillForward::PricingComponentTier.new # PricingComponentTier | The pricing-component-tier object to be updated.


begin
  #Create
  result = api_instance.create_pricing_component_tier(pricing_component_tier)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponenttiersApi->create_pricing_component_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_tier** | [**PricingComponentTier**](PricingComponentTier.md)| The pricing-component-tier object to be updated. | 

### Return type

[**PricingComponentTierPagedMetadata**](PricingComponentTierPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_pricing_component_tiers**
> PricingComponentTierPagedMetadata get_all_pricing_component_tiers(opts)

Returns a collection of pricing-component-tier-tiers. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all tiers\",\"response\":\"getPricingComponentTiersAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponenttiersApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-tier-tier to return.
  records: 10, # Integer | The maximum number of pricing-component-tier-tiers to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of pricing-component-tier-tiers. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_pricing_component_tiers(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponenttiersApi->get_all_pricing_component_tiers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-tier-tier to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-tier-tiers to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PricingComponentTierPagedMetadata**](PricingComponentTierPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_pricing_component_tier**
> PricingComponentTierPagedMetadata get_pricing_component_tier(pricing_component_tier_id, opts)

Returns a collection of pricing-component-tier-tiers, specified by the pricing-component-tier-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve an existing tier\",\"response\":\"getPricingComponentTiersByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponenttiersApi.new

pricing_component_tier_id = "pricing_component_tier_id_example" # String | The string ID of the pricing-component-tier-tier.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-tier-tier to return.
  records: 10, # Integer | The maximum number of pricing-component-tier-tiers to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of pricing-component-tier-tiers, specified by the pricing-component-tier-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_tier(pricing_component_tier_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponenttiersApi->get_pricing_component_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_tier_id** | **String**| The string ID of the pricing-component-tier-tier. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-tier-tier to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-tier-tiers to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PricingComponentTierPagedMetadata**](PricingComponentTierPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_pricing_component_tier_by_product_rate_plan_id**
> PricingComponentTierPagedMetadata get_pricing_component_tier_by_product_rate_plan_id(product_rate_plan_id, opts)

Returns a collection of pricing-component-tier-tiers, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by rate-plan\",\"response\":\"getPricingComponentTiersByPRP.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponenttiersApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | The string product-rate-plan-ID of the pricing-component-tier-tier.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-tier-tier to return.
  records: 10, # Integer | The maximum number of pricing-component-tier-tiers to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of pricing-component-tier-tiers, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_tier_by_product_rate_plan_id(product_rate_plan_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponenttiersApi->get_pricing_component_tier_by_product_rate_plan_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**| The string product-rate-plan-ID of the pricing-component-tier-tier. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-tier-tier to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-tier-tiers to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PricingComponentTierPagedMetadata**](PricingComponentTierPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_pricing_component_tier**
> PricingComponentTierPagedMetadata update_pricing_component_tier(pricing_component_tier)

Update.

{\"nickname\":\"Update a tier\",\"request\":\"updatePricingComponentTierRequest.html\",\"response\":\"updatePricingComponentTierResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponenttiersApi.new

pricing_component_tier = BillForward::PricingComponentTier.new # PricingComponentTier | The pricing-component-tier object to be updated.


begin
  #Update.
  result = api_instance.update_pricing_component_tier(pricing_component_tier)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponenttiersApi->update_pricing_component_tier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_tier** | [**PricingComponentTier**](PricingComponentTier.md)| The pricing-component-tier object to be updated. | 

### Return type

[**PricingComponentTierPagedMetadata**](PricingComponentTierPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



