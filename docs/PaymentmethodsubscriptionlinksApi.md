# BillForward::PaymentmethodsubscriptionlinksApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_method_subscription_link**](PaymentmethodsubscriptionlinksApi.md#create_payment_method_subscription_link) | **POST** /payment-method-subscription-links | Create
[**retire_payment_method_subscription_link**](PaymentmethodsubscriptionlinksApi.md#retire_payment_method_subscription_link) | **DELETE** /payment-method-subscription-links/{payment-method-subscription-link-ID} | Retires the payment-method-subscription-link specified by the link-ID parameter.


# **create_payment_method_subscription_link**
> PaymentMethodSubscriptionLinkPagedMetadata create_payment_method_subscription_link(payment_method)

Create

{\"nickname\":\"Add a payment method to a subscription\",\"request\":\"createPaymentMethodSubscriptionLinkRequest.html\",\"response\":\"createPaymentMethodSubscriptionLinkResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentmethodsubscriptionlinksApi.new

payment_method = BillForward::PaymentMethodSubscriptionLink.new # PaymentMethodSubscriptionLink | The payment-method object to be updated.


begin
  #Create
  result = api_instance.create_payment_method_subscription_link(payment_method)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentmethodsubscriptionlinksApi->create_payment_method_subscription_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method** | [**PaymentMethodSubscriptionLink**](PaymentMethodSubscriptionLink.md)| The payment-method object to be updated. | 

### Return type

[**PaymentMethodSubscriptionLinkPagedMetadata**](PaymentMethodSubscriptionLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **retire_payment_method_subscription_link**
> PaymentMethodSubscriptionLinkPagedMetadata retire_payment_method_subscription_link(payment_method_subscription_link_id, organizations)

Retires the payment-method-subscription-link specified by the link-ID parameter.

{\"nickname\":\"Remove a payment method from a subscription\",\"response\":\"deletePaymentMethodSubscriptionLink.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::PaymentmethodsubscriptionlinksApi.new

payment_method_subscription_link_id = "payment_method_subscription_link_id_example" # String | ID of the link.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Retires the payment-method-subscription-link specified by the link-ID parameter.
  result = api_instance.retire_payment_method_subscription_link(payment_method_subscription_link_id, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling PaymentmethodsubscriptionlinksApi->retire_payment_method_subscription_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_subscription_link_id** | **String**| ID of the link. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**PaymentMethodSubscriptionLinkPagedMetadata**](PaymentMethodSubscriptionLinkPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



