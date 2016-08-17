# BillForward::SearchApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**perform_search**](SearchApi.md#perform_search) | **GET** /search/{query-string} | Returns the results of the global search specified by the query-string.


# **perform_search**
> SearchResultPagedMetadata perform_search(query_string, opts)

Returns the results of the global search specified by the query-string.

{\"nickname\":\"Search an organizations data\",\"response\":\"getSearchByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SearchApi.new

query_string = "query_string_example" # String | The query string used to search.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  types: ["types_example"], # Array<String> | A list of entities which will be checked when searching
  offset: 0, # Integer | The starting index of the search results.
  records: 10, # Integer | The number of search results to return.
  wildcard: false, # BOOLEAN | Toggle if we search for full words or whether a wildcard is used.
  entity: false # BOOLEAN | Is an entity returned with the search results.
}

begin
  #Returns the results of the global search specified by the query-string.
  result = api_instance.perform_search(query_string, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SearchApi->perform_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_string** | **String**| The query string used to search. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **types** | [**Array&lt;String&gt;**](String.md)| A list of entities which will be checked when searching | [optional] 
 **offset** | **Integer**| The starting index of the search results. | [optional] [default to 0]
 **records** | **Integer**| The number of search results to return. | [optional] [default to 10]
 **wildcard** | **BOOLEAN**| Toggle if we search for full words or whether a wildcard is used. | [optional] [default to false]
 **entity** | **BOOLEAN**| Is an entity returned with the search results. | [optional] [default to false]

### Return type

[**SearchResultPagedMetadata**](SearchResultPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



