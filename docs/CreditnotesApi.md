# BillForward::CreditnotesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_credit_note**](CreditnotesApi.md#create_credit_note) | **POST** /credit-notes | Create a credit note.
[**get_credit_note_by_id**](CreditnotesApi.md#get_credit_note_by_id) | **GET** /credit-notes/{credit-note-ID} | Returns a single credit-note, specified by the ID parameter.
[**get_credit_note_for_account**](CreditnotesApi.md#get_credit_note_for_account) | **GET** /credit-notes/account/{account-ID} | Returns credit notes for an account.
[**get_credit_note_for_invoice**](CreditnotesApi.md#get_credit_note_for_invoice) | **GET** /credit-notes/invoice/{invoice-ID} | Returns credit notes for an invoice.
[**get_credit_note_for_subscription**](CreditnotesApi.md#get_credit_note_for_subscription) | **GET** /credit-notes/subscription/{subscription-ID} | Returns credit notes for an subscription.
[**retire_credit_note**](CreditnotesApi.md#retire_credit_note) | **DELETE** /credit-notes/{credit-note-ID} | Removes any remaining value from credit note


# **create_credit_note**
> CreditNotePagedMetadata create_credit_note(credit_note)

Create a credit note.

{\"nickname\":\"Create a new credit note\",\"request\":\"createCreditNoteRequest.html\",\"response\":\"createCreditNoteResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CreditnotesApi.new

credit_note = BillForward::CreditNote.new # CreditNote | The credit note object to be created.


begin
  #Create a credit note.
  result = api_instance.create_credit_note(credit_note)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CreditnotesApi->create_credit_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_note** | [**CreditNote**](CreditNote.md)| The credit note object to be created. | 

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_credit_note_by_id**
> CreditNotePagedMetadata get_credit_note_by_id(credit_note_id, opts)

Returns a single credit-note, specified by the ID parameter.

{\"nickname\":\"Retrieve an existing credit note\",\"response\":\"getCreditNoteByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CreditnotesApi.new

credit_note_id = "credit_note_id_example" # String | ID of the credit-note.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single credit-note, specified by the ID parameter.
  result = api_instance.get_credit_note_by_id(credit_note_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CreditnotesApi->get_credit_note_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_note_id** | **String**| ID of the credit-note. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_credit_note_for_account**
> CreditNotePagedMetadata get_credit_note_for_account(account_id, opts)

Returns credit notes for an account.

{\"nickname\":\"Retrieve by account\",\"response\":\"getCreditNotesByAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CreditnotesApi.new

account_id = "account_id_example" # String | ID of the account.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment to return.
  records: 10, # Integer | The maximum number of payments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns credit notes for an account.
  result = api_instance.get_credit_note_for_account(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CreditnotesApi->get_credit_note_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the account. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_credit_note_for_invoice**
> CreditNotePagedMetadata get_credit_note_for_invoice(invoice_id, opts)

Returns credit notes for an invoice.

{\"nickname\":\"Retrieve by invoice\",\"response\":\"getCreditNotesByInvoice.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CreditnotesApi.new

invoice_id = "invoice_id_example" # String | ID of the Invoice.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment to return.
  records: 10, # Integer | The maximum number of payments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns credit notes for an invoice.
  result = api_instance.get_credit_note_for_invoice(invoice_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CreditnotesApi->get_credit_note_for_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**| ID of the Invoice. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_credit_note_for_subscription**
> CreditNotePagedMetadata get_credit_note_for_subscription(subscription_id, opts)

Returns credit notes for an subscription.

{\"nickname\":\"Retrieve by subscription\",\"response\":\"getCreditNotesSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CreditnotesApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first payment to return.
  records: 10, # Integer | The maximum number of payments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns credit notes for an subscription.
  result = api_instance.get_credit_note_for_subscription(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CreditnotesApi->get_credit_note_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first payment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of payments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **retire_credit_note**
> CreditNotePagedMetadata retire_credit_note(credit_note_id, organizations)

Removes any remaining value from credit note

{\"nickname\":\"Removes remaining value from credit note\",\"response\":\"deleteCreditNote.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CreditnotesApi.new

credit_note_id = "credit_note_id_example" # String | ID of the credit-note.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Removes any remaining value from credit note
  result = api_instance.retire_credit_note(credit_note_id, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CreditnotesApi->retire_credit_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_note_id** | **String**| ID of the credit-note. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



