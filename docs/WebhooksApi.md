# Bfwd::WebhooksApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a webhook.
[**create_webhook_v2**](WebhooksApi.md#create_webhook_v2) | **POST** /webhooks/create | Create a webhook.
[**get_all_webhooks**](WebhooksApi.md#get_all_webhooks) | **GET** /webhooks | Returns a collection of Webhooks, specified by the accountID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_webhook_by_id**](WebhooksApi.md#get_webhook_by_id) | **GET** /webhooks/{webhook-ID} | Returns a single webhook, specified by the webhook-ID parameter.
[**retire_webhook**](WebhooksApi.md#retire_webhook) | **DELETE** /webhooks/{webhook-ID} | Retires the specified webhook.
[**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /webhooks | Update a webhook.
[**verify_webhook**](WebhooksApi.md#verify_webhook) | **GET** /webhooks/verify/{verification-ID} | New webhooks must be verified before use, use the verificationID of the webhook to perform verification.


# **create_webhook**
> WebhookPagedMetadata create_webhook(webhook)

Create a webhook.

{\"nickname\":\"Add a new webhook\",\"request\":\"createWebhookRequest.html\",\"response\":\"createWebhookResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::WebhooksApi.new

webhook = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The webhook object to be created.


begin
  #Create a webhook.
  result = api_instance.create_webhook(webhook)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook** | [**MutableBillingEntity**](MutableBillingEntity.md)| The webhook object to be created. | 

### Return type

[**WebhookPagedMetadata**](WebhookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **create_webhook_v2**
> WebhookPagedMetadata create_webhook_v2(request)

Create a webhook.

{\"nickname\":\"Add a new webhook\",\"request\":\"createWebhookRequest.html\",\"response\":\"createWebhookResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::WebhooksApi.new

request = Bfwd::BillingEntityBase.new # BillingEntityBase | 


begin
  #Create a webhook.
  result = api_instance.create_webhook_v2(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BillingEntityBase**](BillingEntityBase.md)|  | 

### Return type

[**WebhookPagedMetadata**](WebhookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_webhooks**
> WebhookPagedMetadata get_all_webhooks(opts)

Returns a collection of Webhooks, specified by the accountID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all webhooks\",\"response\":\"getWebhookAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::WebhooksApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first webhook to return.
  records: 10, # Integer | The maximum number of webhooks to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of Webhooks, specified by the accountID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_webhooks(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling WebhooksApi->get_all_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first webhook to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of webhooks to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**WebhookPagedMetadata**](WebhookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_webhook_by_id**
> WebhookPagedMetadata get_webhook_by_id(webhook_id, opts)

Returns a single webhook, specified by the webhook-ID parameter.

{\"nickname\":\"Retrieve an existing webhook\",\"response\":\"getWebhookByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::WebhooksApi.new

webhook_id = "webhook_id_example" # String | ID of the webhook.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single webhook, specified by the webhook-ID parameter.
  result = api_instance.get_webhook_by_id(webhook_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| ID of the webhook. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**WebhookPagedMetadata**](WebhookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **retire_webhook**
> WebhookPagedMetadata retire_webhook(webhook_id, organizations)

Retires the specified webhook.

{\"nickname\":\"Remove a webhook\",\"response\":\"deleteWebhook.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::WebhooksApi.new

webhook_id = "webhook_id_example" # String | ID of the webhook.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Retires the specified webhook.
  result = api_instance.retire_webhook(webhook_id, organizations)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling WebhooksApi->retire_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| ID of the webhook. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**WebhookPagedMetadata**](WebhookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_webhook**
> WebhookPagedMetadata update_webhook(webhook)

Update a webhook.

{\"nickname\":\"Update a webhook\",\"request\":\"updateWebhookRequest.html\",\"response\":\"updateWebhookResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::WebhooksApi.new

webhook = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The webhook object to be updated.


begin
  #Update a webhook.
  result = api_instance.update_webhook(webhook)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook** | [**MutableBillingEntity**](MutableBillingEntity.md)| The webhook object to be updated. | 

### Return type

[**WebhookPagedMetadata**](WebhookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **verify_webhook**
> WebhookPagedMetadata verify_webhook(verification_id, opts)

New webhooks must be verified before use, use the verificationID of the webhook to perform verification.

{\"nickname\":\"Verify a webhook\",\"response\":\"verifyWebhook.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::WebhooksApi.new

verification_id = "verification_id_example" # String | verificationID of the webhook.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #New webhooks must be verified before use, use the verificationID of the webhook to perform verification.
  result = api_instance.verify_webhook(verification_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling WebhooksApi->verify_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verification_id** | **String**| verificationID of the webhook. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**WebhookPagedMetadata**](WebhookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



