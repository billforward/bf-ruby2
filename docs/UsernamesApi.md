# BillForward::UsernamesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_username**](UsernamesApi.md#create_username) | **POST** /usernames | Create a username.


# **create_username**
> UsernamePagedMetadata create_username(username)

Create a username.

{\"nickname\":\"Create\",\"request\":\"createUsernameRequest.html\",\"response\":\"createUsernameResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UsernamesApi.new

username = BillForward::Username.new # Username | The username object to be created.


begin
  #Create a username.
  result = api_instance.create_username(username)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UsernamesApi->create_username: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | [**Username**](Username.md)| The username object to be created. | 

### Return type

[**UsernamePagedMetadata**](UsernamePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



