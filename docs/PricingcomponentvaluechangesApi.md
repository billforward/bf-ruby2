# BillForward::PricingcomponentvaluechangesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pricing_component_value_change**](PricingcomponentvaluechangesApi.md#create_pricing_component_value_change) | **POST** /pricing-component-value-changes | Create a pricing-component-value-change.
[**get_all_pricing_component_value_changes**](PricingcomponentvaluechangesApi.md#get_all_pricing_component_value_changes) | **GET** /pricing-component-value-changes | Returns a collection of pricing-component-value-changes. By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_value_change**](PricingcomponentvaluechangesApi.md#get_pricing_component_value_change) | **GET** /pricing-component-value-changes/{ID} | Returns a single pricing-component-value-changes, specified by the ID parameter.
[**get_pricing_component_value_change_by_component_id**](PricingcomponentvaluechangesApi.md#get_pricing_component_value_change_by_component_id) | **GET** /pricing-component-value-changes/component-ID/{pricing-component-ID} | Returns a collection of pricing-component-value-changes, specified by the pricing-component-value-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_value_change_by_invoice_id**](PricingcomponentvaluechangesApi.md#get_pricing_component_value_change_by_invoice_id) | **GET** /pricing-component-value-changes/invoice/{invoice-ID} | Returns a collection of pricing-component-value-changes, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_pricing_component_value_change_by_subscription_id**](PricingcomponentvaluechangesApi.md#get_pricing_component_value_change_by_subscription_id) | **GET** /pricing-component-value-changes/subscription/{subscription-ID} | Returns a collection of pricing-component-value-changes, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.


# **create_pricing_component_value_change**
> PricingComponentValueChangePagedMetadata create_pricing_component_value_change(pricing_component_value_change)

Create a pricing-component-value-change.

{\"nickname\":\"Create\",\"request\":\"createPricingComponentValueChangeRequest.html\",\"response\":\"createPricingComponentValueChangeResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluechangesApi.new

pricing_component_value_change = BillForward::InsertableBillingEntity.new # InsertableBillingEntity | The pricing-component-value-change object to be updated.


begin
  #Create a pricing-component-value-change.
  result = api_instance.create_pricing_component_value_change(pricing_component_value_change)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluechangesApi->create_pricing_component_value_change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_value_change** | [**InsertableBillingEntity**](InsertableBillingEntity.md)| The pricing-component-value-change object to be updated. | 

### Return type

[**PricingComponentValueChangePagedMetadata**](PricingComponentValueChangePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_pricing_component_value_changes**
> PricingComponentValueChangePagedMetadata get_all_pricing_component_value_changes(opts)

Returns a collection of pricing-component-value-changes. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get All\",\"response\":\"getPricingComponentValueChangeAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluechangesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-value-change to return.
  records: 10, # Integer | The maximum number of pricing-component-value-changes to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of pricing-component-value-changes. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_pricing_component_value_changes(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluechangesApi->get_all_pricing_component_value_changes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-value-change to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-value-changes to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PricingComponentValueChangePagedMetadata**](PricingComponentValueChangePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pricing_component_value_change**
> PricingComponentValueChangePagedMetadata get_pricing_component_value_change(id, opts)

Returns a single pricing-component-value-changes, specified by the ID parameter.

{\"nickname\":\"Retrieve by id\",\"response\":\"getPricingComponentValueChangeByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluechangesApi.new

id = "id_example" # String | The string ID of the pricing-component-value-change.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single pricing-component-value-changes, specified by the ID parameter.
  result = api_instance.get_pricing_component_value_change(id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluechangesApi->get_pricing_component_value_change: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The string ID of the pricing-component-value-change. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PricingComponentValueChangePagedMetadata**](PricingComponentValueChangePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_pricing_component_value_change_by_component_id**
> PricingComponentValueChangePagedMetadata get_pricing_component_value_change_by_component_id(pricing_component_id, opts)

Returns a collection of pricing-component-value-changes, specified by the pricing-component-value-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by Component-ID\",\"response\":\"getPricingComponentValueChangeByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluechangesApi.new

pricing_component_id = "pricing_component_id_example" # String | The string ID of the pricing-component-value.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-value-change to return.
  records: 10, # Integer | The maximum number of pricing-component-value-changes to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of pricing-component-value-changes, specified by the pricing-component-value-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_value_change_by_component_id(pricing_component_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluechangesApi->get_pricing_component_value_change_by_component_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pricing_component_id** | **String**| The string ID of the pricing-component-value. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-value-change to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-value-changes to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PricingComponentValueChangePagedMetadata**](PricingComponentValueChangePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_pricing_component_value_change_by_invoice_id**
> PricingComponentValueChangePagedMetadata get_pricing_component_value_change_by_invoice_id(invoice_id, opts)

Returns a collection of pricing-component-value-changes, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by Invoice-ID\",\"response\":\"getPricingComponentValueChangeByInvoiceID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluechangesApi.new

invoice_id = "invoice_id_example" # String | The string invoice-ID of the pricing-component-value-change.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-value-change to return.
  records: 10, # Integer | The maximum number of pricing-component-value-changes to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of pricing-component-value-changes, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_value_change_by_invoice_id(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluechangesApi->get_pricing_component_value_change_by_invoice_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| The string invoice-ID of the pricing-component-value-change. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-value-change to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-value-changes to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PricingComponentValueChangePagedMetadata**](PricingComponentValueChangePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_pricing_component_value_change_by_subscription_id**
> PricingComponentValueChangePagedMetadata get_pricing_component_value_change_by_subscription_id(subscription_id, opts)

Returns a collection of pricing-component-value-changes, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by Subscription-ID\",\"response\":\"getPricingComponentValueChangeBySubscriptionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PricingcomponentvaluechangesApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component-value-change to return.
  records: 10, # Integer | The maximum number of pricing-component-value-changes to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of pricing-component-value-changes, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_pricing_component_value_change_by_subscription_id(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PricingcomponentvaluechangesApi->get_pricing_component_value_change_by_subscription_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component-value-change to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-component-value-changes to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PricingComponentValueChangePagedMetadata**](PricingComponentValueChangePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



