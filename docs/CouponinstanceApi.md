# Bfwd::CouponinstanceApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_instance**](CouponinstanceApi.md#create_coupon_instance) | **POST** /coupon-instances | Create a coupon-instance.
[**delete_coupon_instance**](CouponinstanceApi.md#delete_coupon_instance) | **DELETE** /coupon-instances/{coupon-instance-ID} | Retire a coupon-instance, specified by the coupon-instance-ID parameter.
[**get_all_attachable_coupon_instances**](CouponinstanceApi.md#get_all_attachable_coupon_instances) | **GET** /coupon-instances/attachable/{attachableness}/{has_code} | Returns a collection of attachable coupon-instances. An attachable coupon-instance has at least one remaining use, and is not deleted. By default 10 values are returned. Records are returned in natural order.
[**get_all_coupon_instances**](CouponinstanceApi.md#get_all_coupon_instances) | **GET** /coupon-instances | Returns a collection of coupon-instances. By default 10 values are returned. Records are returned in natural order.
[**get_coupon_instance_by_coupon_code**](CouponinstanceApi.md#get_coupon_instance_by_coupon_code) | **GET** /coupon-instances/coupon/{coupon-code} | Returns a collection of coupon-instances, specified by coupon-code parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
[**get_coupon_instance_by_coupon_definition_id**](CouponinstanceApi.md#get_coupon_instance_by_coupon_definition_id) | **GET** /coupon-instances/coupon-definition/{coupon-definition-ID} | Returns a collection of coupon-instances, specified by coupon-definition-ID parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
[**get_coupon_instance_by_id**](CouponinstanceApi.md#get_coupon_instance_by_id) | **GET** /coupon-instances/{coupon-instance-ID} | Returns a single coupon-instance, specified by the coupon-instance-ID parameter.
[**get_coupon_instance_by_target_id**](CouponinstanceApi.md#get_coupon_instance_by_target_id) | **GET** /coupon-instances/target/{target-ID} | Returns a collection of coupon-instances, specified by target-ID parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
[**get_coupon_instance_by_target_type**](CouponinstanceApi.md#get_coupon_instance_by_target_type) | **GET** /coupon-instances/target-entity/{target} | Returns a collection of coupon-instances, specified by target parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
[**update_coupon_instance**](CouponinstanceApi.md#update_coupon_instance) | **PUT** /coupon-instances | Update a coupon-instance.


# **create_coupon_instance**
> CouponInstancePagedMetadata create_coupon_instance(coupon_instance)

Create a coupon-instance.

{\"nickname\":\"Create a new coupon\",\"request\":\"createCouponInstanceRequest.html\",\"response\":\"createCouponInstanceResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

coupon_instance = Bfwd::CouponInstance.new # CouponInstance | The coupon-instance object to be created.


begin
  #Create a coupon-instance.
  result = api_instance.create_coupon_instance(coupon_instance)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->create_coupon_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_instance** | [**CouponInstance**](CouponInstance.md)| The coupon-instance object to be created. | 

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_coupon_instance**
> CouponInstancePagedMetadata delete_coupon_instance(coupon_instance_id, opts)

Retire a coupon-instance, specified by the coupon-instance-ID parameter.

{\"nickname\":\"Delete a coupon\",\"response\":\"deleteCouponInstanceByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

coupon_instance_id = "coupon_instance_id_example" # String | ID of the coupon-instance.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retire a coupon-instance, specified by the coupon-instance-ID parameter.
  result = api_instance.delete_coupon_instance(coupon_instance_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->delete_coupon_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_instance_id** | **String**| ID of the coupon-instance. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_all_attachable_coupon_instances**
> CouponInstancePagedMetadata get_all_attachable_coupon_instances(attachableness, has_code, opts)

Returns a collection of attachable coupon-instances. An attachable coupon-instance has at least one remaining use, and is not deleted. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get attachable coupons\",\"response\":\"getCouponInstanceAllAttachable.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

attachableness = true # BOOLEAN | The attachableness of the coupon-instance.

has_code = true # BOOLEAN | Whether the coupon-instances have coupon codes or not.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-instance to return.
  records: 10, # Integer | The maximum number of coupon-instances to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of attachable coupon-instances. An attachable coupon-instance has at least one remaining use, and is not deleted. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_attachable_coupon_instances(attachableness, has_code, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->get_all_attachable_coupon_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachableness** | **BOOLEAN**| The attachableness of the coupon-instance. | 
 **has_code** | **BOOLEAN**| Whether the coupon-instances have coupon codes or not. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-instance to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-instances to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_all_coupon_instances**
> CouponInstancePagedMetadata get_all_coupon_instances(opts)

Returns a collection of coupon-instances. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all coupons\",\"response\":\"getCouponInstanceAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-instance to return.
  records: 10, # Integer | The maximum number of coupon-instances to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-instances should be returned.
}

begin
  #Returns a collection of coupon-instances. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_coupon_instances(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->get_all_coupon_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-instance to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-instances to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-instances should be returned. | [optional] [default to true]

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_coupon_instance_by_coupon_code**
> CouponInstancePagedMetadata get_coupon_instance_by_coupon_code(coupon_code, opts)

Returns a collection of coupon-instances, specified by coupon-code parameter. By default 10 coupon-instances are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by coupon code\",\"response\":\"getCouponInstanceByCouponCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

coupon_code = "coupon_code_example" # String | The string coupon-code of the coupon-instance.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-instance to return.
  records: 10, # Integer | The maximum number of coupon-instances to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-instances should be returned.
}

begin
  #Returns a collection of coupon-instances, specified by coupon-code parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
  result = api_instance.get_coupon_instance_by_coupon_code(coupon_code, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->get_coupon_instance_by_coupon_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_code** | **String**| The string coupon-code of the coupon-instance. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-instance to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-instances to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-instances should be returned. | [optional] [default to true]

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_instance_by_coupon_definition_id**
> CouponInstancePagedMetadata get_coupon_instance_by_coupon_definition_id(coupon_definition_id, opts)

Returns a collection of coupon-instances, specified by coupon-definition-ID parameter. By default 10 coupon-instances are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by coupon definition\",\"response\":\"getCouponInstanceByCouponDefinitionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

coupon_definition_id = "coupon_definition_id_example" # String | The string coupon-definition-ID of the coupon-instance.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-instance to return.
  records: 10, # Integer | The maximum number of coupon-instances to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-instances should be returned.
}

begin
  #Returns a collection of coupon-instances, specified by coupon-definition-ID parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
  result = api_instance.get_coupon_instance_by_coupon_definition_id(coupon_definition_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->get_coupon_instance_by_coupon_definition_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition_id** | **String**| The string coupon-definition-ID of the coupon-instance. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-instance to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-instances to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-instances should be returned. | [optional] [default to true]

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_instance_by_id**
> CouponInstancePagedMetadata get_coupon_instance_by_id(coupon_instance_id, opts)

Returns a single coupon-instance, specified by the coupon-instance-ID parameter.

{\"nickname\":\"Get existing coupon\",\"response\":\"getCouponInstanceByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

coupon_instance_id = "coupon_instance_id_example" # String | ID of the coupon-instance.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-instance, specified by the coupon-instance-ID parameter.
  result = api_instance.get_coupon_instance_by_id(coupon_instance_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->get_coupon_instance_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_instance_id** | **String**| ID of the coupon-instance. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_instance_by_target_id**
> CouponInstancePagedMetadata get_coupon_instance_by_target_id(target_id, opts)

Returns a collection of coupon-instances, specified by target-ID parameter. By default 10 coupon-instances are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by target\",\"response\":\"getCouponInstanceByTargetID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

target_id = "target_id_example" # String | The string target-ID of the coupon-instance.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-instance to return.
  records: 10, # Integer | The maximum number of coupon-instances to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-instances should be returned.
}

begin
  #Returns a collection of coupon-instances, specified by target-ID parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
  result = api_instance.get_coupon_instance_by_target_id(target_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->get_coupon_instance_by_target_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target_id** | **String**| The string target-ID of the coupon-instance. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-instance to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-instances to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-instances should be returned. | [optional] [default to true]

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_instance_by_target_type**
> CouponInstancePagedMetadata get_coupon_instance_by_target_type(target, opts)

Returns a collection of coupon-instances, specified by target parameter. By default 10 coupon-instances are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by target type\",\"response\":\"getCouponInstanceByTarget.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

target = "target_example" # String | The string target of the coupon-instance.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-instance to return.
  records: 10, # Integer | The maximum number of coupon-instances to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-instances should be returned.
}

begin
  #Returns a collection of coupon-instances, specified by target parameter. By default 10 coupon-instances are returned. Records are returned in natural order.
  result = api_instance.get_coupon_instance_by_target_type(target, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->get_coupon_instance_by_target_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target** | **String**| The string target of the coupon-instance. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-instance to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-instances to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-instances should be returned. | [optional] [default to true]

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **update_coupon_instance**
> CouponInstancePagedMetadata update_coupon_instance(coupon_instance)

Update a coupon-instance.

{\"nickname\":\"Update a coupon\",\"request\":\"updateCouponInstanceRequest.html\",\"response\":\"updateCouponInstanceResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::CouponinstanceApi.new

coupon_instance = Bfwd::CouponInstance.new # CouponInstance | The coupon-instance object to be updated.


begin
  #Update a coupon-instance.
  result = api_instance.update_coupon_instance(coupon_instance)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling CouponinstanceApi->update_coupon_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_instance** | [**CouponInstance**](CouponInstance.md)| The coupon-instance object to be updated. | 

### Return type

[**CouponInstancePagedMetadata**](CouponInstancePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



