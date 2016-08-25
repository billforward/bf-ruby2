# Bfwd::UsagesessionsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_active_sessions_for_subscription**](UsagesessionsApi.md#get_active_sessions_for_subscription) | **GET** /usage-sessions/{subscription-id}/active | Get active by subscription
[**get_usage_list_for_usage_session**](UsagesessionsApi.md#get_usage_list_for_usage_session) | **GET** /usage-sessions/{subscription-id} | Retrieve by subscription
[**start_usage_session**](UsagesessionsApi.md#start_usage_session) | **POST** /usage-sessions/start | Start a new session
[**stop_usage_session**](UsagesessionsApi.md#stop_usage_session) | **POST** /usage-sessions/stop | Stop a specified session


# **get_active_sessions_for_subscription**
> UsageSessionPagedMetadata get_active_sessions_for_subscription(subscription_id, opts)

Get active by subscription

{\"nickname\":\"Get active by subscription\",\"response\":\"getActiveSessions.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsagesessionsApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the subscription whose active sessions you wish to GET.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Get active by subscription
  result = api_instance.get_active_sessions_for_subscription(subscription_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsagesessionsApi->get_active_sessions_for_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The subscriptionID of the subscription whose active sessions you wish to GET. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**UsageSessionPagedMetadata**](UsageSessionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_usage_list_for_usage_session**
> UsageSessionPagedMetadata get_usage_list_for_usage_session(subscription_id, opts)

Retrieve by subscription

{\"nickname\":\"Retrieve by subscription\",\"response\":\"getAllSessions.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsagesessionsApi.new

subscription_id = "subscription_id_example" # String | The subscriptionID of the subscription whose sessions you wish to GET.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first amendment to return.
  records: 8766, # Integer | The maximum number of amendments to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "ASC" # String | The direction of any ordering, either ASC or DESC.
}

begin
  #Retrieve by subscription
  result = api_instance.get_usage_list_for_usage_session(subscription_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsagesessionsApi->get_usage_list_for_usage_session: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**| The subscriptionID of the subscription whose sessions you wish to GET. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first amendment to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of amendments to return. | [optional] [default to 8766]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| The direction of any ordering, either ASC or DESC. | [optional] [default to ASC]

### Return type

[**UsageSessionPagedMetadata**](UsageSessionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **start_usage_session**
> UsageSessionPagedMetadata start_usage_session(usage_sessions)

Start a new session

{\"nickname\":\"Start a new session\",\"request\":\"createStartUsageSessionRequest.html\",\"response\":\"createStartUsageSessionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsagesessionsApi.new

usage_sessions = Bfwd::CompoundUsageSession.new # CompoundUsageSession | An array of 'Usage Session' objects whose sessions you wish to start.


begin
  #Start a new session
  result = api_instance.start_usage_session(usage_sessions)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsagesessionsApi->start_usage_session: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_sessions** | [**CompoundUsageSession**](CompoundUsageSession.md)| An array of &#39;Usage Session&#39; objects whose sessions you wish to start. | 

### Return type

[**UsageSessionPagedMetadata**](UsageSessionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **stop_usage_session**
> UsageSessionPagedMetadata stop_usage_session(usage_sessions)

Stop a specified session

{\"nickname\":\"Stop a specified session\",\"request\":\"createStopUsageSessionRequest.html\",\"response\":\"createStopUsageSessionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsagesessionsApi.new

usage_sessions = Bfwd::CompoundUsageSession.new # CompoundUsageSession | An array of 'Usage Session' objects whose sessions you wish to stop.


begin
  #Stop a specified session
  result = api_instance.stop_usage_session(usage_sessions)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsagesessionsApi->stop_usage_session: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_sessions** | [**CompoundUsageSession**](CompoundUsageSession.md)| An array of &#39;Usage Session&#39; objects whose sessions you wish to stop. | 

### Return type

[**UsageSessionPagedMetadata**](UsageSessionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



