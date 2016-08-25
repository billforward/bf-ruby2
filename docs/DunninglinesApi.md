# Bfwd::DunninglinesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_dunning_line**](DunninglinesApi.md#create_dunning_line) | **POST** /dunning-lines | Create a dunning-line.
[**get_all_dunning_lines**](DunninglinesApi.md#get_all_dunning_lines) | **GET** /dunning-lines | Returns a collection of all dunning-lines. By default 10 values are returned. Records are returned in natural order.
[**get_dunning_line_by_attempt_index**](DunninglinesApi.md#get_dunning_line_by_attempt_index) | **GET** /dunning-lines/attempt-index/{index} | Returns a collection of dunning-lines specified by the index parameter. By default 10 values are returned. Records are returned in natural order.
[**get_dunning_line_by_id**](DunninglinesApi.md#get_dunning_line_by_id) | **GET** /dunning-lines/{dunning-line-ID} | Returns a single dunning-line, specified by the dunning-line-ID parameter.
[**retire_dunning_line**](DunninglinesApi.md#retire_dunning_line) | **DELETE** /dunning-lines/{dunning-line-ID} | Retires the specified dunning-line.
[**update_dunning_line**](DunninglinesApi.md#update_dunning_line) | **PUT** /dunning-lines | Update a dunning-line.


# **create_dunning_line**
> DunningLinePagedMetadata create_dunning_line(dunning_line)

Create a dunning-line.

{\"nickname\":\"Create a new dunning line\",\"request\":\"createDunningLineRequest.html\",\"response\":\"createDunningLineResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::DunninglinesApi.new

dunning_line = Bfwd::DunningLine.new # DunningLine | The Dunning-Line object to be updated.


begin
  #Create a dunning-line.
  result = api_instance.create_dunning_line(dunning_line)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling DunninglinesApi->create_dunning_line: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dunning_line** | [**DunningLine**](DunningLine.md)| The Dunning-Line object to be updated. | 

### Return type

[**DunningLinePagedMetadata**](DunningLinePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_dunning_lines**
> DunningLinePagedMetadata get_all_dunning_lines(opts)

Returns a collection of all dunning-lines. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all dunning lines\",\"response\":\"getDunningLineByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::DunninglinesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all dunning-lines. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_dunning_lines(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling DunninglinesApi->get_all_dunning_lines: #{e}"
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
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**DunningLinePagedMetadata**](DunningLinePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_dunning_line_by_attempt_index**
> DunningLinePagedMetadata get_dunning_line_by_attempt_index(index, opts)

Returns a collection of dunning-lines specified by the index parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by attempt\",\"response\":\"getDunningLineByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::DunninglinesApi.new

index = 56 # Integer | The attempt index of the dunning-line.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first invoice to return.
  records: 10, # Integer | The maximum number of invoices to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of dunning-lines specified by the index parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_dunning_line_by_attempt_index(index, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling DunninglinesApi->get_dunning_line_by_attempt_index: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index** | **Integer**| The attempt index of the dunning-line. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first invoice to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of invoices to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**DunningLinePagedMetadata**](DunningLinePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_dunning_line_by_id**
> DunningLinePagedMetadata get_dunning_line_by_id(dunning_line_id, opts)

Returns a single dunning-line, specified by the dunning-line-ID parameter.

{\"nickname\":\"Retrieve an existing dunning line\",\"response\":\"getDunningLineByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::DunninglinesApi.new

dunning_line_id = "dunning_line_id_example" # String | ID of the dunning-line.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single dunning-line, specified by the dunning-line-ID parameter.
  result = api_instance.get_dunning_line_by_id(dunning_line_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling DunninglinesApi->get_dunning_line_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dunning_line_id** | **String**| ID of the dunning-line. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DunningLinePagedMetadata**](DunningLinePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8, text/xml



# **retire_dunning_line**
> DunningLinePagedMetadata retire_dunning_line(dunning_line_id, organizations)

Retires the specified dunning-line.

{\"nickname\":\"Delete a dunning line\",\"response\":\"deleteDunningLine.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::DunninglinesApi.new

dunning_line_id = "dunning_line_id_example" # String | ID of the dunning-line.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Retires the specified dunning-line.
  result = api_instance.retire_dunning_line(dunning_line_id, organizations)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling DunninglinesApi->retire_dunning_line: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dunning_line_id** | **String**| ID of the dunning-line. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**DunningLinePagedMetadata**](DunningLinePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_dunning_line**
> DunningLinePagedMetadata update_dunning_line(dunning_line)

Update a dunning-line.

{\"nickname\":\"Update a dunning line\",\"request\":\"updateDunningLineRequest.html\",\"response\":\"updateDunningLineResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::DunninglinesApi.new

dunning_line = Bfwd::DunningLine.new # DunningLine | The Dunning-Line object to be updated.


begin
  #Update a dunning-line.
  result = api_instance.update_dunning_line(dunning_line)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling DunninglinesApi->update_dunning_line: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dunning_line** | [**DunningLine**](DunningLine.md)| The Dunning-Line object to be updated. | 

### Return type

[**DunningLinePagedMetadata**](DunningLinePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



