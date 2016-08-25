# Bfwd::ProductrateplansApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_taxation_strategy_to_rate_plan**](ProductrateplansApi.md#add_taxation_strategy_to_rate_plan) | **POST** /product-rate-plans/{product-rate-plan-ID}/tax | Adds or re-enables the specified taxation-strategy for the given product-rate-plan.
[**create_rate_plan**](ProductrateplansApi.md#create_rate_plan) | **POST** /product-rate-plans | Create a new rate-plan.
[**delete_metadata_for_rate_plan**](ProductrateplansApi.md#delete_metadata_for_rate_plan) | **DELETE** /product-rate-plans/{product-rate-plan-ID}/metadata | Remove any associated metadata.
[**get_all_rate_plans**](ProductrateplansApi.md#get_all_rate_plans) | **GET** /product-rate-plans | Returns a collection of product-rate-plans. By default 10 values are returned. Records are returned in natural order.
[**get_available_taxation_strategies_for_rate_plan**](ProductrateplansApi.md#get_available_taxation_strategies_for_rate_plan) | **GET** /product-rate-plans/{product-rate-plan-ID}/tax | Returns all available taxes for the specified product-rate-plan. By default 10 values are returned. Records are returned in natural order.
[**get_metadata_for_rate_plan**](ProductrateplansApi.md#get_metadata_for_rate_plan) | **GET** /product-rate-plans/{product-rate-plan-ID}/metadata | Retrieve any associated metadata.
[**get_product_rate_plan_by_id**](ProductrateplansApi.md#get_product_rate_plan_by_id) | **GET** /product-rate-plans/{product-rate-plan-ID} | Returns product-rate-plans, specified by the product-rate-plan id or name.
[**get_rate_plan_by_product**](ProductrateplansApi.md#get_rate_plan_by_product) | **GET** /product-rate-plans/product/{product-ID} | Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_rate_plan_by_product_and_rate_plan**](ProductrateplansApi.md#get_rate_plan_by_product_and_rate_plan) | **GET** /product-rate-plans/product/{product-ID}/rate-plan/{rate-plan-ID} | Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**remove_taxation_strategy_from_rate_plan**](ProductrateplansApi.md#remove_taxation_strategy_from_rate_plan) | **DELETE** /product-rate-plans/{product-rate-plan-ID}/tax/{taxation-strategy-ID} | Removes the specified taxation-strategy for the given product-rate-plan.
[**retire_rate_plan**](ProductrateplansApi.md#retire_rate_plan) | **DELETE** /product-rate-plans/{product-rate-plan-ID} | Retires the product-rate-plan specified product-rate-plan-ID.
[**set_metadata_for_rate_plan**](ProductrateplansApi.md#set_metadata_for_rate_plan) | **POST** /product-rate-plans/{product-rate-plan-ID}/metadata | Remove any existing metadata keys and create the provided data.
[**update_rate_plan**](ProductrateplansApi.md#update_rate_plan) | **PUT** /product-rate-plans | Update a rate-plan.
[**upsert_metadata_for_rate_plan**](ProductrateplansApi.md#upsert_metadata_for_rate_plan) | **PUT** /product-rate-plans/{product-rate-plan-ID}/metadata | Update any existing metadata key-values and insert any new key-values, no keys will be removed.


# **add_taxation_strategy_to_rate_plan**
> TaxationStrategyPagedMetadata add_taxation_strategy_to_rate_plan(product_rate_plan_id, taxation_strategy)

Adds or re-enables the specified taxation-strategy for the given product-rate-plan.

{\"nickname\":\"Add tax\",\"response\":\"addTaxationStrategy.html\",\"request\":\"addTaxationStrategy.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | 

taxation_strategy = Bfwd::AddTaxationStrategyRequest.new # AddTaxationStrategyRequest | The taxation-strategy


begin
  #Adds or re-enables the specified taxation-strategy for the given product-rate-plan.
  result = api_instance.add_taxation_strategy_to_rate_plan(product_rate_plan_id, taxation_strategy)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->add_taxation_strategy_to_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**|  | 
 **taxation_strategy** | [**AddTaxationStrategyRequest**](AddTaxationStrategyRequest.md)| The taxation-strategy | 

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **create_rate_plan**
> ProductRatePlanPagedMetadata create_rate_plan(product_rate_plan)

Create a new rate-plan.

{\"nickname\":\"Create a new rate-plan\",\"request\":\"createPRPRequest.html\",\"response\":\"createPRPResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan = Bfwd::ProductRatePlan.new # ProductRatePlan | The product-rate-plan object to be created.


begin
  #Create a new rate-plan.
  result = api_instance.create_rate_plan(product_rate_plan)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->create_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan** | [**ProductRatePlan**](ProductRatePlan.md)| The product-rate-plan object to be created. | 

### Return type

[**ProductRatePlanPagedMetadata**](ProductRatePlanPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_metadata_for_rate_plan**
> DynamicMetadata delete_metadata_for_rate_plan(product_rate_plan_id, opts)

Remove any associated metadata.

{\"nickname\":\"Clear metadata from rate-plan\",\"request\" :\"deleteRatePlanMetadataRequest.html\",\"response\":\"deleteRatePlanMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any associated metadata.
  result = api_instance.delete_metadata_for_rate_plan(product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->delete_metadata_for_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_all_rate_plans**
> ProductRatePlanPagedMetadata get_all_rate_plans(opts)

Returns a collection of product-rate-plans. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all rate-plans\",\"response\":\"getPRPAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  metadata: "metadata_example" # String | 
}

begin
  #Returns a collection of product-rate-plans. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_rate_plans(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->get_all_rate_plans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **metadata** | **String**|  | [optional] 

### Return type

[**ProductRatePlanPagedMetadata**](ProductRatePlanPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, text/plain



# **get_available_taxation_strategies_for_rate_plan**
> TaxationStrategyPagedMetadata get_available_taxation_strategies_for_rate_plan(product_rate_plan_id, opts)

Returns all available taxes for the specified product-rate-plan. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"List taxes\",\"response\":\"getAvailableTaxationStrategies.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns all available taxes for the specified product-rate-plan. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_available_taxation_strategies_for_rate_plan(product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->get_available_taxation_strategies_for_rate_plan: #{e}"
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

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_metadata_for_rate_plan**
> DynamicMetadata get_metadata_for_rate_plan(product_rate_plan_id, opts)

Retrieve any associated metadata.

{\"nickname\":\"Retrieve metadata on rate-plan\",\"request\":\"getRatePlanMetadataRequest.html\",\"response\":\"getRatePlanMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieve any associated metadata.
  result = api_instance.get_metadata_for_rate_plan(product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->get_metadata_for_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8, text/plain
 - **Accept**: application/json; charset=utf-8



# **get_product_rate_plan_by_id**
> ProductRatePlanPagedMetadata get_product_rate_plan_by_id(product_rate_plan_id, opts)

Returns product-rate-plans, specified by the product-rate-plan id or name.

{\"nickname\":\"Retrieve an existing rate-plan\",\"response\":\"getPRPByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | id or name of the product-rate-plan.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns product-rate-plans, specified by the product-rate-plan id or name.
  result = api_instance.get_product_rate_plan_by_id(product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->get_product_rate_plan_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**| id or name of the product-rate-plan. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**ProductRatePlanPagedMetadata**](ProductRatePlanPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_rate_plan_by_product**
> ProductRatePlanPagedMetadata get_rate_plan_by_product(product_id, opts)

Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by product\",\"response\":\"getPRPByProductID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_id = "product_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_rate_plan_by_product(product_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->get_rate_plan_by_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**ProductRatePlanPagedMetadata**](ProductRatePlanPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_rate_plan_by_product_and_rate_plan**
> ProductRatePlanPagedMetadata get_rate_plan_by_product_and_rate_plan(product_id, rate_plan_id, opts)

Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by name\",\"response\":\"getPRPByNameAndProduct.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_id = "product_id_example" # String | 

rate_plan_id = "rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_rate_plan_by_product_and_rate_plan(product_id, rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->get_rate_plan_by_product_and_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**|  | 
 **rate_plan_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**ProductRatePlanPagedMetadata**](ProductRatePlanPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **remove_taxation_strategy_from_rate_plan**
> TaxationStrategyPagedMetadata remove_taxation_strategy_from_rate_plan(product_rate_plan_id, taxation_strategy_id, opts)

Removes the specified taxation-strategy for the given product-rate-plan.

{\"nickname\":\"Remove tax\",\"response\":\"removeTaxationStrategy.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | 

taxation_strategy_id = "taxation_strategy_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Removes the specified taxation-strategy for the given product-rate-plan.
  result = api_instance.remove_taxation_strategy_from_rate_plan(product_rate_plan_id, taxation_strategy_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->remove_taxation_strategy_from_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**|  | 
 **taxation_strategy_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **retire_rate_plan**
> ProductRatePlanPagedMetadata retire_rate_plan(product_rate_plan_id, opts)

Retires the product-rate-plan specified product-rate-plan-ID.

{\"nickname\":\"Delete a rate-plan\",\"response\":\"deletePRP.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retires the product-rate-plan specified product-rate-plan-ID.
  result = api_instance.retire_rate_plan(product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->retire_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**ProductRatePlanPagedMetadata**](ProductRatePlanPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **set_metadata_for_rate_plan**
> DynamicMetadata set_metadata_for_rate_plan(metadata, product_rate_plan_id, opts)

Remove any existing metadata keys and create the provided data.

{\"nickname\":\"Set metadata on rate-plan\",\"request\":\"setRatePlanMetadataRequest.html\",\"response\":\"setRatePlanMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

metadata = Bfwd::DynamicMetadata.new # DynamicMetadata | 

product_rate_plan_id = "product_rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any existing metadata keys and create the provided data.
  result = api_instance.set_metadata_for_rate_plan(metadata, product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->set_metadata_for_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **product_rate_plan_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **update_rate_plan**
> ProductRatePlanPagedMetadata update_rate_plan(product_rate_plan)

Update a rate-plan.

{\"nickname\":\"Update a rate-plan\",\"request\":\"updatePRPRequest.html\",\"response\":\"updatePRPResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

product_rate_plan = Bfwd::ProductRatePlan.new # ProductRatePlan | The product-rate-plan object to be updated.


begin
  #Update a rate-plan.
  result = api_instance.update_rate_plan(product_rate_plan)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->update_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan** | [**ProductRatePlan**](ProductRatePlan.md)| The product-rate-plan object to be updated. | 

### Return type

[**ProductRatePlanPagedMetadata**](ProductRatePlanPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **upsert_metadata_for_rate_plan**
> DynamicMetadata upsert_metadata_for_rate_plan(metadata, product_rate_plan_id, opts)

Update any existing metadata key-values and insert any new key-values, no keys will be removed.

{\"nickname\":\"Upsert metadata on rate-plan\",\"request\":\"upsertRatePlanMetadataRequest.html\",\"response\":\"upsertRatePlanMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductrateplansApi.new

metadata = Bfwd::DynamicMetadata.new # DynamicMetadata | 

product_rate_plan_id = "product_rate_plan_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Update any existing metadata key-values and insert any new key-values, no keys will be removed.
  result = api_instance.upsert_metadata_for_rate_plan(metadata, product_rate_plan_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductrateplansApi->upsert_metadata_for_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **product_rate_plan_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



