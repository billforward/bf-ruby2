# BillForward::QuotesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**quote**](QuotesApi.md#quote) | **POST** /quotes | Returns a quote.


# **quote**
> APIQuotePagedMetadata quote(quote_request)

Returns a quote.

{\"nickname\":\"Returns a quote\",\"request\":\"PriceRequest.html\",\"response\":\"PriceCalculation.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::QuotesApi.new

quote_request = BillForward::QuoteRequest.new # QuoteRequest | A quote request


begin
  #Returns a quote.
  result = api_instance.quote(quote_request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling QuotesApi->quote: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quote_request** | [**QuoteRequest**](QuoteRequest.md)| A quote request | 

### Return type

[**APIQuotePagedMetadata**](APIQuotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



