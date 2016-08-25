# Bfwd::CouponbookdefinitionApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_book_definition**](CouponbookdefinitionApi.md#create_coupon_book_definition) | **POST** /coupon-book-definitions | Create a coupon-book-definition.
[**delete_coupon_book_definition**](CouponbookdefinitionApi.md#delete_coupon_book_definition) | **DELETE** /coupon-book-definitions/{coupon-book-definition-ID} | Retire a coupon-book-definition, specified by the coupon-book-definition-ID parameter.
[**get_all_coupon_book_definitions**](CouponbookdefinitionApi.md#get_all_coupon_book_definitions) | **GET** /coupon-book-definitions | Returns a collection of coupon-book-definitions. By default 10 values are returned. Records are returned in natural order.
[**get_coupon_book_definition_by_coupon_definition_id**](CouponbookdefinitionApi.md#get_coupon_book_definition_by_coupon_definition_id) | **GET** /coupon-book-definitions/coupon-definition/{coupon-definition-ID} | Returns a collection of coupon-book-definitions, specified by coupon-definition-ID parameter. By default 10 coupon-book-definitions are returned. Records are returned in natural order.
[**get_coupon_book_definition_by_id**](CouponbookdefinitionApi.md#get_coupon_book_definition_by_id) | **GET** /coupon-book-definitions/{coupon-book-definition-ID} | Returns a single coupon-book-definition, specified by the coupon-book-definition-ID parameter.
[**update_coupon_book_definition**](CouponbookdefinitionApi.md#update_coupon_book_definition) | **PUT** /coupon-book-definitions | Update a coupon-book-definition.


# **create_coupon_book_definition**
> CouponBookDefinitionPagedMetadata create_coupon_book_definition(coupon_book_definition)

Create a coupon-book-definition.

{\"nickname\":\"Create a new book definition\",\"request\":\"createCouponBookDefinitionRequest.html\",\"response\":\"createCouponBookDefinitionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponbookdefinitionApi.new

coupon_book_definition = Bfwd::CouponBookDefinition.new # CouponBookDefinition | The coupon-book-definition object to be created.


begin
  #Create a coupon-book-definition.
  result = api_instance.create_coupon_book_definition(coupon_book_definition)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponbookdefinitionApi->create_coupon_book_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book_definition** | [**CouponBookDefinition**](CouponBookDefinition.md)| The coupon-book-definition object to be created. | 

### Return type

[**CouponBookDefinitionPagedMetadata**](CouponBookDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_coupon_book_definition**
> CouponBookDefinitionPagedMetadata delete_coupon_book_definition(coupon_book_definition_id, opts)

Retire a coupon-book-definition, specified by the coupon-book-definition-ID parameter.

{\"nickname\":\"Delete book definition\",\"response\":\"deleteCouponBookDefinitionByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponbookdefinitionApi.new

coupon_book_definition_id = "coupon_book_definition_id_example" # String | ID of the coupon-definition.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retire a coupon-book-definition, specified by the coupon-book-definition-ID parameter.
  result = api_instance.delete_coupon_book_definition(coupon_book_definition_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponbookdefinitionApi->delete_coupon_book_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book_definition_id** | **String**| ID of the coupon-definition. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponBookDefinitionPagedMetadata**](CouponBookDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_all_coupon_book_definitions**
> CouponBookDefinitionPagedMetadata get_all_coupon_book_definitions(opts)

Returns a collection of coupon-book-definitions. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all book definitions\",\"response\":\"getCouponBookDefinitionAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponbookdefinitionApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-book-definitions should be returned.
}

begin
  #Returns a collection of coupon-book-definitions. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_coupon_book_definitions(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponbookdefinitionApi->get_all_coupon_book_definitions: #{e}"
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
 **include_retired** | **BOOLEAN**| Whether retired coupon-book-definitions should be returned. | [optional] [default to true]

### Return type

[**CouponBookDefinitionPagedMetadata**](CouponBookDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_coupon_book_definition_by_coupon_definition_id**
> CouponBookDefinitionPagedMetadata get_coupon_book_definition_by_coupon_definition_id(coupon_definition_id, opts)

Returns a collection of coupon-book-definitions, specified by coupon-definition-ID parameter. By default 10 coupon-book-definitions are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by coupon definition\",\"response\":\"getCouponBookDefinitionByCouponDefinitionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponbookdefinitionApi.new

coupon_definition_id = "coupon_definition_id_example" # String | The string coupon-definition-ID of the coupon-book-definition.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-book-definition to return.
  records: 10, # Integer | The maximum number of coupon-book-definitions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-book-definitions should be returned.
}

begin
  #Returns a collection of coupon-book-definitions, specified by coupon-definition-ID parameter. By default 10 coupon-book-definitions are returned. Records are returned in natural order.
  result = api_instance.get_coupon_book_definition_by_coupon_definition_id(coupon_definition_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponbookdefinitionApi->get_coupon_book_definition_by_coupon_definition_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition_id** | **String**| The string coupon-definition-ID of the coupon-book-definition. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-book-definition to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-book-definitions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-book-definitions should be returned. | [optional] [default to true]

### Return type

[**CouponBookDefinitionPagedMetadata**](CouponBookDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_book_definition_by_id**
> CouponBookDefinitionPagedMetadata get_coupon_book_definition_by_id(coupon_book_definition_id, opts)

Returns a single coupon-book-definition, specified by the coupon-book-definition-ID parameter.

{\"nickname\":\"Retrieve an existing book definition\",\"response\":\"getCouponBookDefinitionByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponbookdefinitionApi.new

coupon_book_definition_id = "coupon_book_definition_id_example" # String | ID of the coupon-book-definition.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-book-definition, specified by the coupon-book-definition-ID parameter.
  result = api_instance.get_coupon_book_definition_by_id(coupon_book_definition_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponbookdefinitionApi->get_coupon_book_definition_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book_definition_id** | **String**| ID of the coupon-book-definition. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponBookDefinitionPagedMetadata**](CouponBookDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_coupon_book_definition**
> CouponBookDefinitionPagedMetadata update_coupon_book_definition(coupon_book_definition)

Update a coupon-book-definition.

{\"nickname\":\"Update a book definition\",\"request\":\"updateCouponBookDefinitionRequest.html\",\"response\":\"updateCouponBookDefinitionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponbookdefinitionApi.new

coupon_book_definition = Bfwd::CouponBookDefinition.new # CouponBookDefinition | The coupon-book-definition object to be updated.


begin
  #Update a coupon-book-definition.
  result = api_instance.update_coupon_book_definition(coupon_book_definition)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponbookdefinitionApi->update_coupon_book_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book_definition** | [**CouponBookDefinition**](CouponBookDefinition.md)| The coupon-book-definition object to be updated. | 

### Return type

[**CouponBookDefinitionPagedMetadata**](CouponBookDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



