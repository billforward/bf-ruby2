# BillForward::CoupondefinitionApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_definition**](CoupondefinitionApi.md#create_coupon_definition) | **POST** /coupon-definitions | Create a coupon-definition.
[**delete_coupon_definition**](CoupondefinitionApi.md#delete_coupon_definition) | **DELETE** /coupon-definitions/{coupon-definition-ID} | Retire a coupon-definition, specified by the coupon-definition-ID parameter.
[**get_all_coupon_definitions**](CoupondefinitionApi.md#get_all_coupon_definitions) | **GET** /coupon-definitions | Returns a collection of coupon-definitions. By default 10 values are returned. Records are returned in natural order.
[**get_coupon_definition_by_id**](CoupondefinitionApi.md#get_coupon_definition_by_id) | **GET** /coupon-definitions/{coupon-definition-ID} | Returns a single coupon-definition, specified by the coupon-definition-ID parameter.
[**update_coupon_definition**](CoupondefinitionApi.md#update_coupon_definition) | **PUT** /coupon-definitions | Update a coupon-definition.


# **create_coupon_definition**
> CouponDefinitionPagedMetadata create_coupon_definition(coupon_definition)

Create a coupon-definition.

{\"nickname\":\"Create a new definition\",\"request\":\"createCouponDefinitionRequest.html\",\"response\":\"createCouponDefinitionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CoupondefinitionApi.new

coupon_definition = BillForward::CouponDefinition.new # CouponDefinition | The coupon-definiton object to be created.


begin
  #Create a coupon-definition.
  result = api_instance.create_coupon_definition(coupon_definition)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CoupondefinitionApi->create_coupon_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition** | [**CouponDefinition**](CouponDefinition.md)| The coupon-definiton object to be created. | 

### Return type

[**CouponDefinitionPagedMetadata**](CouponDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_coupon_definition**
> CouponDefinitionPagedMetadata delete_coupon_definition(coupon_definition_id, opts)

Retire a coupon-definition, specified by the coupon-definition-ID parameter.

{\"nickname\":\"Delete a definition\",\"response\":\"deleteCouponDefinitionByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CoupondefinitionApi.new

coupon_definition_id = "coupon_definition_id_example" # String | ID of the coupon-definition.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retire a coupon-definition, specified by the coupon-definition-ID parameter.
  result = api_instance.delete_coupon_definition(coupon_definition_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CoupondefinitionApi->delete_coupon_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition_id** | **String**| ID of the coupon-definition. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponDefinitionPagedMetadata**](CouponDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_all_coupon_definitions**
> CouponDefinitionPagedMetadata get_all_coupon_definitions(opts)

Returns a collection of coupon-definitions. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all coupon definitions\",\"response\":\"getCouponDefinitionAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CoupondefinitionApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-definitions should be returned.
}

begin
  #Returns a collection of coupon-definitions. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_coupon_definitions(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CoupondefinitionApi->get_all_coupon_definitions: #{e}"
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
 **include_retired** | **BOOLEAN**| Whether retired coupon-definitions should be returned. | [optional] [default to true]

### Return type

[**CouponDefinitionPagedMetadata**](CouponDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_coupon_definition_by_id**
> CouponDefinitionPagedMetadata get_coupon_definition_by_id(coupon_definition_id, opts)

Returns a single coupon-definition, specified by the coupon-definition-ID parameter.

{\"nickname\":\"Get existing coupon definition\",\"response\":\"getCouponDefinitionByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CoupondefinitionApi.new

coupon_definition_id = "coupon_definition_id_example" # String | ID of the coupon-definition.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-definition, specified by the coupon-definition-ID parameter.
  result = api_instance.get_coupon_definition_by_id(coupon_definition_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CoupondefinitionApi->get_coupon_definition_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition_id** | **String**| ID of the coupon-definition. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponDefinitionPagedMetadata**](CouponDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_coupon_definition**
> CouponDefinitionPagedMetadata update_coupon_definition(coupon_definition)

Update a coupon-definition.

{\"nickname\":\"Update a definition\",\"request\":\"updateCouponDefinitionRequest.html\",\"response\":\"updateCouponDefinitionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CoupondefinitionApi.new

coupon_definition = BillForward::CouponDefinition.new # CouponDefinition | The coupon-definition object to be updated.


begin
  #Update a coupon-definition.
  result = api_instance.update_coupon_definition(coupon_definition)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CoupondefinitionApi->update_coupon_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition** | [**CouponDefinition**](CouponDefinition.md)| The coupon-definition object to be updated. | 

### Return type

[**CouponDefinitionPagedMetadata**](CouponDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



