# Bfwd::AddressesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_address**](AddressesApi.md#create_address) | **POST** /addresses | Create
[**update_address**](AddressesApi.md#update_address) | **PUT** /addresses | Update


# **create_address**
> AddressPagedMetadata create_address(request)

Create

{\"nickname\":\"Create a new address\",\"response\":\"createAddressResponse.html\",\"request\":\"createAddressRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AddressesApi.new

request = Bfwd::CreateAddressRequest.new # CreateAddressRequest | The address object to be created.


begin
  #Create
  result = api_instance.create_address(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AddressesApi->create_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateAddressRequest**](CreateAddressRequest.md)| The address object to be created. | 

### Return type

[**AddressPagedMetadata**](AddressPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **update_address**
> AddressPagedMetadata update_address(request)

Update

{\"nickname\":\"Update an address\",\"response\":\"updateAddressResponse.html\",\"request\":\"updateAddressRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::AddressesApi.new

request = Bfwd::UpdateAddressRequest.new # UpdateAddressRequest | The address object to be created.


begin
  #Update
  result = api_instance.update_address(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling AddressesApi->update_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateAddressRequest**](UpdateAddressRequest.md)| The address object to be created. | 

### Return type

[**AddressPagedMetadata**](AddressPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



