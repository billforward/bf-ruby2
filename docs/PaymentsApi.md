# BillForward::PaymentsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment**](PaymentsApi.md#create_payment) | **POST** /payments | Create a payment.
[**get_all_payments**](PaymentsApi.md#get_all_payments) | **GET** /payments | Returns a collection of all payments. By default 10 values are returned. Records are returned in natural order.
[**get_payment_as_csv**](PaymentsApi.md#get_payment_as_csv) | **GET** /payments/csv | Retrieves payments in CSV format.
[**get_payment_by_id**](PaymentsApi.md#get_payment_by_id) | **GET** /payments/{payment-ID} | Returns a single payment, specified by the payment-ID parameter.
[**get_payment_by_invoice_id**](PaymentsApi.md#get_payment_by_invoice_id) | **GET** /payments/invoice/{invoice-ID} | Returns a collection of payments, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_payment_by_payment_gateway**](PaymentsApi.md#get_payment_by_payment_gateway) | **GET** /payments/gateway/{gateway} | Returns a collection of payments, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.
[**get_payment_by_payment_method_id**](PaymentsApi.md#get_payment_by_payment_method_id) | **GET** /payments/payment-method/{payment-method-ID} | Returns a collection of payments, specified by the payment-method-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**update_payment**](PaymentsApi.md#update_payment) | **PUT** /payments | Update a payment.


# **create_payment**
> PaymentPagedMetadata create_payment(payment)

Create a payment.

{\"nickname\":\"Create a new payment\",\"request\":\"createPaymentRequest.html\",\"response\":\"createPaymentResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

payment = BillForward::Payment.new # Payment | The payment object to be updated.


begin
  #Create a payment.
  result = api_instance.create_payment(payment)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->create_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment** | [**Payment**](Payment.md)| The payment object to be updated. | 

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_payments**
> PaymentPagedMetadata get_all_payments(opts)

Returns a collection of all payments. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all payments\",\"response\":\"getPaymentAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment to return.
  records: 10, # Integer | The maximum number of payments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all payments. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_payments(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->get_all_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_payment_as_csv**
> PaymentPagedMetadata get_payment_as_csv(received_start, received_end, opts)

Retrieves payments in CSV format.

{ \"nickname\":\"Payments CSV\",\"response\":\"payments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

received_start = "received_start_example" # String | The UTC DateTime specifying the start of the interval within which payments were received.

received_end = "received_end_example" # String | The UTC DateTime specifying the end of the interval within which payments were received.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 56, # Integer | The offset from the first payment to return.
  records: 56, # Integer | The maximum number of payments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves payments in CSV format.
  result = api_instance.get_payment_as_csv(received_start, received_end, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **received_start** | **String**| The UTC DateTime specifying the start of the interval within which payments were received. | 
 **received_end** | **String**| The UTC DateTime specifying the end of the interval within which payments were received. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] 
 **records** | **Integer**| The maximum number of payments to return. | [optional] 
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv



# **get_payment_by_id**
> PaymentPagedMetadata get_payment_by_id(payment_id, opts)

Returns a single payment, specified by the payment-ID parameter.

{\"nickname\":\"Retrieve an existing payment\",\"response\":\"getPaymentByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

payment_id = "payment_id_example" # String | The unique string-ID of the payment.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single payment, specified by the payment-ID parameter.
  result = api_instance.get_payment_by_id(payment_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**| The unique string-ID of the payment. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_payment_by_invoice_id**
> PaymentPagedMetadata get_payment_by_invoice_id(invoice_id, opts)

Returns a collection of payments, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get for invoice\",\"response\":\"getPaymentByInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

invoice_id = "invoice_id_example" # String | The string ID of the account

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment to return.
  records: 10, # Integer | The maximum number of payments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of payments, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_payment_by_invoice_id(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_by_invoice_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| The string ID of the account | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_payment_by_payment_gateway**
> PaymentPagedMetadata get_payment_by_payment_gateway(gateway, opts)

Returns a collection of payments, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by gateway\",\"response\":\"getPaymentByGateway.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

gateway = "gateway_example" # String | The payment gateway which generated the payment.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment to return.
  records: 10, # Integer | The maximum number of payments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of payments, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_payment_by_payment_gateway(gateway, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_by_payment_gateway: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway** | **String**| The payment gateway which generated the payment. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_payment_by_payment_method_id**
> PaymentPagedMetadata get_payment_by_payment_method_id(payment_method_id, opts)

Returns a collection of payments, specified by the payment-method-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by payment method\",\"response\":\"getPaymentByPaymentMethod.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

payment_method_id = "payment_method_id_example" # String | ID of the PaymentMethod

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment to return.
  records: 10, # Integer | The maximum number of payments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of payments, specified by the payment-method-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_payment_by_payment_method_id(payment_method_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_by_payment_method_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**| ID of the PaymentMethod | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_payment**
> PaymentPagedMetadata update_payment(payment)

Update a payment.

{\"nickname\":\"Update a payment\",\"request\":\"updatePaymentRequest.html\",\"response\":\"updatePaymentResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentsApi.new

payment = BillForward::Payment.new # Payment | The payment object to be updated.


begin
  #Update a payment.
  result = api_instance.update_payment(payment)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentsApi->update_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment** | [**Payment**](Payment.md)| The payment object to be updated. | 

### Return type

[**PaymentPagedMetadata**](PaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



