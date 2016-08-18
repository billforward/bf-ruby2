# BillForward::AmendmentsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_amendment**](AmendmentsApi.md#create_amendment) | **POST** /amendments | Create an amendment.
[**get_all_amendments**](AmendmentsApi.md#get_all_amendments) | **GET** /amendments | Returns a collection of all amendments. By default 10 values are returned. Records are returned in natural order.
[**get_amendment_by_id**](AmendmentsApi.md#get_amendment_by_id) | **GET** /amendments/{amendment-ID} | Returns a single amendment, specified by the amendment-ID parameter.
[**get_amendment_by_state**](AmendmentsApi.md#get_amendment_by_state) | **GET** /amendments/state/{state} | Returns a collection of amendments, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
[**get_amendment_by_subscription_id**](AmendmentsApi.md#get_amendment_by_subscription_id) | **GET** /amendments/subscription/{subscription-ID} | Returns a collection of amendments, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_amendment_swagger**](AmendmentsApi.md#get_amendment_swagger) | **GET** /amendments/swagger-end-point/{query-string} | 
[**get_amendments_by_actioning_time**](AmendmentsApi.md#get_amendments_by_actioning_time) | **GET** /amendments/actioning-time/{lower-threshold}/{upper-threshold} | Returns a collection of amendment objects with an actioning-time within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_amendments_by_created_date**](AmendmentsApi.md#get_amendments_by_created_date) | **GET** /amendments/created/{lower-threshold}/{upper-threshold} | Returns a collection of amendment objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_amendments_by_updated_date**](AmendmentsApi.md#get_amendments_by_updated_date) | **GET** /amendments/updated/{lower-threshold}/{upper-threshold} | Returns a collection of amendment objects with updated times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**retire_amendment**](AmendmentsApi.md#retire_amendment) | **DELETE** /amendments/{amendment-ID} | Retires the amendment specified by the amendment-ID parameter. Retiring a amendment causes it to cancel based on the specificed retirement settings for the product.
[**update_amendment**](AmendmentsApi.md#update_amendment) | **PUT** /amendments | Update an amendment.


# **create_amendment**
> AmendmentPagedMetadata create_amendment(amendment)

Create an amendment.

{\"nickname\":\"Create a new amendment\",\"request\":\"createAmendmentRequest.html\",\"response\":\"createAmendmentResponse.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

amendment = BillForward::Amendment.new # Amendment | The amendment object to be created.


begin
  #Create an amendment.
  result = api_instance.create_amendment(amendment)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->create_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amendment** | [**Amendment**](Amendment.md)| The amendment object to be created. | 

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_amendments**
> AmendmentPagedMetadata get_all_amendments(opts)

Returns a collection of all amendments. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all amendments\",\"response\":\"getAmendmentAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 10, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  invoice_id: "invoice_id_example", # String | Ihe invoice ID associated with the amendment.
  state: "state_example", # String | Ihe state of the amendment.
  type: "type_example" # String | Ihe type of amendment.
}

begin
  #Returns a collection of all amendments. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_amendments(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_all_amendments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **invoice_id** | **String**| Ihe invoice ID associated with the amendment. | [optional] 
 **state** | **String**| Ihe state of the amendment. | [optional] 
 **type** | **String**| Ihe type of amendment. | [optional] 

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_amendment_by_id**
> AmendmentPagedMetadata get_amendment_by_id(amendment_id, opts)

Returns a single amendment, specified by the amendment-ID parameter.

{\"nickname\":\"Retrieve an existing amendment\",\"response\":\"getAmendmentByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

amendment_id = "amendment_id_example" # String | The unique string-ID of the amendment.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single amendment, specified by the amendment-ID parameter.
  result = api_instance.get_amendment_by_id(amendment_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amendment_id** | **String**| The unique string-ID of the amendment. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_amendment_by_state**
> AmendmentPagedMetadata get_amendment_by_state(state, opts)

Returns a collection of amendments, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by state\",\"response\":\"getAmendmentsByState.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

state = "state_example" # String | The current state of the amendment, either pending, succeeded, failed or discarded

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 10, # Integer | The maximum number of amendments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of amendments, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_amendment_by_state(state, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendment_by_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The current state of the amendment, either pending, succeeded, failed or discarded | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_amendment_by_subscription_id**
> AmendmentPagedMetadata get_amendment_by_subscription_id(subscription_id, opts)

Returns a collection of amendments, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by subscription\",\"response\":\"getAmendmentsBySubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

subscription_id = "subscription_id_example" # String | ID of the subscription

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 10, # Integer | The maximum number of amendments to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of amendments, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_amendment_by_subscription_id(subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendment_by_subscription_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| ID of the subscription | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_amendment_swagger**
> SwaggerTypeList get_amendment_swagger(query_string, opts)



{\"nickname\":\"\",\"response\":\"\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

query_string = "query_string_example" # String | The query string used to search.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The starting index of the search results.
  records: 10, # Integer | The number of search results to return.
  wildcard: false, # BOOLEAN | Toggle if we search for full words or whether a wildcard is used.
  entity: false # BOOLEAN | Is an entity returned with the search results.
}

begin
  #
  result = api_instance.get_amendment_swagger(query_string, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendment_swagger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_string** | **String**| The query string used to search. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The starting index of the search results. | [optional] [default to 0]
 **records** | **Integer**| The number of search results to return. | [optional] [default to 10]
 **wildcard** | **BOOLEAN**| Toggle if we search for full words or whether a wildcard is used. | [optional] [default to false]
 **entity** | **BOOLEAN**| Is an entity returned with the search results. | [optional] [default to false]

### Return type

[**SwaggerTypeList**](SwaggerTypeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_amendments_by_actioning_time**
> AmendmentPagedMetadata get_amendments_by_actioning_time(lower_threshold, upper_threshold, opts)

Returns a collection of amendment objects with an actioning-time within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by actioning\",\"response\":\"getAmendmentByActioningTime.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 10, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of amendment objects with an actioning-time within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_amendments_by_actioning_time(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendments_by_actioning_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_amendments_by_created_date**
> AmendmentPagedMetadata get_amendments_by_created_date(lower_threshold, upper_threshold, opts)

Returns a collection of amendment objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by creation\",\"response\":\"getAmendmentByCreated.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 10, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of amendment objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_amendments_by_created_date(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendments_by_created_date: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_amendments_by_updated_date**
> AmendmentPagedMetadata get_amendments_by_updated_date(lower_threshold, upper_threshold, opts)

Returns a collection of amendment objects with updated times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by updated\",\"response\":\"getAmendmentByUpdated.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 10, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of amendment objects with updated times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_amendments_by_updated_date(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->get_amendments_by_updated_date: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **retire_amendment**
> AmendmentPagedMetadata retire_amendment(amendment_id, organizations)

Retires the amendment specified by the amendment-ID parameter. Retiring a amendment causes it to cancel based on the specificed retirement settings for the product.

{\"nickname\":\"Delete an amendment\",\"response\":\"deleteAmendment.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

amendment_id = "amendment_id_example" # String | ID of the amendment.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Retires the amendment specified by the amendment-ID parameter. Retiring a amendment causes it to cancel based on the specificed retirement settings for the product.
  result = api_instance.retire_amendment(amendment_id, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->retire_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amendment_id** | **String**| ID of the amendment. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_amendment**
> AmendmentPagedMetadata update_amendment(amendment)

Update an amendment.

{\"nickname\":\"Update an amendment\",\"request\":\"updateAmendmentRequest.html\",\"response\":\"updateAmendmentResponse.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AmendmentsApi.new

amendment = BillForward::Amendment.new # Amendment | The amendment object to be updated.


begin
  #Update an amendment.
  result = api_instance.update_amendment(amendment)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AmendmentsApi->update_amendment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amendment** | [**Amendment**](Amendment.md)| The amendment object to be updated. | 

### Return type

[**AmendmentPagedMetadata**](AmendmentPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



