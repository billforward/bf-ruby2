# Bfwd::FixedtermdefinitionsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_fixed_term_definition**](FixedtermdefinitionsApi.md#create_fixed_term_definition) | **POST** /fixed-term-definitions | Create
[**update_fixed_term_definition**](FixedtermdefinitionsApi.md#update_fixed_term_definition) | **PUT** /fixed-term-definitions | Update


# **create_fixed_term_definition**
> FixedTermDefinitionPagedMetadata create_fixed_term_definition(fixed_term_definiton)

Create

{\"nickname\":\"Create a new fixed term definition\",\"request\":\"createFixedTermDefinitionRequest.html\",\"response\":\"createFixedTermDefinitionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::FixedtermdefinitionsApi.new

fixed_term_definiton = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The fixed-term-definition object to be updated.


begin
  #Create
  result = api_instance.create_fixed_term_definition(fixed_term_definiton)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling FixedtermdefinitionsApi->create_fixed_term_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fixed_term_definiton** | [**MutableBillingEntity**](MutableBillingEntity.md)| The fixed-term-definition object to be updated. | 

### Return type

[**FixedTermDefinitionPagedMetadata**](FixedTermDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **update_fixed_term_definition**
> FixedTermDefinitionPagedMetadata update_fixed_term_definition(fixed_term_definiton)

Update

{\"nickname\":\"Update a fixed-term definition\",\"request\":\"updateFixedTermDefinitionRequest.html\",\"response\":\"updateFixedTermDefinitionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::FixedtermdefinitionsApi.new

fixed_term_definiton = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The fixed-term-definition object to be updated.


begin
  #Update
  result = api_instance.update_fixed_term_definition(fixed_term_definiton)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling FixedtermdefinitionsApi->update_fixed_term_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fixed_term_definiton** | [**MutableBillingEntity**](MutableBillingEntity.md)| The fixed-term-definition object to be updated. | 

### Return type

[**FixedTermDefinitionPagedMetadata**](FixedTermDefinitionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



