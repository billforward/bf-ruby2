# Bfwd::PricingcomponentsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pricing_component**](PricingcomponentsApi.md#create_pricing_component) | **POST** /pricing-components | Create a pricing-component.
[**get_all_pricing_components**](PricingcomponentsApi.md#get_all_pricing_components) | **GET** /pricing-components | Returns a collection of pricing-components. By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component**](PricingcomponentsApi.md#get_pricing_component) | **GET** /pricing-components/{pricing-component-ID} | Returns a collection of pricing-components, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_by_product_rate_plan_id**](PricingcomponentsApi.md#get_pricing_component_by_product_rate_plan_id) | **GET** /pricing-components/product-rate-plan/{product-rate-plan-ID} | Returns a collection of pricing-components, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**retire_pricing_component**](PricingcomponentsApi.md#retire_pricing_component) | **DELETE** /pricing-components/{pricing-component-ID} | Retires the pricing-component specified by the pricing-component-ID parameter.
[**update_pricing_component**](PricingcomponentsApi.md#update_pricing_component) | **PUT** /pricing-components | Update a pricing-component.


# **create_pricing_component**
> PricingComponentPagedMetadata create_pricing_component(pricing_component)

Create a pricing-component.

{\"nickname\":\"Create a new pricing-component\",\"request\":\"createPricingComponentRequest.html\",\"response\":\"createPricingComponentResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PricingcomponentsApi.new

pricing_component = Bfwd::PricingComponent.new # PricingComponent | The pricing-component object to be updated.


begin
  #Create a pricing-component.
  result = api_instance.create_pricing_component(pricing_component)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PricingcomponentsApi->create_pricing_component: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component** | [**PricingComponent**](PricingComponent.md)| The pricing-component object to be updated. | 

### Return type

[**PricingComponentPagedMetadata**](PricingComponentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_pricing_components**
> PricingComponentPagedMetadata get_all_pricing_components(opts)

Returns a collection of pricing-components. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all pricing-components\",\"response\":\"getPricingComponentsAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PricingcomponentsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component to return.
  records: 10, # Integer | The maximum number of pricing-components to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of pricing-components. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_pricing_components(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PricingcomponentsApi->get_all_pricing_components: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-components to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PricingComponentPagedMetadata**](PricingComponentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_pricing_component**
> PricingComponentPagedMetadata get_pricing_component(pricing_component_id, opts)

Returns a collection of pricing-components, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve an existing pricing-component\",\"response\":\"getPricingComponentsByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PricingcomponentsApi.new

pricing_component_id = "pricing_component_id_example" # String | The string ID of the pricing-component.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component to return.
  records: 10, # Integer | The maximum number of pricing-components to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of pricing-components, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component(pricing_component_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PricingcomponentsApi->get_pricing_component: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_id** | **String**| The string ID of the pricing-component. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-components to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PricingComponentPagedMetadata**](PricingComponentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_pricing_component_by_product_rate_plan_id**
> PricingComponentPagedMetadata get_pricing_component_by_product_rate_plan_id(product_rate_plan_id, opts)

Returns a collection of pricing-components, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by rate-plan\",\"response\":\"getPricingComponentsByPRP.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PricingcomponentsApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | The string product-rate-plan-ID of the pricing-component.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component to return.
  records: 10, # Integer | The maximum number of pricing-components to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of pricing-components, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_by_product_rate_plan_id(product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PricingcomponentsApi->get_pricing_component_by_product_rate_plan_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**| The string product-rate-plan-ID of the pricing-component. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-components to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PricingComponentPagedMetadata**](PricingComponentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **retire_pricing_component**
> PricingComponentPagedMetadata retire_pricing_component(pricing_component_id, opts)

Retires the pricing-component specified by the pricing-component-ID parameter.

{\"nickname\":\"Delete a pricing-component\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PricingcomponentsApi.new

pricing_component_id = "pricing_component_id_example" # String | The string ID of the pricing-component.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization IDs used to restrict the scope of API calls.
}

begin
  #Retires the pricing-component specified by the pricing-component-ID parameter.
  result = api_instance.retire_pricing_component(pricing_component_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PricingcomponentsApi->retire_pricing_component: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_id** | **String**| The string ID of the pricing-component. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PricingComponentPagedMetadata**](PricingComponentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_pricing_component**
> PricingComponentPagedMetadata update_pricing_component(pricing_component)

Update a pricing-component.

{\"nickname\":\"Update a pricing-component\",\"request\":\"updatePricingComponentRequest.html\",\"response\":\"updatePricingComponentResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PricingcomponentsApi.new

pricing_component = Bfwd::PricingComponent.new # PricingComponent | The pricing-component object to be updated.


begin
  #Update a pricing-component.
  result = api_instance.update_pricing_component(pricing_component)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PricingcomponentsApi->update_pricing_component: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component** | [**PricingComponent**](PricingComponent.md)| The pricing-component object to be updated. | 

### Return type

[**PricingComponentPagedMetadata**](PricingComponentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



