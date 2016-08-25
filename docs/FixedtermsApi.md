# Bfwd::FixedtermsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_fixed_term**](FixedtermsApi.md#update_fixed_term) | **PUT** /fixed-terms | Update


# **update_fixed_term**
> FixedTermPagedMetadata update_fixed_term(payment_method)

Update

{\"nickname\":\"Update a fixed term\",\"request\":\"updateFixedTermRequest.html\",\"response\":\"updateFixedTermResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::FixedtermsApi.new

payment_method = Bfwd::FixedTerm.new # FixedTerm | The payment-method object to be updated.


begin
  #Update
  result = api_instance.update_fixed_term(payment_method)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling FixedtermsApi->update_fixed_term: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method** | [**FixedTerm**](FixedTerm.md)| The payment-method object to be updated. | 

### Return type

[**FixedTermPagedMetadata**](FixedTermPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



