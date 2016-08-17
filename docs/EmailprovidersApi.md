# BillForward::EmailprovidersApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_email_provider**](EmailprovidersApi.md#create_email_provider) | **POST** /email-providers | Create an email provider.
[**delete**](EmailprovidersApi.md#delete) | **DELETE** /email-providers/{email-provider-ID} | Deletes a single email provider, specified by id or name parameter.
[**get_all_email_providers**](EmailprovidersApi.md#get_all_email_providers) | **GET** /email-providers | Returns a collection of all email-providers. By default 10 values are returned. Records are returned in natural order.
[**get_email_by_provider_id**](EmailprovidersApi.md#get_email_by_provider_id) | **GET** /email-providers/{email-provider-ID} | Retrieves a single email provider, specified by the version-ID parameter.


# **create_email_provider**
> EmailProviderPagedMetadata create_email_provider(request)

Create an email provider.

{\"nickname\":\"Create an email provider\",\"request\":\"createEmailProviderRequest.html\",\"response\":\"creatEmailProviderResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::EmailprovidersApi.new

request = BillForward::BillingEntityBase.new # BillingEntityBase | .


begin
  #Create an email provider.
  result = api_instance.create_email_provider(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling EmailprovidersApi->create_email_provider: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BillingEntityBase**](BillingEntityBase.md)| . | 

### Return type

[**EmailProviderPagedMetadata**](EmailProviderPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **delete**
> EmailProviderPagedMetadata delete(email_provider_id, opts)

Deletes a single email provider, specified by id or name parameter.

{ \"nickname\" : \"delete\",\"response\" : \"deleteEmailProvider.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::EmailprovidersApi.new

email_provider_id = "email_provider_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Deletes a single email provider, specified by id or name parameter.
  result = api_instance.delete(email_provider_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling EmailprovidersApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_provider_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**EmailProviderPagedMetadata**](EmailProviderPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_all_email_providers**
> EmailProviderPagedMetadata get_all_email_providers(opts)

Returns a collection of all email-providers. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all email providers\",\"response\":\"getEmailProvidersAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::EmailprovidersApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first email-provider to return.
  records: 10, # Integer | The maximum number of email-provider to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Include deleted email-providers
}

begin
  #Returns a collection of all email-providers. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_email_providers(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling EmailprovidersApi->get_all_email_providers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first email-provider to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of email-provider to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Include deleted email-providers | [optional] [default to false]

### Return type

[**EmailProviderPagedMetadata**](EmailProviderPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_email_by_provider_id**
> EmailProviderPagedMetadata get_email_by_provider_id(email_provider_id, opts)

Retrieves a single email provider, specified by the version-ID parameter.

{ \"nickname\" : \"Retrieve by version\",\"response\" : \"getEmailProviderByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::EmailprovidersApi.new

email_provider_id = "email_provider_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  include_retired: false # BOOLEAN | Include deleted email-providers
}

begin
  #Retrieves a single email provider, specified by the version-ID parameter.
  result = api_instance.get_email_by_provider_id(email_provider_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling EmailprovidersApi->get_email_by_provider_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_provider_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **include_retired** | **BOOLEAN**| Include deleted email-providers | [optional] [default to false]

### Return type

[**EmailProviderPagedMetadata**](EmailProviderPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



