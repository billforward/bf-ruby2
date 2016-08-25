# Bfwd::TokenizationApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_capture**](TokenizationApi.md#auth_capture) | **POST** /tokenization/auth-capture | [Note: this API can be invoked more simply by our client-side card capture library, &lt;a href&#x3D;\&quot;https://github.com/billforward/billforward-js\&quot;&gt;BillForward.js&lt;/a&gt;; you should not need to interact with this API manually unless you have particularly bespoke requirements] 
[**braintree_card_capture**](TokenizationApi.md#braintree_card_capture) | **POST** /tokenization/braintree | [Warning: for use only in PCI-compliant environments; for more information, &lt;a href&#x3D;\&quot;mailto:support@billforward.net\&quot;&gt;contact us&lt;/a&gt; regarding provisioning of your own on-premise BillForward instance] Captures raw credit card details into Braintree&#39;s vault.
[**pay_vision_shout_v1**](TokenizationApi.md#pay_vision_shout_v1) | **POST** /tokenization/payvision-shout-v1 | [Note: this API is intended to be invoked by the PayVision servers -- they are BillForward&#39;s way of informing client-side of the result of card-capture from within an iframe] Generates iframe to which customer will be directed upon success or failure. The iframe contains JavaScript which attempts to send a message to BillForward.js on the client-side, which will handle the result.
[**pre_auth**](TokenizationApi.md#pre_auth) | **POST** /tokenization/pre-auth | [Note: this API can be invoked more simply by our client-side card capture library, &lt;a href&#x3D;\&quot;https://github.com/billforward/billforward-js\&quot;&gt;BillForward.js&lt;/a&gt;; you should not need to interact with this API manually unless you have particularly bespoke requirements] 
[**sage_pay_notify_v300**](TokenizationApi.md#sage_pay_notify_v300) | **POST** /tokenization/sagepay-notify-v3-00 | [Note: this API is intended to be invoked by the SagePay servers -- they are BillForward&#39;s way of receiving a callback from a SagePay card capture operation, using SagePay&#39;s FORM Protocol, v3.0] Handles SagePay Notification.
[**sage_pay_shout_v300**](TokenizationApi.md#sage_pay_shout_v300) | **GET** /tokenization/sagepay-shout-v3-00 | [Note: this API is intended to be invoked by the SagePay servers -- they are BillForward&#39;s way of informing client-side of the result of card-capture from within an iframe, using SagePay&#39;s FORM Protocol, v3.0] Generates iframe to which customer will be directed upon success or failure. The iframe contains JavaScript which attempts to send a message to BillForward.js on the client-side, which will handle the result.


# **auth_capture**
> PaymentMethodPagedMetadata auth_capture(auth_capture_request)

[Note: this API can be invoked more simply by our client-side card capture library, <a href=\"https://github.com/billforward/billforward-js\">BillForward.js</a>; you should not need to interact with this API manually unless you have particularly bespoke requirements] 

{\"nickname\":\"Authorized card capture\",\"response\":\"BFJSAuthCapture.html\",\"request\":\"BFJSAuthCapture.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::TokenizationApi.new

auth_capture_request = Bfwd::AuthCaptureRequest.new # AuthCaptureRequest | The auth capture request.


begin
  #[Note: this API can be invoked more simply by our client-side card capture library, <a href=\"https://github.com/billforward/billforward-js\">BillForward.js</a>; you should not need to interact with this API manually unless you have particularly bespoke requirements] 
  result = api_instance.auth_capture(auth_capture_request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling TokenizationApi->auth_capture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_capture_request** | [**AuthCaptureRequest**](AuthCaptureRequest.md)| The auth capture request. | 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **braintree_card_capture**
> PaymentMethodPagedMetadata braintree_card_capture(opts)

[Warning: for use only in PCI-compliant environments; for more information, <a href=\"mailto:support@billforward.net\">contact us</a> regarding provisioning of your own on-premise BillForward instance] Captures raw credit card details into Braintree's vault.

{\"nickname\":\"Braintree Tokenization\",\"response\":\"braintreeDirectTokenization.html\",\"request\":\"braintreeDirectTokenization.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::TokenizationApi.new

opts = { 
  body: Bfwd::BraintreeCaptureRequest.new # BraintreeCaptureRequest | 
}

begin
  #[Warning: for use only in PCI-compliant environments; for more information, <a href=\"mailto:support@billforward.net\">contact us</a> regarding provisioning of your own on-premise BillForward instance] Captures raw credit card details into Braintree's vault.
  result = api_instance.braintree_card_capture(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling TokenizationApi->braintree_card_capture: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BraintreeCaptureRequest**](BraintreeCaptureRequest.md)|  | [optional] 

### Return type

[**PaymentMethodPagedMetadata**](PaymentMethodPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **pay_vision_shout_v1**
> String pay_vision_shout_v1(opts)

[Note: this API is intended to be invoked by the PayVision servers -- they are BillForward's way of informing client-side of the result of card-capture from within an iframe] Generates iframe to which customer will be directed upon success or failure. The iframe contains JavaScript which attempts to send a message to BillForward.js on the client-side, which will handle the result.

{\"nickname\":\"Generate PayVision iframe redirect\",\"response\":\"payVisionShoutV1.html\",\"request\":\"payVisionShoutV1.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::TokenizationApi.new

opts = { 
  resource_path: "resource_path_example", # String | 
  id: "id_example" # String | 
}

begin
  #[Note: this API is intended to be invoked by the PayVision servers -- they are BillForward's way of informing client-side of the result of card-capture from within an iframe] Generates iframe to which customer will be directed upon success or failure. The iframe contains JavaScript which attempts to send a message to BillForward.js on the client-side, which will handle the result.
  result = api_instance.pay_vision_shout_v1(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling TokenizationApi->pay_vision_shout_v1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_path** | **String**|  | [optional] 
 **id** | **String**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/html



# **pre_auth**
> TokenizationPreAuthPagedMetadata pre_auth(pre_auth_request)

[Note: this API can be invoked more simply by our client-side card capture library, <a href=\"https://github.com/billforward/billforward-js\">BillForward.js</a>; you should not need to interact with this API manually unless you have particularly bespoke requirements] 

{\"nickname\":\"Pre-authorize card capture\",\"response\":\"BFJSPreAuth.html\",\"request\":\"BFJSPreAuth.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::TokenizationApi.new

pre_auth_request = Bfwd::InsertableBillingEntity.new # InsertableBillingEntity | The auth request.


begin
  #[Note: this API can be invoked more simply by our client-side card capture library, <a href=\"https://github.com/billforward/billforward-js\">BillForward.js</a>; you should not need to interact with this API manually unless you have particularly bespoke requirements] 
  result = api_instance.pre_auth(pre_auth_request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling TokenizationApi->pre_auth: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pre_auth_request** | [**InsertableBillingEntity**](InsertableBillingEntity.md)| The auth request. | 

### Return type

[**TokenizationPreAuthPagedMetadata**](TokenizationPreAuthPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **sage_pay_notify_v300**
> String sage_pay_notify_v300(opts)

[Note: this API is intended to be invoked by the SagePay servers -- they are BillForward's way of receiving a callback from a SagePay card capture operation, using SagePay's FORM Protocol, v3.0] Handles SagePay Notification.

{\"nickname\":\"Handle SagePay Notification\",\"response\":\"sagePayNotifyV3_00.html\",\"request\":\"sagePayNotifyV3_00.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::TokenizationApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.Multiple organization-IDs may be specified by repeated use of the queryparameter. Example: ...&organizations=org1&organizations=org2
  bill_forward_url_root: "bill_forward_url_root_example", # String | The URL through which BFJS connected to Bfwd.
  access_token: "access_token_example", # String | The public token through which BFJS connected to Bfwd.
  vps_protocol: "vps_protocol_example", # String | 
  tx_type: "tx_type_example", # String | 
  vendor_tx_code: "vendor_tx_code_example", # String | 
  status: "status_example", # String | 
  vps_tx_id: "vps_tx_id_example", # String | 
  card_type: "card_type_example", # String | 
  token: "token_example", # String | 
  status_detail: "status_detail_example", # String | 
  last4_digits: "last4_digits_example", # String | 
  vps_signature: "vps_signature_example", # String | 
  expiry_date: "expiry_date_example" # String | 
}

begin
  #[Note: this API is intended to be invoked by the SagePay servers -- they are BillForward's way of receiving a callback from a SagePay card capture operation, using SagePay's FORM Protocol, v3.0] Handles SagePay Notification.
  result = api_instance.sage_pay_notify_v300(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling TokenizationApi->sage_pay_notify_v300: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls.Multiple organization-IDs may be specified by repeated use of the queryparameter. Example: ...&amp;organizations&#x3D;org1&amp;organizations&#x3D;org2 | [optional] 
 **bill_forward_url_root** | **String**| The URL through which BFJS connected to Bfwd. | [optional] 
 **access_token** | **String**| The public token through which BFJS connected to Bfwd. | [optional] 
 **vps_protocol** | **String**|  | [optional] 
 **tx_type** | **String**|  | [optional] 
 **vendor_tx_code** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **vps_tx_id** | **String**|  | [optional] 
 **card_type** | **String**|  | [optional] 
 **token** | **String**|  | [optional] 
 **status_detail** | **String**|  | [optional] 
 **last4_digits** | **String**|  | [optional] 
 **vps_signature** | **String**|  | [optional] 
 **expiry_date** | **String**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain



# **sage_pay_shout_v300**
> String sage_pay_shout_v300(opts)

[Note: this API is intended to be invoked by the SagePay servers -- they are BillForward's way of informing client-side of the result of card-capture from within an iframe, using SagePay's FORM Protocol, v3.0] Generates iframe to which customer will be directed upon success or failure. The iframe contains JavaScript which attempts to send a message to BillForward.js on the client-side, which will handle the result.

{\"nickname\":\"Generate SagePay iframe redirect\",\"response\":\"sagePayShoutV3_00.html\",\"request\":\"sagePayShoutV3_00.request.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::TokenizationApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.Multiple organization-IDs may be specified by repeated use of the queryparameter. Example: ...&organizations=org1&organizations=org2
  s: "s_example", # String | 
  t: "t_example", # String | 
  c: "c_example", # String | 
  e: "e_example", # String | 
  l: "l_example", # String | 
  d: "d_example" # String | 
}

begin
  #[Note: this API is intended to be invoked by the SagePay servers -- they are BillForward's way of informing client-side of the result of card-capture from within an iframe, using SagePay's FORM Protocol, v3.0] Generates iframe to which customer will be directed upon success or failure. The iframe contains JavaScript which attempts to send a message to BillForward.js on the client-side, which will handle the result.
  result = api_instance.sage_pay_shout_v300(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling TokenizationApi->sage_pay_shout_v300: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls.Multiple organization-IDs may be specified by repeated use of the queryparameter. Example: ...&amp;organizations&#x3D;org1&amp;organizations&#x3D;org2 | [optional] 
 **s** | **String**|  | [optional] 
 **t** | **String**|  | [optional] 
 **c** | **String**|  | [optional] 
 **e** | **String**|  | [optional] 
 **l** | **String**|  | [optional] 
 **d** | **String**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: text/html



