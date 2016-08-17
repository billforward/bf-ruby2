# BillForward::TaxationlinksApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_taxation_link**](TaxationlinksApi.md#create_taxation_link) | **POST** /taxation-links | Create
[**get_all_taxation_links**](TaxationlinksApi.md#get_all_taxation_links) | **GET** /taxation-links | Returns a collection of all taxation-links. By default 10 values are returned. Records are returned in natural order.
[**get_taxation_link_by_id**](TaxationlinksApi.md#get_taxation_link_by_id) | **GET** /taxation-links/{taxation-link-ID} | Returns a single taxation-link, specified by the taxation-link-ID parameter.
[**get_taxation_link_by_product_rate_plan**](TaxationlinksApi.md#get_taxation_link_by_product_rate_plan) | **GET** /taxation-links/product-rate-plan/{product-rate-plan-ID} | Returns a collection of taxation-links, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_taxation_link_by_taxation_strategy**](TaxationlinksApi.md#get_taxation_link_by_taxation_strategy) | **GET** /taxation-links/taxation-strategy/{taxation-strategy-ID} | Returns a collection of taxation-links, specified by the taxation-strategy-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**update_taxation_link**](TaxationlinksApi.md#update_taxation_link) | **PUT** /taxation-links | Update


# **create_taxation_link**
> TaxationLinkPagedMetadata create_taxation_link(taxation_link)

Create

{\"nickname\":\"Add a taxation strategy to a rate-plan\",\"request\":\"createTaxationLinkRequest.html\",\"response\":\"createTaxationLinkResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationlinksApi.new

taxation_link = BillForward::MutableBillingEntity.new # MutableBillingEntity | The taxation-link object to be updated.


begin
  #Create
  result = api_instance.create_taxation_link(taxation_link)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationlinksApi->create_taxation_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxation_link** | [**MutableBillingEntity**](MutableBillingEntity.md)| The taxation-link object to be updated. | 

### Return type

[**TaxationLinkPagedMetadata**](TaxationLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_taxation_links**
> TaxationLinkPagedMetadata get_all_taxation_links(opts)

Returns a collection of all taxation-links. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all taxation links\",\"response\":\"getTaxationLinkAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationlinksApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all taxation-links. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_taxation_links(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationlinksApi->get_all_taxation_links: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**TaxationLinkPagedMetadata**](TaxationLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_taxation_link_by_id**
> TaxationLinkPagedMetadata get_taxation_link_by_id(taxation_link_id, opts)

Returns a single taxation-link, specified by the taxation-link-ID parameter.

{\"nickname\":\"Retrieve an existing taxation link\",\"response\":\"getTaxationLinkByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationlinksApi.new

taxation_link_id = "taxation_link_id_example" # String | The unique ID of the Taxation Link.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single taxation-link, specified by the taxation-link-ID parameter.
  result = api_instance.get_taxation_link_by_id(taxation_link_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationlinksApi->get_taxation_link_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxation_link_id** | **String**| The unique ID of the Taxation Link. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**TaxationLinkPagedMetadata**](TaxationLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_taxation_link_by_product_rate_plan**
> TaxationLinkPagedMetadata get_taxation_link_by_product_rate_plan(product_rate_plan_id, opts)

Returns a collection of taxation-links, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by rate-plan\",\"response\":\"getTaxationLinkByPRPID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationlinksApi.new

product_rate_plan_id = "product_rate_plan_id_example" # String | The ID of the product-rate-plan

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of taxation-links, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_taxation_link_by_product_rate_plan(product_rate_plan_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationlinksApi->get_taxation_link_by_product_rate_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_rate_plan_id** | **String**| The ID of the product-rate-plan | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**TaxationLinkPagedMetadata**](TaxationLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_taxation_link_by_taxation_strategy**
> TaxationLinkPagedMetadata get_taxation_link_by_taxation_strategy(taxation_strategy_id, opts)

Returns a collection of taxation-links, specified by the taxation-strategy-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by taxation strategy\",\"response\":\"getTaxationLinkByTSID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationlinksApi.new

taxation_strategy_id = "taxation_strategy_id_example" # String | The ID of the taxation-strategy

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of taxation-links, specified by the taxation-strategy-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_taxation_link_by_taxation_strategy(taxation_strategy_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationlinksApi->get_taxation_link_by_taxation_strategy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxation_strategy_id** | **String**| The ID of the taxation-strategy | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**TaxationLinkPagedMetadata**](TaxationLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_taxation_link**
> TaxationLinkPagedMetadata update_taxation_link(taxation_link)

Update

{\"nickname\":\"Change taxation linked to rate-plan\",\"request\":\"updateTaxationLinkRequest.html\",\"response\":\"updateTaxationLinkResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationlinksApi.new

taxation_link = BillForward::MutableBillingEntity.new # MutableBillingEntity | The taxation-link object to be updated.


begin
  #Update
  result = api_instance.update_taxation_link(taxation_link)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationlinksApi->update_taxation_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxation_link** | [**MutableBillingEntity**](MutableBillingEntity.md)| The taxation-link object to be updated. | 

### Return type

[**TaxationLinkPagedMetadata**](TaxationLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



