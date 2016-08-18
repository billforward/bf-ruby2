# BillForward::ReceiptsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_receipt**](ReceiptsApi.md#create_receipt) | **POST** /receipts | Create a receipt.
[**get_all_receipts**](ReceiptsApi.md#get_all_receipts) | **GET** /receipts | Returns a collection of all receipts. By default 10 values are returned. receipts are returned in natural order
[**get_receipt_by_id**](ReceiptsApi.md#get_receipt_by_id) | **GET** /receipts/{receipt-ID} | Returns a single receipt, specified by the ID parameter.
[**get_receipts_by_invoice**](ReceiptsApi.md#get_receipts_by_invoice) | **GET** /receipts/invoice/{invoice-ID} | Returns a receipt for the receipt payment.
[**get_receipts_by_payment**](ReceiptsApi.md#get_receipts_by_payment) | **GET** /receipts/payment/{payment-ID} | Returns a collection of receipts for the payment.
[**get_receipts_for_debit_payments_as_csv**](ReceiptsApi.md#get_receipts_for_debit_payments_as_csv) | **GET** /receipts/debits.csv | Retrieves debit payments in CSV format.
[**get_receipts_for_refund_payments_as_csv**](ReceiptsApi.md#get_receipts_for_refund_payments_as_csv) | **GET** /receipts/refunds.csv | Retrieves refunded payments in CSV format.


# **create_receipt**
> ReceiptPagedMetadata create_receipt(receipt)

Create a receipt.

{\"nickname\":\"Create a new receipt\",\"request\":\"createReceiptRequest.html\",\"response\":\"createReceiptResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ReceiptsApi.new

receipt = BillForward::Receipt.new # Receipt | The receipt object to be created.


begin
  #Create a receipt.
  result = api_instance.create_receipt(receipt)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ReceiptsApi->create_receipt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt** | [**Receipt**](Receipt.md)| The receipt object to be created. | 

### Return type

[**ReceiptPagedMetadata**](ReceiptPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_receipts**
> ReceiptPagedMetadata get_all_receipts(opts)

Returns a collection of all receipts. By default 10 values are returned. receipts are returned in natural order

{\"nickname\":\"Get all receipts\",\"response\":\"getreceiptsAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ReceiptsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first receipt to return.
  records: 10, # Integer | The maximum number of receipts to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  account_id: ["account_id_example"], # Array<String> | 
  invoice_id: ["invoice_id_example"], # Array<String> | 
  payment_method_id: ["payment_method_id_example"], # Array<String> | 
  type: "type_example", # String | 
  gateway: "gateway_example", # String | 
  decision: "decision_example" # String | 
}

begin
  #Returns a collection of all receipts. By default 10 values are returned. receipts are returned in natural order
  result = api_instance.get_all_receipts(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ReceiptsApi->get_all_receipts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first receipt to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of receipts to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **account_id** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **invoice_id** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **payment_method_id** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **type** | **String**|  | [optional] 
 **gateway** | **String**|  | [optional] 
 **decision** | **String**|  | [optional] 

### Return type

[**ReceiptPagedMetadata**](ReceiptPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_receipt_by_id**
> ReceiptPagedMetadata get_receipt_by_id(receipt_id, opts)

Returns a single receipt, specified by the ID parameter.

{\"nickname\":\"Retrieve an existing receipt\",\"response\":\"getreceiptByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ReceiptsApi.new

receipt_id = "receipt_id_example" # String | ID of the receipt.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single receipt, specified by the ID parameter.
  result = api_instance.get_receipt_by_id(receipt_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipt_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receipt_id** | **String**| ID of the receipt. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**ReceiptPagedMetadata**](ReceiptPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_receipts_by_invoice**
> ReceiptPagedMetadata get_receipts_by_invoice(invoice_id, opts)

Returns a receipt for the receipt payment.

{\"nickname\":\"Retrieve by invoice\",\"response\":\"getreceiptsByInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ReceiptsApi.new

invoice_id = "invoice_id_example" # String | ID of the Invoice.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first receipt to return.
  records: 10, # Integer | The maximum number of receipts to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a receipt for the receipt payment.
  result = api_instance.get_receipts_by_invoice(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipts_by_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| ID of the Invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first receipt to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of receipts to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**ReceiptPagedMetadata**](ReceiptPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_receipts_by_payment**
> ReceiptPagedMetadata get_receipts_by_payment(payment_id, opts)

Returns a collection of receipts for the payment.

{\"nickname\":\"Retrieve by payment\",\"response\":\"getreceiptsByPayment.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ReceiptsApi.new

payment_id = "payment_id_example" # String | ID of the payment.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first receipt to return.
  records: 10, # Integer | The maximum number of receipts to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of receipts for the payment.
  result = api_instance.get_receipts_by_payment(payment_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipts_by_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**| ID of the payment. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first receipt to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of receipts to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**ReceiptPagedMetadata**](ReceiptPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_receipts_for_debit_payments_as_csv**
> ReceiptPagedMetadata get_receipts_for_debit_payments_as_csv(opts)

Retrieves debit payments in CSV format.

{ \"nickname\":\"Debit payments CSV\",\"response\":\"Debit payments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ReceiptsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  received_start: "received_start_example", # String | The UTC DateTime specifying the start of the interval within which payments were received.
  received_end: "received_end_example", # String | The UTC DateTime specifying the end of the interval within which payments were received.
  offset: 56, # Integer | The offset from the first payment to return.
  records: 56, # Integer | The maximum number of payments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | The direction of any ordering, either ASC or DESC.
  gateway: ["gateway_example"] # Array<String> | A list of payment gateways to include in the account.  If none are specified, all gateways will be included.
}

begin
  #Retrieves debit payments in CSV format.
  result = api_instance.get_receipts_for_debit_payments_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipts_for_debit_payments_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **received_start** | **String**| The UTC DateTime specifying the start of the interval within which payments were received. | [optional] 
 **received_end** | **String**| The UTC DateTime specifying the end of the interval within which payments were received. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] 
 **records** | **Integer**| The maximum number of payments to return. | [optional] 
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **gateway** | [**Array&lt;String&gt;**](String.md)| A list of payment gateways to include in the account.  If none are specified, all gateways will be included. | [optional] 

### Return type

[**ReceiptPagedMetadata**](ReceiptPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv



# **get_receipts_for_refund_payments_as_csv**
> ReceiptPagedMetadata get_receipts_for_refund_payments_as_csv(opts)

Retrieves refunded payments in CSV format.

{ \"nickname\":\"Refunded payments CSV\",\"response\":\"Refunded payments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ReceiptsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  completed_start: "completed_start_example", # String | The UTC DateTime specifying the start of the interval within which payments were received.
  completed_end: "completed_end_example", # String | The UTC DateTime specifying the end of the interval within which payments were received.
  offset: 56, # Integer | The offset from the first payment to return.
  records: 56, # Integer | The maximum number of payments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves refunded payments in CSV format.
  result = api_instance.get_receipts_for_refund_payments_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ReceiptsApi->get_receipts_for_refund_payments_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **completed_start** | **String**| The UTC DateTime specifying the start of the interval within which payments were received. | [optional] 
 **completed_end** | **String**| The UTC DateTime specifying the end of the interval within which payments were received. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] 
 **records** | **Integer**| The maximum number of payments to return. | [optional] 
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**ReceiptPagedMetadata**](ReceiptPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv



