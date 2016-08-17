# BillForward::ClientsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_client**](ClientsApi.md#create_client) | **POST** /clients | Create a client.
[**get_all_clients**](ClientsApi.md#get_all_clients) | **GET** /clients | Returns a collection of clients.
[**get_client_by_id**](ClientsApi.md#get_client_by_id) | **GET** /clients/{client-ID} | Returns a single client, specified by the client-ID parameter.
[**update_client**](ClientsApi.md#update_client) | **PUT** /clients | Update a client.


# **create_client**
> ClientPagedMetadata create_client(client)

Create a client.

{\"nickname\":\"Create\",\"request\":\"createClientRequest.html\",\"response\":\"createClientResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ClientsApi.new

client = BillForward::Client.new # Client | The client object to be updated.


begin
  #Create a client.
  result = api_instance.create_client(client)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ClientsApi->create_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | [**Client**](Client.md)| The client object to be updated. | 

### Return type

[**ClientPagedMetadata**](ClientPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_clients**
> ClientPagedMetadata get_all_clients(opts)

Returns a collection of clients.

{\"nickname\":\"Get All\",\"response\":\"getClientAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ClientsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first client to return.
  records: 10, # Integer | The maximum number of clients to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of clients.
  result = api_instance.get_all_clients(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ClientsApi->get_all_clients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first client to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of clients to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**ClientPagedMetadata**](ClientPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_client_by_id**
> ClientPagedMetadata get_client_by_id(client_id, opts)

Returns a single client, specified by the client-ID parameter.

{\"nickname\":\"Retrieve by id\",\"response\":\"getClientByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ClientsApi.new

client_id = "client_id_example" # String | The string ID of the client.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single client, specified by the client-ID parameter.
  result = api_instance.get_client_by_id(client_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ClientsApi->get_client_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| The string ID of the client. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**ClientPagedMetadata**](ClientPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_client**
> ClientPagedMetadata update_client(client)

Update a client.

{\"nickname\":\"Update\",\"request\":\"updateClientRequest.html\",\"response\":\"updateClientResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ClientsApi.new

client = BillForward::Client.new # Client | The client object to be updated.


begin
  #Update a client.
  result = api_instance.update_client(client)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ClientsApi->update_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | [**Client**](Client.md)| The client object to be updated. | 

### Return type

[**ClientPagedMetadata**](ClientPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



