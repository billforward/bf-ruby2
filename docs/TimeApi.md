# Bfwd::TimeApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_time_swagger**](TimeApi.md#get_time_swagger) | **GET** /time/swagger-end-point | 


# **get_time_swagger**
> TimeResponsePagedMetadata get_time_swagger(request)



{\"nickname\":\"\",\"request\":\"advanceSubscriptionRequest.html\",\"response\":\"advanceSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::TimeApi.new

request = Bfwd::TimeRequest.new # TimeRequest | The request


begin
  #
  result = api_instance.get_time_swagger(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling TimeApi->get_time_swagger: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**TimeRequest**](TimeRequest.md)| The request | 

### Return type

[**TimeResponsePagedMetadata**](TimeResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



