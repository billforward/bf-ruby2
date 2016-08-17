# BillForward::CybersourcetokensApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cybersource_token**](CybersourcetokensApi.md#create_cybersource_token) | **POST** /cybersource-tokens | Create a cybersource-token.
[**get_cybersource_token_by_id**](CybersourcetokensApi.md#get_cybersource_token_by_id) | **GET** /cybersource-tokens/{token-ID} | Returns a single cybersource-token, specified by the token-ID parameter.
[**get_cybersource_token_by_recurring_subscription_id**](CybersourcetokensApi.md#get_cybersource_token_by_recurring_subscription_id) | **GET** /cybersource-tokens/recurring-subscription-info/{recurring-subscription-ID} | Returns a single cybersource-token, specified by the recurring-subscription-ID parameter.
[**retire_cybersource_token**](CybersourcetokensApi.md#retire_cybersource_token) | **DELETE** /cybersource-tokens/{token-ID} | Retires the cybersource token specified by the token-ID parameter.
[**update_cybersource_token**](CybersourcetokensApi.md#update_cybersource_token) | **PUT** /cybersource-tokens | Update a cybersource-token.


# **create_cybersource_token**
> CybersourceTokenPagedMetadata create_cybersource_token(cybersource_token)

Create a cybersource-token.

{\"nickname\":\"Create a cybersource-token\",\"request\":\"createCybersourceTokenRequest.html\",\"response\":\"createCybersourceTokenResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CybersourcetokensApi.new

cybersource_token = BillForward::MutableBillingEntity.new # MutableBillingEntity | The cybersource-token object to be created.


begin
  #Create a cybersource-token.
  result = api_instance.create_cybersource_token(cybersource_token)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CybersourcetokensApi->create_cybersource_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cybersource_token** | [**MutableBillingEntity**](MutableBillingEntity.md)| The cybersource-token object to be created. | 

### Return type

[**CybersourceTokenPagedMetadata**](CybersourceTokenPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_cybersource_token_by_id**
> CybersourceTokenPagedMetadata get_cybersource_token_by_id(token_id, opts)

Returns a single cybersource-token, specified by the token-ID parameter.

{\"nickname\":\"NICKNAME\",\"response\":\"getCybersourceTokenByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CybersourcetokensApi.new

token_id = "token_id_example" # String | The unique sting ID of the cybersource token.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single cybersource-token, specified by the token-ID parameter.
  result = api_instance.get_cybersource_token_by_id(token_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CybersourcetokensApi->get_cybersource_token_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **String**| The unique sting ID of the cybersource token. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CybersourceTokenPagedMetadata**](CybersourceTokenPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_cybersource_token_by_recurring_subscription_id**
> CybersourceTokenPagedMetadata get_cybersource_token_by_recurring_subscription_id(recurring_subscription_id, opts)

Returns a single cybersource-token, specified by the recurring-subscription-ID parameter.

{\"nickname\":\"NICKNAME\",\"response\":\"getCybersourceTokenByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CybersourcetokensApi.new

recurring_subscription_id = "recurring_subscription_id_example" # String | The recurring-subscription-info-subscription-ID of the cybersource token.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single cybersource-token, specified by the recurring-subscription-ID parameter.
  result = api_instance.get_cybersource_token_by_recurring_subscription_id(recurring_subscription_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CybersourcetokensApi->get_cybersource_token_by_recurring_subscription_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recurring_subscription_id** | **String**| The recurring-subscription-info-subscription-ID of the cybersource token. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CybersourceTokenPagedMetadata**](CybersourceTokenPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **retire_cybersource_token**
> CybersourceTokenPagedMetadata retire_cybersource_token(token_id, organizations)

Retires the cybersource token specified by the token-ID parameter.

{\"nickname\":\"NICKNAME\",\"response\":\"deleteCybersourceToken.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CybersourcetokensApi.new

token_id = "token_id_example" # String | ID of the cybersource-token.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Retires the cybersource token specified by the token-ID parameter.
  result = api_instance.retire_cybersource_token(token_id, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CybersourcetokensApi->retire_cybersource_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **String**| ID of the cybersource-token. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**CybersourceTokenPagedMetadata**](CybersourceTokenPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_cybersource_token**
> CybersourceTokenPagedMetadata update_cybersource_token(cybersource_token)

Update a cybersource-token.

{\"nickname\":\"Update a cybersource-token\",\"request\":\"updateCybersourceTokenRequest.html\",\"response\":\"updateCybersourceTokenResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CybersourcetokensApi.new

cybersource_token = BillForward::MutableBillingEntity.new # MutableBillingEntity | The cybersource-token object to be updated.


begin
  #Update a cybersource-token.
  result = api_instance.update_cybersource_token(cybersource_token)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CybersourcetokensApi->update_cybersource_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cybersource_token** | [**MutableBillingEntity**](MutableBillingEntity.md)| The cybersource-token object to be updated. | 

### Return type

[**CybersourceTokenPagedMetadata**](CybersourceTokenPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



