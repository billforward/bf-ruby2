# BillForward::CouponsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon**](CouponsApi.md#create_coupon) | **POST** /coupons | Create a coupon.
[**create_coupon_unique_codes**](CouponsApi.md#create_coupon_unique_codes) | **POST** /coupons/{code}/codes | Create a list of unique coupon codes that can be applied to a subscription.
[**get_all_coupons**](CouponsApi.md#get_all_coupons) | **GET** /coupons | Returns a collection of all coupons. By default 10 values are returned. Records are returned in natural order.
[**get_applied_coupons**](CouponsApi.md#get_applied_coupons) | **GET** /coupons/{code}/applied | Returns a list of unique coupons which have been applied.
[**get_available_coupon_codes_for_code**](CouponsApi.md#get_available_coupon_codes_for_code) | **GET** /coupons/{code}/codes | Returns a list of available unique coupon codes for the specified parent coupon code that can be applied to a subscription.
[**get_coupon_code**](CouponsApi.md#get_coupon_code) | **GET** /coupons/{code} | Returns the coupon for the specified code that can be applied to a subscription.
[**get_subscription_applications_of_coupons**](CouponsApi.md#get_subscription_applications_of_coupons) | **GET** /coupons/{code}/subscriptions | Retrieves a collection of the coupons by this coupon code which have been applied.
[**retire_coupon**](CouponsApi.md#retire_coupon) | **DELETE** /coupons/{code} | &lt;p&gt;This method has 2 main behaviours depending on what is passed in. If the parent coupon code, for example SUMMER, is given no new coupons can be issued or claimed from this code. Deleting will result in the deleted property being set to true.&lt;/p&gt;&lt;p&gt;If a unique coupon code, for example SUMMER-AGH8, is given this will stop the coupon from being applied to the subscription from that point onwards. When a coupon is deleted the validUntil property is set which is the date/time it stopped applying to the target.&lt;/p&gt;


# **create_coupon**
> CouponPagedMetadata create_coupon(code)

Create a coupon.

{\"nickname\":\"Create a new coupon\",\"request\":\"createCouponRequest.html\",\"response\":\"createCouponResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

code = BillForward::Coupon.new # Coupon | The coupon object to be created.


begin
  #Create a coupon.
  result = api_instance.create_coupon(code)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->create_coupon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | [**Coupon**](Coupon.md)| The coupon object to be created. | 

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **create_coupon_unique_codes**
> CouponUniqueCodesResponsePagedMetadata create_coupon_unique_codes(code, opts)

Create a list of unique coupon codes that can be applied to a subscription.

{ \"nickname\":\"Create unique coupon codes\",\"request\":\"createUniqueCodesRequest.html\",\"response\":\"createUniqueCodesResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

code = "code_example" # String | The coupon code to use in the generation of the unique codes.

opts = { 
  request: BillForward::CouponUniqueCodesRequest.new # CouponUniqueCodesRequest | The request object that specifies the number of codes to be created.
}

begin
  #Create a list of unique coupon codes that can be applied to a subscription.
  result = api_instance.create_coupon_unique_codes(code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->create_coupon_unique_codes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The coupon code to use in the generation of the unique codes. | 
 **request** | [**CouponUniqueCodesRequest**](CouponUniqueCodesRequest.md)| The request object that specifies the number of codes to be created. | [optional] 

### Return type

[**CouponUniqueCodesResponsePagedMetadata**](CouponUniqueCodesResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_all_coupons**
> CouponPagedMetadata get_all_coupons(opts)

Returns a collection of all coupons. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\":\"Retrieve all coupons\",\"response\":\"getCouponAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Returns a collection of all coupons. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_coupons(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->get_all_coupons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_applied_coupons**
> CouponPagedMetadata get_applied_coupons(code, opts)

Returns a list of unique coupons which have been applied.

{ \"nickname\":\"Retrieve used unique coupons\",\"response\":\"getAppliedCodesForCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

code = "code_example" # String | The base code to use in the generation of the unique codes.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Returns a list of unique coupons which have been applied.
  result = api_instance.get_applied_coupons(code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->get_applied_coupons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The base code to use in the generation of the unique codes. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_available_coupon_codes_for_code**
> CouponUniqueCodesResponsePagedMetadata get_available_coupon_codes_for_code(code, opts)

Returns a list of available unique coupon codes for the specified parent coupon code that can be applied to a subscription.

{ \"nickname\":\"Retrieve unused unique coupons\",\"response\":\"getAvailableCodesForCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

code = "code_example" # String | The base code to use in the generation of the unique codes.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Returns a list of available unique coupon codes for the specified parent coupon code that can be applied to a subscription.
  result = api_instance.get_available_coupon_codes_for_code(code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->get_available_coupon_codes_for_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The base code to use in the generation of the unique codes. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**CouponUniqueCodesResponsePagedMetadata**](CouponUniqueCodesResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_code**
> CouponUniqueCodesResponsePagedMetadata get_coupon_code(code, opts)

Returns the coupon for the specified code that can be applied to a subscription.

{ \"nickname\":\"Retrieve coupon\",\"response\":\"getCouponByCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

code = "code_example" # String | The parent coupon code to use in the generation of the unique codes.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns the coupon for the specified code that can be applied to a subscription.
  result = api_instance.get_coupon_code(code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->get_coupon_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The parent coupon code to use in the generation of the unique codes. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponUniqueCodesResponsePagedMetadata**](CouponUniqueCodesResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_subscription_applications_of_coupons**
> SubscriptionPagedMetadata get_subscription_applications_of_coupons(code, opts)

Retrieves a collection of the coupons by this coupon code which have been applied.

{ \"nickname\":\"Retrieve subscriptions to which the given coupon code has been applied.\",\"response\":\"getSubscriptionApplications.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

code = "code_example" # String | Base code of the coupon.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of the coupons by this coupon code which have been applied.
  result = api_instance.get_subscription_applications_of_coupons(code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->get_subscription_applications_of_coupons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Base code of the coupon. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionPagedMetadata**](SubscriptionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **retire_coupon**
> CouponPagedMetadata retire_coupon(code, organizations)

<p>This method has 2 main behaviours depending on what is passed in. If the parent coupon code, for example SUMMER, is given no new coupons can be issued or claimed from this code. Deleting will result in the deleted property being set to true.</p><p>If a unique coupon code, for example SUMMER-AGH8, is given this will stop the coupon from being applied to the subscription from that point onwards. When a coupon is deleted the validUntil property is set which is the date/time it stopped applying to the target.</p>

{ \"nickname\":\"Retire coupon\",\"response\":\"retireCoupon.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponsApi.new

code = "code_example" # String | ID of the coupon to remove.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #<p>This method has 2 main behaviours depending on what is passed in. If the parent coupon code, for example SUMMER, is given no new coupons can be issued or claimed from this code. Deleting will result in the deleted property being set to true.</p><p>If a unique coupon code, for example SUMMER-AGH8, is given this will stop the coupon from being applied to the subscription from that point onwards. When a coupon is deleted the validUntil property is set which is the date/time it stopped applying to the target.</p>
  result = api_instance.retire_coupon(code, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponsApi->retire_coupon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| ID of the coupon to remove. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**CouponPagedMetadata**](CouponPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



