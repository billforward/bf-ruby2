# BillForward::CouponmodifierApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_modifier**](CouponmodifierApi.md#create_coupon_modifier) | **POST** /coupon-modifiers | Create a coupon-modifier.
[**delete_coupon_modifier**](CouponmodifierApi.md#delete_coupon_modifier) | **DELETE** /coupon-modifiers/{coupon-modifier-ID} | Retire a coupon-modifier, specified by the coupon-modifier-ID parameter.
[**get_all_coupon_modifiers**](CouponmodifierApi.md#get_all_coupon_modifiers) | **GET** /coupon-modifiers | Returns a collection of coupon-modifiers. By default 10 values are returned. Records are returned in natural order.
[**get_coupon_modifier_by_coupon_code**](CouponmodifierApi.md#get_coupon_modifier_by_coupon_code) | **GET** /coupon-modifiers/coupon-code/{coupon-code} | Returns a collection of coupon-modifiers, specified by the coupon-code parameter.
[**get_coupon_modifier_by_coupon_definition_id**](CouponmodifierApi.md#get_coupon_modifier_by_coupon_definition_id) | **GET** /coupon-modifiers/coupon-definition/{coupon-definition-ID} | Returns a collection of coupon-modifiers, specified by the coupon-definition-ID parameter.
[**get_coupon_modifier_by_id**](CouponmodifierApi.md#get_coupon_modifier_by_id) | **GET** /coupon-modifiers/{coupon-modifier-ID} | Returns a single coupon-modifier, specified by the coupon-modifier-ID parameter.
[**update_coupon_modifier**](CouponmodifierApi.md#update_coupon_modifier) | **PUT** /coupon-modifiers | Update a coupon-instance.


# **create_coupon_modifier**
> CouponModifierBasePagedMetadata create_coupon_modifier(coupon_instance)

Create a coupon-modifier.

{\"nickname\":\"Create a new modifier\",\"request\":\"createCouponModifierRequest.html\",\"response\":\"createCouponModifierResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponmodifierApi.new

coupon_instance = BillForward::CouponModifierBase.new # CouponModifierBase | The coupon-instance object to be created.


begin
  #Create a coupon-modifier.
  result = api_instance.create_coupon_modifier(coupon_instance)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponmodifierApi->create_coupon_modifier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_instance** | [**CouponModifierBase**](CouponModifierBase.md)| The coupon-instance object to be created. | 

### Return type

[**CouponModifierBasePagedMetadata**](CouponModifierBasePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **delete_coupon_modifier**
> CouponModifierBasePagedMetadata delete_coupon_modifier(coupon_modifier_id, opts)

Retire a coupon-modifier, specified by the coupon-modifier-ID parameter.

{\"nickname\":\"Delete a modifier\",\"response\":\"deleteCouponModifierByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponmodifierApi.new

coupon_modifier_id = "coupon_modifier_id_example" # String | ID of the coupon-modifier.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retire a coupon-modifier, specified by the coupon-modifier-ID parameter.
  result = api_instance.delete_coupon_modifier(coupon_modifier_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponmodifierApi->delete_coupon_modifier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_modifier_id** | **String**| ID of the coupon-modifier. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponModifierBasePagedMetadata**](CouponModifierBasePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_all_coupon_modifiers**
> CouponModifierBasePagedMetadata get_all_coupon_modifiers(opts)

Returns a collection of coupon-modifiers. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all modifiers\",\"response\":\"getCouponModifierAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponmodifierApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10 # Integer | The maximum number of product-rate-plans to return.
}

begin
  #Returns a collection of coupon-modifiers. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_coupon_modifiers(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponmodifierApi->get_all_coupon_modifiers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]

### Return type

[**CouponModifierBasePagedMetadata**](CouponModifierBasePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_coupon_modifier_by_coupon_code**
> CouponModifierBasePagedMetadata get_coupon_modifier_by_coupon_code(coupon_code, opts)

Returns a collection of coupon-modifiers, specified by the coupon-code parameter.

{\"nickname\":\"Retrieve by coupon code\",\"response\":\"getCouponCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponmodifierApi.new

coupon_code = "coupon_code_example" # String | The coupon-code.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10 # Integer | The maximum number of product-rate-plans to return.
}

begin
  #Returns a collection of coupon-modifiers, specified by the coupon-code parameter.
  result = api_instance.get_coupon_modifier_by_coupon_code(coupon_code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponmodifierApi->get_coupon_modifier_by_coupon_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_code** | **String**| The coupon-code. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]

### Return type

[**CouponModifierBasePagedMetadata**](CouponModifierBasePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_coupon_modifier_by_coupon_definition_id**
> CouponModifierBasePagedMetadata get_coupon_modifier_by_coupon_definition_id(coupon_definition_id, opts)

Returns a collection of coupon-modifiers, specified by the coupon-definition-ID parameter.

{\"nickname\":\"Retrieve by coupon definition\",\"response\":\"getCouponModifierByCouponDefinitionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponmodifierApi.new

coupon_definition_id = "coupon_definition_id_example" # String | ID of the coupon-definition.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection of coupon-modifiers, specified by the coupon-definition-ID parameter.
  result = api_instance.get_coupon_modifier_by_coupon_definition_id(coupon_definition_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponmodifierApi->get_coupon_modifier_by_coupon_definition_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition_id** | **String**| ID of the coupon-definition. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponModifierBasePagedMetadata**](CouponModifierBasePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_coupon_modifier_by_id**
> CouponModifierBasePagedMetadata get_coupon_modifier_by_id(coupon_modifier_id, opts)

Returns a single coupon-modifier, specified by the coupon-modifier-ID parameter.

{\"nickname\":\"Get existing modifier\",\"response\":\"getCouponModifierByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponmodifierApi.new

coupon_modifier_id = "coupon_modifier_id_example" # String | ID of the coupon-modifier.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-modifier, specified by the coupon-modifier-ID parameter.
  result = api_instance.get_coupon_modifier_by_id(coupon_modifier_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponmodifierApi->get_coupon_modifier_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_modifier_id** | **String**| ID of the coupon-modifier. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponModifierBasePagedMetadata**](CouponModifierBasePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_coupon_modifier**
> CouponModifierBasePagedMetadata update_coupon_modifier(coupon_instance)

Update a coupon-instance.

{\"nickname\":\"Update a modifier\",\"request\":\"updateCouponInstanceRequest.html\",\"response\":\"updateCouponInstanceResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponmodifierApi.new

coupon_instance = BillForward::CouponModifierBase.new # CouponModifierBase | The coupon-instance object to be updated.


begin
  #Update a coupon-instance.
  result = api_instance.update_coupon_modifier(coupon_instance)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponmodifierApi->update_coupon_modifier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_instance** | [**CouponModifierBase**](CouponModifierBase.md)| The coupon-instance object to be updated. | 

### Return type

[**CouponModifierBasePagedMetadata**](CouponModifierBasePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



