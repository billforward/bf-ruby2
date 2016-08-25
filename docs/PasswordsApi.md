# Bfwd::PasswordsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_password**](PasswordsApi.md#create_password) | **POST** /passwords | Create


# **create_password**
> PasswordPagedMetadata create_password(password)

Create

{\"nickname\":\"Create\",\"request\":\"createPasswordRequest.html\",\"response\":\"createPasswordResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PasswordsApi.new

password = Bfwd::Password.new # Password | The password object to be created.


begin
  #Create
  result = api_instance.create_password(password)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PasswordsApi->create_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | [**Password**](Password.md)| The password object to be created. | 

### Return type

[**PasswordPagedMetadata**](PasswordPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



