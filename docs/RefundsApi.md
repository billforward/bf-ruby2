# Bfwd::RefundsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_refund**](RefundsApi.md#create_refund) | **POST** /refunds | &lt;p&gt;When creating a refund either the invoice, or invoice payment must be specified.&lt;/p&gt;&lt;p&gt;Creating a refund by specifying the invoiceID will refund any un-refunded value up to the full value of the payment. When refunding via the invoicePaymentID the same rules apply. Refunds will be processed by the same payment methods that took the payment.&lt;/p&gt;&lt;p&gt;Refunds can be for a partial amount of the payment. It is possible to create refunds up to the value of the total payment.&lt;/p&gt;&lt;p&gt;Once a payment or invoice is fully refunded, no more refunds can be created. Errors will be returned if the payment is greater than available refund funds.&lt;/p&gt;
[**get_all_refunds**](RefundsApi.md#get_all_refunds) | **GET** /refunds | Returns a collection of all refunds. By default 10 values are returned. Refunds are returned in natural order
[**get_refund_by_id**](RefundsApi.md#get_refund_by_id) | **GET** /refunds/{refund-ID} | Returns a single refund, specified by the ID parameter.
[**get_refund_for_original_payment**](RefundsApi.md#get_refund_for_original_payment) | **GET** /refunds/original-payment/{payment-ID} | Returns a refund for the original payment.
[**get_refund_for_refund_payment**](RefundsApi.md#get_refund_for_refund_payment) | **GET** /refunds/refund-payment/{payment-ID} | Returns a refund for the refund payment.
[**get_refund_for_refunded_invoice**](RefundsApi.md#get_refund_for_refunded_invoice) | **GET** /refunds/invoice/{invoice-ID} | Returns a refund for the refund payment.
[**get_refunds_as_csv**](RefundsApi.md#get_refunds_as_csv) | **GET** /refunds/csv | Retrieves refunds in CSV format.
[**update_refund**](RefundsApi.md#update_refund) | **PUT** /refunds | Update a refund


# **create_refund**
> RefundPagedMetadata create_refund(refund)

<p>When creating a refund either the invoice, or invoice payment must be specified.</p><p>Creating a refund by specifying the invoiceID will refund any un-refunded value up to the full value of the payment. When refunding via the invoicePaymentID the same rules apply. Refunds will be processed by the same payment methods that took the payment.</p><p>Refunds can be for a partial amount of the payment. It is possible to create refunds up to the value of the total payment.</p><p>Once a payment or invoice is fully refunded, no more refunds can be created. Errors will be returned if the payment is greater than available refund funds.</p>

{\"nickname\":\"Create a new refund\",\"request\":\"createRefundRequest.html\",\"response\":\"createRefundResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

refund = Bfwd::Refund.new # Refund | The refund object to be created.


begin
  #<p>When creating a refund either the invoice, or invoice payment must be specified.</p><p>Creating a refund by specifying the invoiceID will refund any un-refunded value up to the full value of the payment. When refunding via the invoicePaymentID the same rules apply. Refunds will be processed by the same payment methods that took the payment.</p><p>Refunds can be for a partial amount of the payment. It is possible to create refunds up to the value of the total payment.</p><p>Once a payment or invoice is fully refunded, no more refunds can be created. Errors will be returned if the payment is greater than available refund funds.</p>
  result = api_instance.create_refund(refund)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->create_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refund** | [**Refund**](Refund.md)| The refund object to be created. | 

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_refunds**
> RefundPagedMetadata get_all_refunds(opts)

Returns a collection of all refunds. By default 10 values are returned. Refunds are returned in natural order

{\"nickname\":\"Get all refunds\",\"response\":\"getRefundsAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first refund to return.
  records: 10, # Integer | The maximum number of refunds to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of all refunds. By default 10 values are returned. Refunds are returned in natural order
  result = api_instance.get_all_refunds(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->get_all_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first refund to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of refunds to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_refund_by_id**
> RefundPagedMetadata get_refund_by_id(refund_id, opts)

Returns a single refund, specified by the ID parameter.

{\"nickname\":\"Retrieve an existing refund\",\"response\":\"getRefundByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

refund_id = "refund_id_example" # String | ID of the Refund.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single refund, specified by the ID parameter.
  result = api_instance.get_refund_by_id(refund_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->get_refund_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refund_id** | **String**| ID of the Refund. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_refund_for_original_payment**
> RefundPagedMetadata get_refund_for_original_payment(payment_id, opts)

Returns a refund for the original payment.

{\"nickname\":\"Retrieve by originating payment\",\"response\":\"getRefundsByPayment.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

payment_id = "payment_id_example" # String | ID of the Payment.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a refund for the original payment.
  result = api_instance.get_refund_for_original_payment(payment_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->get_refund_for_original_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**| ID of the Payment. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_refund_for_refund_payment**
> RefundPagedMetadata get_refund_for_refund_payment(payment_id, opts)

Returns a refund for the refund payment.

{\"nickname\":\"Retrieve by refund payment\",\"response\":\"getRefundsByPayment.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

payment_id = "payment_id_example" # String | ID of the Payment.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a refund for the refund payment.
  result = api_instance.get_refund_for_refund_payment(payment_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->get_refund_for_refund_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**| ID of the Payment. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_refund_for_refunded_invoice**
> RefundPagedMetadata get_refund_for_refunded_invoice(invoice_id, opts)

Returns a refund for the refund payment.

{\"nickname\":\"Retrieve by invoice\",\"response\":\"getRefundsByInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

invoice_id = "invoice_id_example" # String | ID of the Invoice.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a refund for the refund payment.
  result = api_instance.get_refund_for_refunded_invoice(invoice_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->get_refund_for_refunded_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| ID of the Invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_refunds_as_csv**
> RefundPagedMetadata get_refunds_as_csv(completed_start, completed_end, opts)

Retrieves refunds in CSV format.

{ \"nickname\":\"Refunds CSV\",\"response\":\"refunds.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

completed_start = "completed_start_example" # String | The UTC DateTime specifying the start of the interval within which refunds were completed.

completed_end = "completed_end_example" # String | The UTC DateTime specifying the end of the interval within which refunds were completed.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 56, # Integer | The offset from the first refund to return.
  records: 56, # Integer | The maximum number of refunds to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieves refunds in CSV format.
  result = api_instance.get_refunds_as_csv(completed_start, completed_end, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->get_refunds_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **completed_start** | **String**| The UTC DateTime specifying the start of the interval within which refunds were completed. | 
 **completed_end** | **String**| The UTC DateTime specifying the end of the interval within which refunds were completed. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first refund to return. | [optional] 
 **records** | **Integer**| The maximum number of refunds to return. | [optional] 
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv



# **update_refund**
> RefundPagedMetadata update_refund(refund)

Update a refund

{\"nickname\":\"Update a refund\",\"request\":\"updateRefundRequest.html\",\"response\":\"updateRefundResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::RefundsApi.new

refund = Bfwd::Refund.new # Refund | The refund object to be update.


begin
  #Update a refund
  result = api_instance.update_refund(refund)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling RefundsApi->update_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refund** | [**Refund**](Refund.md)| The refund object to be update. | 

### Return type

[**RefundPagedMetadata**](RefundPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



