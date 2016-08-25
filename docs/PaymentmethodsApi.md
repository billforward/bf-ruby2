# Bfwd::PaymentmethodsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_method**](PaymentmethodsApi.md#create_payment_method) | **POST** /payment-methods | Create a payment-method.
[**delete_payment_method**](PaymentmethodsApi.md#delete_payment_method) | **DELETE** /payment-methods/{payment-method-ID} | Deletes the payment-method specified by the payment-method-ID parameter.
[**get_all_payment_methods**](PaymentmethodsApi.md#get_all_payment_methods) | **GET** /payment-methods | Returns a collection of all payment-methods. By default 10 values are returned. Records are returned in natural order.
[**get_payment_method_by_account_id**](PaymentmethodsApi.md#get_payment_method_by_account_id) | **GET** /payment-methods/account/{account-ID} | Returns a collection of payment-methods, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_payment_method_by_id**](PaymentmethodsApi.md#get_payment_method_by_id) | **GET** /payment-methods/{payment-method-ID} | Returns a single payment-method, specified by the payment-method-ID parameter.
[**get_payment_method_by_link_id**](PaymentmethodsApi.md#get_payment_method_by_link_id) | **GET** /payment-methods/link-id/{linkID} | Returns a single payment-method, specified by the linkID parameter.
[**get_payment_method_by_payment_gateway**](PaymentmethodsApi.md#get_payment_method_by_payment_gateway) | **GET** /payment-methods/gateway/{gateway} | Returns a collection of payment-methods, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.
[**update_payment_method**](PaymentmethodsApi.md#update_payment_method) | **PUT** /payment-methods | Update a payment-method.


# **create_payment_method**
> PaymentMethodPagedMetadata create_payment_method(payment_method)

Create a payment-method.

{\"nickname\":\"Create a new payment method\",\"request\":\"createPaymentMethodRequest.html\",\"response\":\"createPaymentMethodResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

payment_method = Bfwd::PaymentMethod.new # PaymentMethod | The payment-method object to be updated.


begin
  #Create a payment-method.
  result = api_instance.create_payment_method(payment_method)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->create_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method** | [**PaymentMethod**](PaymentMethod.md)| The payment-method object to be updated. | 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_payment_method**
> PaymentMethodPagedMetadata delete_payment_method(payment_method_id, opts)

Deletes the payment-method specified by the payment-method-ID parameter.

{\"nickname\":\"Delete payment method\",\"response\":\"deletePaymentMethod.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Deletes the payment-method specified by the payment-method-ID parameter.
  result = api_instance.delete_payment_method(payment_method_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->delete_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_all_payment_methods**
> PaymentMethodPagedMetadata get_all_payment_methods(opts)

Returns a collection of all payment-methods. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all payment methods\",\"response\":\"getPaymentMethodAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment-method to return.
  records: 10, # Integer | The maximum number of payment-methods to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all payment-methods. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_payment_methods(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->get_all_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment-method to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payment-methods to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_payment_method_by_account_id**
> PaymentMethodPagedMetadata get_payment_method_by_account_id(account_id, opts)

Returns a collection of payment-methods, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by account\",\"response\":\"getPaymentMethodByAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment-method to return.
  records: 10, # Integer | The maximum number of payment-methods to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true, # BOOLEAN | Whether retired products should be returned.
  default_only: false # BOOLEAN | Whether only the defualt payment method should be returned.
}

begin
  #Returns a collection of payment-methods, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_payment_method_by_account_id(account_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->get_payment_method_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment-method to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payment-methods to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]
 **default_only** | **BOOLEAN**| Whether only the defualt payment method should be returned. | [optional] [default to false]

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_payment_method_by_id**
> PaymentMethodPagedMetadata get_payment_method_by_id(payment_method_id, opts)

Returns a single payment-method, specified by the payment-method-ID parameter.

{\"nickname\":\"Get existing payment method\",\"response\":\"getPaymentMethodByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single payment-method, specified by the payment-method-ID parameter.
  result = api_instance.get_payment_method_by_id(payment_method_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->get_payment_method_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_payment_method_by_link_id**
> PaymentMethodPagedMetadata get_payment_method_by_link_id(link_id, opts)

Returns a single payment-method, specified by the linkID parameter.

{\"nickname\":\"Retrieve by subscription link\",\"response\":\"getPaymentMethodByLinkID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

link_id = "link_id_example" # String | The link-id of the payment-method.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single payment-method, specified by the linkID parameter.
  result = api_instance.get_payment_method_by_link_id(link_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->get_payment_method_by_link_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link_id** | **String**| The link-id of the payment-method. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_payment_method_by_payment_gateway**
> PaymentMethodPagedMetadata get_payment_method_by_payment_gateway(gateway, opts)

Returns a collection of payment-methods, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by gateway\",\"response\":\"getPaymentMethodByGateway.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

gateway = "gateway_example" # String | The payment-method gateway which generated the payment-method.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment-method to return.
  records: 10, # Integer | The maximum number of payment-methods to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of payment-methods, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_payment_method_by_payment_gateway(gateway, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->get_payment_method_by_payment_gateway: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway** | **String**| The payment-method gateway which generated the payment-method. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment-method to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payment-methods to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **update_payment_method**
> PaymentMethodPagedMetadata update_payment_method(payment_method)

Update a payment-method.

{\"nickname\":\"Update a payment-method\",\"request\":\"updatePaymentMethodRequest.html\",\"response\":\"updatePaymentMethodResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PaymentmethodsApi.new

payment_method = Bfwd::PaymentMethod.new # PaymentMethod | The payment-method object to be updated.


begin
  #Update a payment-method.
  result = api_instance.update_payment_method(payment_method)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PaymentmethodsApi->update_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method** | [**PaymentMethod**](PaymentMethod.md)| The payment-method object to be updated. | 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



