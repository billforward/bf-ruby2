# BillForward::InvoicesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_charge_to_invoice**](InvoicesApi.md#add_charge_to_invoice) | **POST** /invoices/{invoice-ID}/charges | Creates a charge on the specified invoice.
[**aggregate_invoices**](InvoicesApi.md#aggregate_invoices) | **POST** /invoices/aggregate | Aggregate Invoices into to one parent Invoice
[**execute_invoice**](InvoicesApi.md#execute_invoice) | **POST** /invoices/{invoice-ID}/execute | Attempt payment for the outstanding value of an invoice
[**generate_line_payments_for_all_invoices**](InvoicesApi.md#generate_line_payments_for_all_invoices) | **POST** /invoices/generate-line-payments | Generates InvoiceLinePayments for all existing InvoicePayments.
[**get_all_invoices**](InvoicesApi.md#get_all_invoices) | **GET** /invoices | Retrieves a collection of all invoices. By default 10 values are returned. Records are returned in natural order.
[**get_all_invoices_as_csv**](InvoicesApi.md#get_all_invoices_as_csv) | **GET** /invoices/all.csv | Retrieves a collection of all invoices. By default 10 values are returned. Records are returned in natural order.
[**get_bucketed_revenue_attributions_as_csv**](InvoicesApi.md#get_bucketed_revenue_attributions_as_csv) | **GET** /invoices/bucketed-revenue-attributions.csv | Retrieves (as CSV) all attributions of Invoice costs to Invoice lines, bucketed.
[**get_charges_on_invoice**](InvoicesApi.md#get_charges_on_invoice) | **GET** /invoices/{invoice-ID}/charges | Returns all charges for the specified invoice. By default 10 values are returned. Records are returned in natural order.
[**get_credit_invoice_line_payments_from_invoices_as_csv**](InvoicesApi.md#get_credit_invoice_line_payments_from_invoices_as_csv) | **GET** /invoices/credit.csv | Retrieves credit note-paid from InvoicePayments upon line items, in CSV format.
[**get_credit_invoice_line_payments_from_invoices_as_csv_by_payment_received**](InvoicesApi.md#get_credit_invoice_line_payments_from_invoices_as_csv_by_payment_received) | **GET** /invoices/payment-received/credit.csv | Retrieves credit note-paid from InvoicePayments upon line items, in CSV format.
[**get_debit_invoice_line_payments_from_invoices_as_csv**](InvoicesApi.md#get_debit_invoice_line_payments_from_invoices_as_csv) | **GET** /invoices/revenue.csv | Retrieves received revenue from InvoicePayments upon line items, in CSV format.
[**get_debit_invoice_line_payments_from_invoices_as_csv_by_payment_received**](InvoicesApi.md#get_debit_invoice_line_payments_from_invoices_as_csv_by_payment_received) | **GET** /invoices/payment-received/revenue.csv | Retrieves received revenue from InvoicePayments upon line items, in CSV format.
[**get_invoice_as_html**](InvoicesApi.md#get_invoice_as_html) | **GET** /invoices/{ID}.html | Retrieves a single invoice specified by the ID parameter.
[**get_invoice_as_pdf**](InvoicesApi.md#get_invoice_as_pdf) | **GET** /invoices/{ID}.pdf | Retrieves a single invoice specified by the ID parameter.
[**get_invoice_by_id**](InvoicesApi.md#get_invoice_by_id) | **GET** /invoices/{invoice-ID} | Retrieves a single invoice specified by the invoice-ID parameter.
[**get_invoice_by_id_as_csv**](InvoicesApi.md#get_invoice_by_id_as_csv) | **GET** /invoices/{ID}.csv | Retrieves a single invoice specified by the ID parameter.
[**get_invoice_by_subscription_id**](InvoicesApi.md#get_invoice_by_subscription_id) | **GET** /invoices/subscription/{subscription-ID} | Retrieves a collection of invoices specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_invoice_by_subscription_version_id**](InvoicesApi.md#get_invoice_by_subscription_version_id) | **GET** /invoices/subscription/version/{subscription-version-ID} | Retrieves a collection of invoices specified by the subscription-version-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_invoice_by_version_id**](InvoicesApi.md#get_invoice_by_version_id) | **GET** /invoices/version/{version-ID} | Retrieves a single invoice, specified by the version-ID parameter.
[**get_invoices_by_account_id**](InvoicesApi.md#get_invoices_by_account_id) | **GET** /invoices/account/{account-ID} | Retrieves a collection of invoices specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_invoices_by_period_end**](InvoicesApi.md#get_invoices_by_period_end) | **GET** /invoices/period-end/{lower-threshold}/{upper-threshold} | Retrieves a collection of invoice objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_invoices_by_period_start**](InvoicesApi.md#get_invoices_by_period_start) | **GET** /invoices/period-start/{lower-threshold}/{upper-threshold} | Retrieves a collection of invoice objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_invoices_by_period_start_as_csv**](InvoicesApi.md#get_invoices_by_period_start_as_csv) | **GET** /invoices/period-start/{lower-threshold}/{upper-threshold}.csv | Retrieves a collection of invoice objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_invoices_by_state**](InvoicesApi.md#get_invoices_by_state) | **GET** /invoices/state/{state} | Retrieves a collection of invoices, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
[**get_invoices_by_state_and_period_start**](InvoicesApi.md#get_invoices_by_state_and_period_start) | **GET** /invoices/state/{state}/period-start/{lower-threshold}/{upper-threshold} | Retrieves a collection of invoice objects specified by the state parameter and with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_invoices_by_state_and_period_start_as_csv**](InvoicesApi.md#get_invoices_by_state_and_period_start_as_csv) | **GET** /invoices/state/{state}/period-start/{lower-threshold}/{upper-threshold}.csv | Retrieves a collection of invoice objects specified by the state parameter and with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_invoices_by_state_as_csv**](InvoicesApi.md#get_invoices_by_state_as_csv) | **GET** /invoices/state/{state}.csv | Retrieves a collection of invoices, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
[**get_line_payments**](InvoicesApi.md#get_line_payments) | **GET** /invoices/line-payments | Retrieves all InvoiceLine payment attributions.
[**get_line_payments_as_csv**](InvoicesApi.md#get_line_payments_as_csv) | **GET** /invoices/line-payments.csv | Retrieves (as CSV) all InvoiceLine payment attributions.
[**get_metadata_for_invoice**](InvoicesApi.md#get_metadata_for_invoice) | **GET** /invoices/{invoice-ID}/metadata | Retrieve any associated metadata.
[**get_refund_invoice_line_payments_from_invoices_as_csv**](InvoicesApi.md#get_refund_invoice_line_payments_from_invoices_as_csv) | **GET** /invoices/refund.csv | Retrieves awarded refunds from InvoicePayments upon line items, in CSV format.
[**get_refund_invoice_line_payments_from_invoices_as_csv_by_refund_received**](InvoicesApi.md#get_refund_invoice_line_payments_from_invoices_as_csv_by_refund_received) | **GET** /invoices/payment-received/refund.csv | Retrieves awarded refunds from InvoicePayments upon line items, in CSV format.
[**get_revenue_attributions**](InvoicesApi.md#get_revenue_attributions) | **GET** /invoices/revenue-attributions | Retrieves all attributions of Invoice costs to Invoice lines.
[**get_revenue_attributions_as_csv**](InvoicesApi.md#get_revenue_attributions_as_csv) | **GET** /invoices/revenue-attributions.csv | Retrieves (as CSV) all attributions of Invoice costs to Invoice lines.
[**get_swagger_for_invoice**](InvoicesApi.md#get_swagger_for_invoice) | **GET** /invoices/swagger-end-point/{query-string} | 
[**import_invoice**](InvoicesApi.md#import_invoice) | **POST** /invoices/import | Import an invoice.
[**recalculate_invoice**](InvoicesApi.md#recalculate_invoice) | **POST** /invoices/{invoice-ID}/recalculate | Re-calculate an Invoice.
[**remove_charge_from_invoice**](InvoicesApi.md#remove_charge_from_invoice) | **DELETE** /invoices/{invoice-ID}/charges/{charge-ID} | Removes the specified charge from the specified Invoice.
[**remove_metadata_from_invoice**](InvoicesApi.md#remove_metadata_from_invoice) | **DELETE** /invoices/{invoice-ID}/metadata | Remove any associated metadata.
[**set_metadata_for_invoice**](InvoicesApi.md#set_metadata_for_invoice) | **POST** /invoices/{invoice-ID}/metadata | Remove any existing metadata keys and create the provided data.
[**update_invoice**](InvoicesApi.md#update_invoice) | **PUT** /invoices | Update an Invoice.
[**upsert_metadata_for_invoice**](InvoicesApi.md#upsert_metadata_for_invoice) | **PUT** /invoices/{invoice-ID}/metadata | Update any existing metadata key-values and insert any new key-values, no keys will be removed.
[**void_invoice**](InvoicesApi.md#void_invoice) | **DELETE** /invoices/{invoice-ID} | Voids the invoice specified by the invoice identifier parameter.


# **add_charge_to_invoice**
> SubscriptionChargePagedMetadata add_charge_to_invoice(invoice_id, charge)

Creates a charge on the specified invoice.

{\"nickname\":\"Add to invoice\",\"response\":\"addChargeToInvoice.html\",\"request\":\"addChargeToInvoiceRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | ID of the invoice.

charge = BillForward::AddChargeRequest.new # AddChargeRequest | The charge request


begin
  #Creates a charge on the specified invoice.
  result = api_instance.add_charge_to_invoice(invoice_id, charge)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->add_charge_to_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| ID of the invoice. | 
 **charge** | [**AddChargeRequest**](AddChargeRequest.md)| The charge request | 

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **aggregate_invoices**
> InvoicePagedMetadata aggregate_invoices(request)

Aggregate Invoices into to one parent Invoice

{\"nickname\":\"Aggregate invoices\",\"response\":\"AggregateResponse.html\",\"request\":\"AggregateRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

request = BillForward::BillingEntityBase.new # BillingEntityBase | 


begin
  #Aggregate Invoices into to one parent Invoice
  result = api_instance.aggregate_invoices(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->aggregate_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BillingEntityBase**](BillingEntityBase.md)|  | 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **execute_invoice**
> InvoicePagedMetadata execute_invoice(invoice_id, request)

Attempt payment for the outstanding value of an invoice

{\"nickname\":\"Execute invoice\",\"response\":\"executeInvoiceResponse.html\",\"request\":\"ExecuteInvoiceRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

request = BillForward::BillingEntityBase.new # BillingEntityBase | 


begin
  #Attempt payment for the outstanding value of an invoice
  result = api_instance.execute_invoice(invoice_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->execute_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **request** | [**BillingEntityBase**](BillingEntityBase.md)|  | 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **generate_line_payments_for_all_invoices**
> InvoiceLinePaymentPagedMetadata generate_line_payments_for_all_invoices(opts)

Generates InvoiceLinePayments for all existing InvoicePayments.

{ \"nickname\" : \"Generate InvoiceLinePayments\",\"response\" : \"Generate InvoiceLinePayments.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Generates InvoiceLinePayments for all existing InvoicePayments.
  result = api_instance.generate_line_payments_for_all_invoices(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->generate_line_payments_for_all_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_invoices**
> InvoicePagedMetadata get_all_invoices(opts)

Retrieves a collection of all invoices. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve all invoices\",\"response\" : \"getInvoiceAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  exclude_children: true, # BOOLEAN | Should child invoices be excluded.
  metadata: "metadata_example" # String | 
}

begin
  #Retrieves a collection of all invoices. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_invoices(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_all_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child invoices be excluded. | [optional] [default to true]
 **metadata** | **String**|  | [optional] 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_all_invoices_as_csv**
> InvoicePagedMetadata get_all_invoices_as_csv(opts)

Retrieves a collection of all invoices. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve all invoices\",\"response\" : \"getInvoiceAll.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of all invoices. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_invoices_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_all_invoices_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_bucketed_revenue_attributions_as_csv**
> String get_bucketed_revenue_attributions_as_csv(opts)

Retrieves (as CSV) all attributions of Invoice costs to Invoice lines, bucketed.

{ \"nickname\" : \"(CSV) Retrieve bucketed revenue attributions\",\"response\" : \"getBucketedRevenueAttributions.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which revenue attributions will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which revenue attributions will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves (as CSV) all attributions of Invoice costs to Invoice lines, bucketed.
  result = api_instance.get_bucketed_revenue_attributions_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_bucketed_revenue_attributions_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which revenue attributions will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which revenue attributions will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_charges_on_invoice**
> SubscriptionChargePagedMetadata get_charges_on_invoice(invoice_id, opts)

Returns all charges for the specified invoice. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"List on invoice\",\"response\":\"getChargesInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  state: "state_example", # String | Ihe direction of any ordering, either ASC or DESC.
  type: "type_example", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Returns all charges for the specified invoice. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_charges_on_invoice(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_charges_on_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **state** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] 
 **type** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] 
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_credit_invoice_line_payments_from_invoices_as_csv**
> InvoiceLinePaymentPagedMetadata get_credit_invoice_line_payments_from_invoices_as_csv(opts)

Retrieves credit note-paid from InvoicePayments upon line items, in CSV format.

{ \"nickname\" : \"Credit InvoiceLinePayments CSV\",\"response\" : \"Credit InvoiceLinePayments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which credit payments will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which credit payments will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves credit note-paid from InvoicePayments upon line items, in CSV format.
  result = api_instance.get_credit_invoice_line_payments_from_invoices_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_credit_invoice_line_payments_from_invoices_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which credit payments will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which credit payments will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_credit_invoice_line_payments_from_invoices_as_csv_by_payment_received**
> InvoiceLinePaymentPagedMetadata get_credit_invoice_line_payments_from_invoices_as_csv_by_payment_received(opts)

Retrieves credit note-paid from InvoicePayments upon line items, in CSV format.

{ \"nickname\" : \"Credit InvoiceLinePayments CSV\",\"response\" : \"Credit InvoiceLinePayments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which credit payments will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which credit payments will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves credit note-paid from InvoicePayments upon line items, in CSV format.
  result = api_instance.get_credit_invoice_line_payments_from_invoices_as_csv_by_payment_received(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_credit_invoice_line_payments_from_invoices_as_csv_by_payment_received: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which credit payments will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which credit payments will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_debit_invoice_line_payments_from_invoices_as_csv**
> InvoiceLinePaymentPagedMetadata get_debit_invoice_line_payments_from_invoices_as_csv(opts)

Retrieves received revenue from InvoicePayments upon line items, in CSV format.

{ \"nickname\" : \"Debit InvoiceLinePayments CSV\",\"response\" : \"Debit InvoiceLinePayments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which revenue will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which revenue will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves received revenue from InvoicePayments upon line items, in CSV format.
  result = api_instance.get_debit_invoice_line_payments_from_invoices_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_debit_invoice_line_payments_from_invoices_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which revenue will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which revenue will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_debit_invoice_line_payments_from_invoices_as_csv_by_payment_received**
> InvoiceLinePaymentPagedMetadata get_debit_invoice_line_payments_from_invoices_as_csv_by_payment_received(opts)

Retrieves received revenue from InvoicePayments upon line items, in CSV format.

{ \"nickname\" : \"Debit InvoiceLinePayments CSV\",\"response\" : \"Debit InvoiceLinePayments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which revenue will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which revenue will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves received revenue from InvoicePayments upon line items, in CSV format.
  result = api_instance.get_debit_invoice_line_payments_from_invoices_as_csv_by_payment_received(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_debit_invoice_line_payments_from_invoices_as_csv_by_payment_received: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which revenue will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which revenue will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_invoice_as_html**
> String get_invoice_as_html(id, opts)

Retrieves a single invoice specified by the ID parameter.

{ \"nickname\" : \"HTML invoice\",\"response\" : \"getInvoiceByID.HTML.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

id = "id_example" # String | The ID of the invoice.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  tier_breakdown: false, # BOOLEAN | Whether to provide a breakdown of charge tiering.
  inclusive_end: false, # BOOLEAN | Whether to present in the Invoice date range only those dates whose entirety are involved in the billing period. In other words: when true, this subtracts 1 from the \"period end\" date shown to the customer.
  show_zero_cost: true, # BOOLEAN | Whether to show zero-cost lines.
  show_plan_only_when_ambiguous: true # BOOLEAN | Whether to state which plan the Invoice lines came from, regardless of whether there's only one plan involved in this Invoice.
}

begin
  #Retrieves a single invoice specified by the ID parameter.
  result = api_instance.get_invoice_as_html(id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_as_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **tier_breakdown** | **BOOLEAN**| Whether to provide a breakdown of charge tiering. | [optional] [default to false]
 **inclusive_end** | **BOOLEAN**| Whether to present in the Invoice date range only those dates whose entirety are involved in the billing period. In other words: when true, this subtracts 1 from the \&quot;period end\&quot; date shown to the customer. | [optional] [default to false]
 **show_zero_cost** | **BOOLEAN**| Whether to show zero-cost lines. | [optional] [default to true]
 **show_plan_only_when_ambiguous** | **BOOLEAN**| Whether to state which plan the Invoice lines came from, regardless of whether there&#39;s only one plan involved in this Invoice. | [optional] [default to true]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/html



# **get_invoice_as_pdf**
> File get_invoice_as_pdf(id, opts)

Retrieves a single invoice specified by the ID parameter.

{ \"nickname\" : \"PDF Invoice\",\"response\" : \"getInvoiceByID.pdf\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

id = "id_example" # String | The ID of the invoice.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  tier_breakdown: false, # BOOLEAN | Whether to provide a breakdown of charge tiering.
  inclusive_end: false, # BOOLEAN | Whether to present in the Invoice date range only those dates whose entirety are involved in the billing period. In other words: when true, this subtracts 1 from the \"period end\" date shown to the customer.
  show_zero_cost: true, # BOOLEAN | Whether to show zero-cost lines.
  show_plan_only_when_ambiguous: true, # BOOLEAN | Whether to state which plan the Invoice lines came from, regardless of whether there's only one plan involved in this Invoice.
  include_footer: true, # BOOLEAN | 
  group_line_items_by: "group_line_items_by_example" # String | 
}

begin
  #Retrieves a single invoice specified by the ID parameter.
  result = api_instance.get_invoice_as_pdf(id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_as_pdf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **tier_breakdown** | **BOOLEAN**| Whether to provide a breakdown of charge tiering. | [optional] [default to false]
 **inclusive_end** | **BOOLEAN**| Whether to present in the Invoice date range only those dates whose entirety are involved in the billing period. In other words: when true, this subtracts 1 from the \&quot;period end\&quot; date shown to the customer. | [optional] [default to false]
 **show_zero_cost** | **BOOLEAN**| Whether to show zero-cost lines. | [optional] [default to true]
 **show_plan_only_when_ambiguous** | **BOOLEAN**| Whether to state which plan the Invoice lines came from, regardless of whether there&#39;s only one plan involved in this Invoice. | [optional] [default to true]
 **include_footer** | **BOOLEAN**|  | [optional] 
 **group_line_items_by** | **String**|  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/pdf



# **get_invoice_by_id**
> InvoicePagedMetadata get_invoice_by_id(invoice_id, opts)

Retrieves a single invoice specified by the invoice-ID parameter.

{ \"nickname\" : \"Retrieve an existing invoice\",\"response\" : \"getInvoiceByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | The ID of the invoice.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  exclude_children: true # BOOLEAN | Should child invoices be excluded.
}

begin
  #Retrieves a single invoice specified by the invoice-ID parameter.
  result = api_instance.get_invoice_by_id(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| The ID of the invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child invoices be excluded. | [optional] [default to true]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoice_by_id_as_csv**
> String get_invoice_by_id_as_csv(id, opts)

Retrieves a single invoice specified by the ID parameter.

{ \"nickname\" : \"CSV invoice\",\"response\" : \"getInvoiceByID.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

id = "id_example" # String | The ID of the invoice.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves a single invoice specified by the ID parameter.
  result = api_instance.get_invoice_by_id_as_csv(id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_by_id_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_invoice_by_subscription_id**
> InvoicePagedMetadata get_invoice_by_subscription_id(subscription_id, opts)

Retrieves a collection of invoices specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by subscription\",\"response\" : \"getInvoiceBySubscriptionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  exclude_children: true # BOOLEAN | Should child invoices be excluded.
}

begin
  #Retrieves a collection of invoices specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoice_by_subscription_id(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_by_subscription_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child invoices be excluded. | [optional] [default to true]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoice_by_subscription_version_id**
> InvoicePagedMetadata get_invoice_by_subscription_version_id(subscription_version_id, opts)

Retrieves a collection of invoices specified by the subscription-version-ID parameter. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by subscription version\",\"response\" : \"getInvoiceBySubscriptionVersionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

subscription_version_id = "subscription_version_id_example" # String | Version ID of the subscription.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  exclude_children: true # BOOLEAN | Should child invoices be excluded.
}

begin
  #Retrieves a collection of invoices specified by the subscription-version-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoice_by_subscription_version_id(subscription_version_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_by_subscription_version_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_version_id** | **String**| Version ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child invoices be excluded. | [optional] [default to true]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoice_by_version_id**
> InvoicePagedMetadata get_invoice_by_version_id(version_id, opts)

Retrieves a single invoice, specified by the version-ID parameter.

{ \"nickname\" : \"Retrieve by version\",\"response\" : \"getInvoiceByVersionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

version_id = "version_id_example" # String | The version-ID of the invoice.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves a single invoice, specified by the version-ID parameter.
  result = api_instance.get_invoice_by_version_id(version_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_by_version_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version_id** | **String**| The version-ID of the invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json, text/xml



# **get_invoices_by_account_id**
> InvoicePagedMetadata get_invoices_by_account_id(account_id, opts)

Retrieves a collection of invoices specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by account\",\"response\" : \"getInvoiceByAccountID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

account_id = "account_id_example" # String | ID of the account.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false, # BOOLEAN | Whether retired products should be returned.
  exclude_children: true # BOOLEAN | Should child invoices be excluded.
}

begin
  #Retrieves a collection of invoices specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_account_id(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the account. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]
 **exclude_children** | **BOOLEAN**| Should child invoices be excluded. | [optional] [default to true]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoices_by_period_end**
> InvoicePagedMetadata get_invoices_by_period_end(lower_threshold, upper_threshold, opts)

Retrieves a collection of invoice objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by period-end\",\"response\" : \"getInvoiceByPeriodEnd.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of invoice objects with period-end times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_period_end(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_period_end: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoices_by_period_start**
> InvoicePagedMetadata get_invoices_by_period_start(lower_threshold, upper_threshold, opts)

Retrieves a collection of invoice objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by period-start\",\"response\" : \"getInvoiceByPeriodStart.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of invoice objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_period_start(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_period_start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoices_by_period_start_as_csv**
> InvoicePagedMetadata get_invoices_by_period_start_as_csv(lower_threshold, upper_threshold, opts)

Retrieves a collection of invoice objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by period-start\",\"response\" : \"getInvoiceByPeriodStart.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of invoice objects with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_period_start_as_csv(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_period_start_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_invoices_by_state**
> InvoicePagedMetadata get_invoices_by_state(state, opts)

Retrieves a collection of invoices, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by state\",\"response\" : \"getInvoiceByState.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

state = "state_example" # String | The current state of the invoice, either Paid, Pending,  Unpaid or Voided.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "ID", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of invoices, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_state(state, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The current state of the invoice, either Paid, Pending,  Unpaid or Voided. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to ID]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoices_by_state_and_period_start**
> InvoicePagedMetadata get_invoices_by_state_and_period_start(state, lower_threshold, upper_threshold, opts)

Retrieves a collection of invoice objects specified by the state parameter and with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by state and period-start\",\"response\" : \"getInvoiceByStateAndPeriodStart.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

state = "state_example" # String | The current state of the invoice, either Paid, Pending,  Unpaid or Voided.

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of invoice objects specified by the state parameter and with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_state_and_period_start(state, lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_state_and_period_start: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The current state of the invoice, either Paid, Pending,  Unpaid or Voided. | 
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_invoices_by_state_and_period_start_as_csv**
> InvoicePagedMetadata get_invoices_by_state_and_period_start_as_csv(state, lower_threshold, upper_threshold, opts)

Retrieves a collection of invoice objects specified by the state parameter and with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by state and period-start\",\"response\" : \"getInvoiceByStateAndPeriodStart.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

state = "state_example" # String | The current state of the invoice, either Paid, Pending,  Unpaid or Voided.

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of invoice objects specified by the state parameter and with period-start times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_state_and_period_start_as_csv(state, lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_state_and_period_start_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The current state of the invoice, either Paid, Pending,  Unpaid or Voided. | 
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_invoices_by_state_as_csv**
> InvoicePagedMetadata get_invoices_by_state_as_csv(state, opts)

Retrieves a collection of invoices, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Retrieve by state\",\"response\" : \"getInvoiceByState.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

state = "state_example" # String | The current state of the invoice, either Paid, Pending,  Unpaid or Voided.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "ID", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Retrieves a collection of invoices, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_invoices_by_state_as_csv(state, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices_by_state_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The current state of the invoice, either Paid, Pending,  Unpaid or Voided. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to ID]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_line_payments**
> InvoiceLinePaymentPagedMetadata get_line_payments(opts)

Retrieves all InvoiceLine payment attributions.

{ \"nickname\" : \"Retrieve InvoiceLine payment attributions\",\"response\" : \"getInvoiceLinePayments.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which line payment attributions will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example", # String | The UTC DateTime specifying the end of the interval within which line payment attributions will be recognised (example input: 2015-10-13T11:50:24).
  include_gateway: ["include_gateway_example"], # Array<String> | Include attributions only from payments made via these payment gateways. Takes precedence over `exclude_gateway` param (if both are provided).
  exclude_gateway: ["exclude_gateway_example"] # Array<String> | Include attributions from payments made via all payment gateways, except these.
}

begin
  #Retrieves all InvoiceLine payment attributions.
  result = api_instance.get_line_payments(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_line_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which line payment attributions will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which line payment attributions will be recognised (example input: 2015-10-13T11:50:24). | [optional] 
 **include_gateway** | [**Array&lt;String&gt;**](String.md)| Include attributions only from payments made via these payment gateways. Takes precedence over &#x60;exclude_gateway&#x60; param (if both are provided). | [optional] 
 **exclude_gateway** | [**Array&lt;String&gt;**](String.md)| Include attributions from payments made via all payment gateways, except these. | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_line_payments_as_csv**
> InvoiceLinePaymentPagedMetadata get_line_payments_as_csv(opts)

Retrieves (as CSV) all InvoiceLine payment attributions.

{ \"nickname\" : \"(CSV) Retrieve InvoiceLine payment attributions\",\"response\" : \"getInvoiceLinePayments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which line payment attributions will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example", # String | The UTC DateTime specifying the end of the interval within which line payment attributions will be recognised (example input: 2015-10-13T11:50:24).
  include_gateway: ["include_gateway_example"], # Array<String> | Include attributions only from payments made via these payment gateways. Takes precedence over `exclude_gateway` param (if both are provided).
  exclude_gateway: ["exclude_gateway_example"] # Array<String> | Include attributions from payments made via all payment gateways, except these.
}

begin
  #Retrieves (as CSV) all InvoiceLine payment attributions.
  result = api_instance.get_line_payments_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_line_payments_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which line payment attributions will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which line payment attributions will be recognised (example input: 2015-10-13T11:50:24). | [optional] 
 **include_gateway** | [**Array&lt;String&gt;**](String.md)| Include attributions only from payments made via these payment gateways. Takes precedence over &#x60;exclude_gateway&#x60; param (if both are provided). | [optional] 
 **exclude_gateway** | [**Array&lt;String&gt;**](String.md)| Include attributions from payments made via all payment gateways, except these. | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_metadata_for_invoice**
> DynamicMetadata get_metadata_for_invoice(invoice_id, opts)

Retrieve any associated metadata.

{\"nickname\":\"Retrieve metadata on invoice\",\"request\":\"getInvoiceMetadataRequest.html\",\"response\":\"getInvoiceMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieve any associated metadata.
  result = api_instance.get_metadata_for_invoice(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_metadata_for_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **get_refund_invoice_line_payments_from_invoices_as_csv**
> InvoiceLinePaymentPagedMetadata get_refund_invoice_line_payments_from_invoices_as_csv(opts)

Retrieves awarded refunds from InvoicePayments upon line items, in CSV format.

{ \"nickname\" : \"Refund InvoiceLinePayments CSV\",\"response\" : \"Refund InvoiceLinePayments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which refunds will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which refunds will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves awarded refunds from InvoicePayments upon line items, in CSV format.
  result = api_instance.get_refund_invoice_line_payments_from_invoices_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_refund_invoice_line_payments_from_invoices_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which refunds will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which refunds will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_refund_invoice_line_payments_from_invoices_as_csv_by_refund_received**
> InvoiceLinePaymentPagedMetadata get_refund_invoice_line_payments_from_invoices_as_csv_by_refund_received(opts)

Retrieves awarded refunds from InvoicePayments upon line items, in CSV format.

{ \"nickname\" : \"Refund InvoiceLinePayments CSV\",\"response\" : \"Refund InvoiceLinePayments.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which refunds will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which refunds will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves awarded refunds from InvoicePayments upon line items, in CSV format.
  result = api_instance.get_refund_invoice_line_payments_from_invoices_as_csv_by_refund_received(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_refund_invoice_line_payments_from_invoices_as_csv_by_refund_received: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which refunds will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which refunds will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

[**InvoiceLinePaymentPagedMetadata**](InvoiceLinePaymentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: text/csv



# **get_revenue_attributions**
> RevenueAttributionPagedMetadata get_revenue_attributions(opts)

Retrieves all attributions of Invoice costs to Invoice lines.

{ \"nickname\" : \"Retrieve revenue attributions\",\"response\" : \"getRevenueAttributions.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which revenue attributions will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which revenue attributions will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves all attributions of Invoice costs to Invoice lines.
  result = api_instance.get_revenue_attributions(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_revenue_attributions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which revenue attributions will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which revenue attributions will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

[**RevenueAttributionPagedMetadata**](RevenueAttributionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_revenue_attributions_as_csv**
> String get_revenue_attributions_as_csv(opts)

Retrieves (as CSV) all attributions of Invoice costs to Invoice lines.

{ \"nickname\" : \"(CSV) Retrieve revenue attributions\",\"response\" : \"getRevenueAttributions.csv\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  recognition_start: "recognition_start_example", # String | The UTC DateTime specifying the start of the interval within which revenue attributions will be recognised (example input: 2015-09-13T11:50:24).
  recognition_end: "recognition_end_example" # String | The UTC DateTime specifying the end of the interval within which revenue attributions will be recognised (example input: 2015-10-13T11:50:24).
}

begin
  #Retrieves (as CSV) all attributions of Invoice costs to Invoice lines.
  result = api_instance.get_revenue_attributions_as_csv(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_revenue_attributions_as_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **recognition_start** | **String**| The UTC DateTime specifying the start of the interval within which revenue attributions will be recognised (example input: 2015-09-13T11:50:24). | [optional] 
 **recognition_end** | **String**| The UTC DateTime specifying the end of the interval within which revenue attributions will be recognised (example input: 2015-10-13T11:50:24). | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_swagger_for_invoice**
> SwaggerTypeListInv get_swagger_for_invoice(query_string, opts)



{ \"nickname\" : \"\",\"response\" : \"\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

query_string = "query_string_example" # String | The query string used to search.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The starting index of the search results.
  records: 10, # Integer | The number of search results to return.
  format: "JSON", # String | The response format, either JSON or XML.
  wildcard: false, # BOOLEAN | Toggle if we search for full words or whether a wildcard is used.
  entity: false # BOOLEAN | Is an entity returned with the search results.
}

begin
  #
  result = api_instance.get_swagger_for_invoice(query_string, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->get_swagger_for_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_string** | **String**| The query string used to search. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The starting index of the search results. | [optional] [default to 0]
 **records** | **Integer**| The number of search results to return. | [optional] [default to 10]
 **format** | **String**| The response format, either JSON or XML. | [optional] [default to JSON]
 **wildcard** | **BOOLEAN**| Toggle if we search for full words or whether a wildcard is used. | [optional] [default to false]
 **entity** | **BOOLEAN**| Is an entity returned with the search results. | [optional] [default to false]

### Return type

[**SwaggerTypeListInv**](SwaggerTypeListInv.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **import_invoice**
> InvoicePagedMetadata import_invoice(request)

Import an invoice.

{\"nickname\":\"Import invoice\",\"response\":\"ImportInvoiceResponse.html\",\"request\":\"ImportInvoiceRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

request = BillForward::BillingEntityBase.new # BillingEntityBase | 


begin
  #Import an invoice.
  result = api_instance.import_invoice(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->import_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BillingEntityBase**](BillingEntityBase.md)|  | 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **recalculate_invoice**
> InvoicePagedMetadata recalculate_invoice(invoice_id, request)

Re-calculate an Invoice.

{\"nickname\":\"Re-calculate an invoice\",\"response\":\"recalculateInvoiceResponse.html\",\"request\":\"RecalculateInvoiceRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

request = BillForward::InvoiceRecalculationRequest.new # InvoiceRecalculationRequest | 


begin
  #Re-calculate an Invoice.
  result = api_instance.recalculate_invoice(invoice_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->recalculate_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **request** | [**InvoiceRecalculationRequest**](InvoiceRecalculationRequest.md)|  | 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_charge_from_invoice**
> SubscriptionChargePagedMetadata remove_charge_from_invoice(invoice_id, charge_id, opts)

Removes the specified charge from the specified Invoice.

{\"nickname\":\"Remove from invoice\",\"response\":\"deleteChargesInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

charge_id = "charge_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Removes the specified charge from the specified Invoice.
  result = api_instance.remove_charge_from_invoice(invoice_id, charge_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->remove_charge_from_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **charge_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **remove_metadata_from_invoice**
> DynamicMetadata remove_metadata_from_invoice(invoice_id, opts)

Remove any associated metadata.

{\"nickname\":\"Clear metadata from invoice\",\"request\" :\"deleteInvoiceMetadataRequest.html\",\"response\":\"deleteInvoiceMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any associated metadata.
  result = api_instance.remove_metadata_from_invoice(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->remove_metadata_from_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



# **set_metadata_for_invoice**
> DynamicMetadata set_metadata_for_invoice(metadata, invoice_id, opts)

Remove any existing metadata keys and create the provided data.

{\"nickname\":\"Set metadata on invoice\",\"request\":\"setInvoiceMetadataRequest.html\",\"response\":\"setInvoiceMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

invoice_id = "invoice_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any existing metadata keys and create the provided data.
  result = api_instance.set_metadata_for_invoice(metadata, invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->set_metadata_for_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **invoice_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_invoice**
> InvoicePagedMetadata update_invoice(invoice)

Update an Invoice.

{\"nickname\":\"Update an invoice\",\"response\":\"updateInvoiceResponse.html\",\"request\":\"updateInvoiceRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice = BillForward::Invoice.new # Invoice | The invoice object to be updated.


begin
  #Update an Invoice.
  result = api_instance.update_invoice(invoice)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->update_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice** | [**Invoice**](Invoice.md)| The invoice object to be updated. | 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **upsert_metadata_for_invoice**
> DynamicMetadata upsert_metadata_for_invoice(metadata, invoice_id, opts)

Update any existing metadata key-values and insert any new key-values, no keys will be removed.

{\"nickname\":\"Upsert metadata on invoice\",\"request\":\"upsertInvoiceMetadataRequest.html\",\"response\":\"upsertInvoiceMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

invoice_id = "invoice_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Update any existing metadata key-values and insert any new key-values, no keys will be removed.
  result = api_instance.upsert_metadata_for_invoice(metadata, invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->upsert_metadata_for_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **invoice_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **void_invoice**
> InvoicePagedMetadata void_invoice(invoice_id, organizations)

Voids the invoice specified by the invoice identifier parameter.

{ \"nickname\" : \"Void an invoice\",\"response\" : \"voidInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::InvoicesApi.new

invoice_id = "invoice_id_example" # String | ID of the invoice.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Voids the invoice specified by the invoice identifier parameter.
  result = api_instance.void_invoice(invoice_id, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling InvoicesApi->void_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| ID of the invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**InvoicePagedMetadata**](InvoicePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json
 - **Accept**: application/json



