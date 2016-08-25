# Bfwd::EmailsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_email_by_id**](EmailsApi.md#get_email_by_id) | **GET** /emails/{email-ID} | Retrieves a single invoice, specified by the version-ID parameter.
[**get_email_html_by_id**](EmailsApi.md#get_email_html_by_id) | **GET** /emails/{email-ID}.html | Retrieves a single invoice, specified by the version-ID parameter.
[**get_email_text_by_id**](EmailsApi.md#get_email_text_by_id) | **GET** /emails/{email-ID}.txt | Retrieves a single invoice, specified by the version-ID parameter.


# **get_email_by_id**
> EmailPagedMetadata get_email_by_id(email_id, opts)

Retrieves a single invoice, specified by the version-ID parameter.

{ \"nickname\" : \"Retrieve by version\",\"response\" : \"getEmailByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsApi.new

email_id = "email_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves a single invoice, specified by the version-ID parameter.
  result = api_instance.get_email_by_id(email_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsApi->get_email_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**EmailPagedMetadata**](EmailPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8, text/xml



# **get_email_html_by_id**
> String get_email_html_by_id(email_id, opts)

Retrieves a single invoice, specified by the version-ID parameter.

{ \"nickname\" : \"Retrieve by version\",\"response\" : \"getEmailByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsApi.new

email_id = "email_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves a single invoice, specified by the version-ID parameter.
  result = api_instance.get_email_html_by_id(email_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsApi->get_email_html_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: text/html



# **get_email_text_by_id**
> String get_email_text_by_id(email_id, opts)

Retrieves a single invoice, specified by the version-ID parameter.

{ \"nickname\" : \"Retrieve by version\",\"response\" : \"getEmailByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsApi.new

email_id = "email_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves a single invoice, specified by the version-ID parameter.
  result = api_instance.get_email_text_by_id(email_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsApi->get_email_text_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: text/plain



