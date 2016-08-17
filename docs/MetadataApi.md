# BillForward::MetadataApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_metadata_key_values**](MetadataApi.md#delete_metadata_key_values) | **DELETE** /metadata | Remove any associated metadata.
[**get_metadata_key_values**](MetadataApi.md#get_metadata_key_values) | **GET** /metadata | Retrieve any associated metadata.
[**set_metadata_key_values**](MetadataApi.md#set_metadata_key_values) | **POST** /metadata | Remove any existing metadata keys and create the provided data.
[**upsert_metadata_key_values**](MetadataApi.md#upsert_metadata_key_values) | **PUT** /metadata | Update any existing metadata key-values and insert any new key-values, no keys will be removed.


# **delete_metadata_key_values**
> DynamicMetadata delete_metadata_key_values(opts)

Remove any associated metadata.

{\"nickname\":\"Clear metadata from organization\",\"request\" :\"deleteOrganizationMetadataRequest.html\",\"response\":\"deleteOrganizationMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::MetadataApi.new

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any associated metadata.
  result = api_instance.delete_metadata_key_values(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling MetadataApi->delete_metadata_key_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_metadata_key_values**
> DynamicMetadata get_metadata_key_values(opts)

Retrieve any associated metadata.

{\"nickname\":\"Retrieve metadata on organization\",\"request\":\"getOrganizationMetadataRequest.html\",\"response\":\"getOrganizationMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::MetadataApi.new

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieve any associated metadata.
  result = api_instance.get_metadata_key_values(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling MetadataApi->get_metadata_key_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **set_metadata_key_values**
> DynamicMetadata set_metadata_key_values(metadata, opts)

Remove any existing metadata keys and create the provided data.

{\"nickname\":\"Set metadata on organization\",\"request\":\"setOrganizationMetadataRequest.html\",\"response\":\"setOrganizationMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::MetadataApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any existing metadata keys and create the provided data.
  result = api_instance.set_metadata_key_values(metadata, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling MetadataApi->set_metadata_key_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upsert_metadata_key_values**
> DynamicMetadata upsert_metadata_key_values(metadata, opts)

Update any existing metadata key-values and insert any new key-values, no keys will be removed.

{\"nickname\":\"Upsert metadata on organization\",\"request\":\"upsertOrganizationMetadataRequest.html\",\"response\":\"upsertOrganizationMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::MetadataApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Update any existing metadata key-values and insert any new key-values, no keys will be removed.
  result = api_instance.upsert_metadata_key_values(metadata, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling MetadataApi->upsert_metadata_key_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



