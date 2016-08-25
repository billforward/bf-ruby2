# Bfwd::EmailsubscriptionsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_email_subscription**](EmailsubscriptionsApi.md#create_email_subscription) | **POST** /email-subscriptions | Create an email subscription.
[**delete_email_subscription_by_type**](EmailsubscriptionsApi.md#delete_email_subscription_by_type) | **DELETE** /email-subscriptions/type&#x3D;{type} | Unsubscribe from the email specified by the type parameter.
[**get_all_email_subscriptions**](EmailsubscriptionsApi.md#get_all_email_subscriptions) | **GET** /email-subscriptions | Returns a collection of all email-subscriptions. By default 10 values are returned. Records are returned in natural order.
[**get_email_subscription_by_id**](EmailsubscriptionsApi.md#get_email_subscription_by_id) | **GET** /email-subscriptions/{email-subscription-id} | Retrieves a single email subscription, specified by ID.
[**update_email_subscription**](EmailsubscriptionsApi.md#update_email_subscription) | **PUT** /email-subscriptions | Update an email subscription.


# **create_email_subscription**
> EmailSubscriptionPagedMetadata create_email_subscription(request)

Create an email subscription.

{\"nickname\":\"Create an email subscription\",\"request\":\"createEmailSubscriptionRequest.html\",\"response\":\"creatEmailSubscriptionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsubscriptionsApi.new

request = Bfwd::BillingEntityBase.new # BillingEntityBase | .


begin
  #Create an email subscription.
  result = api_instance.create_email_subscription(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsubscriptionsApi->create_email_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BillingEntityBase**](BillingEntityBase.md)| . | 

### Return type

[**EmailSubscriptionPagedMetadata**](EmailSubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_email_subscription_by_type**
> EmailSubscriptionPagedMetadata delete_email_subscription_by_type(type, opts)

Unsubscribe from the email specified by the type parameter.

{ \"nickname\" : \"Unsubscribe\",\"response\" : \"unsubscribeEmail.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsubscriptionsApi.new

type = "type_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Unsubscribe from the email specified by the type parameter.
  result = api_instance.delete_email_subscription_by_type(type, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsubscriptionsApi->delete_email_subscription_by_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**EmailSubscriptionPagedMetadata**](EmailSubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8, text/xml



# **get_all_email_subscriptions**
> EmailSubscriptionPagedMetadata get_all_email_subscriptions(state, type, opts)

Returns a collection of all email-subscriptions. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all email subscriptions\",\"response\":\"getEmailSubscriptionsAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsubscriptionsApi.new

state = "state_example" # String | Constrains search to Email Subscriptions of a specific state.

type = "type_example" # String | Constrains search to Email Subscriptions of a specific type

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first email-subscription to return.
  records: 10, # Integer | The maximum number of email-subscription to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of all email-subscriptions. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_email_subscriptions(state, type, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsubscriptionsApi->get_all_email_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| Constrains search to Email Subscriptions of a specific state. | 
 **type** | **String**| Constrains search to Email Subscriptions of a specific type | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first email-subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of email-subscription to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**EmailSubscriptionPagedMetadata**](EmailSubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_email_subscription_by_id**
> EmailSubscriptionPagedMetadata get_email_subscription_by_id(email_subscription_id, opts)

Retrieves a single email subscription, specified by ID.

{ \"nickname\" : \"Retrieve by ID\",\"response\" : \"getEmailSubscriptionByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsubscriptionsApi.new

email_subscription_id = "email_subscription_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  include_retired: false # BOOLEAN | Include deleted email-subscriptions
}

begin
  #Retrieves a single email subscription, specified by ID.
  result = api_instance.get_email_subscription_by_id(email_subscription_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsubscriptionsApi->get_email_subscription_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_subscription_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **include_retired** | **BOOLEAN**| Include deleted email-subscriptions | [optional] [default to false]

### Return type

[**EmailSubscriptionPagedMetadata**](EmailSubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_email_subscription**
> EmailSubscriptionPagedMetadata update_email_subscription(request)

Update an email subscription.

{\"nickname\":\"Update EmailSubscription\",\"request\":\"updateEmailSubscriptionRequest.html\",\"response\":\"updateEmailSubscriptionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::EmailsubscriptionsApi.new

request = Bfwd::BillingEntityBase.new # BillingEntityBase | .


begin
  #Update an email subscription.
  result = api_instance.update_email_subscription(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling EmailsubscriptionsApi->update_email_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**BillingEntityBase**](BillingEntityBase.md)| . | 

### Return type

[**EmailSubscriptionPagedMetadata**](EmailSubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



