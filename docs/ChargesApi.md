# Bfwd::ChargesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_recalculate_subscription_charge**](ChargesApi.md#batch_recalculate_subscription_charge) | **POST** /charges/recalculate | Recalculate a batch of charges.
[**get_all_subscription_charges**](ChargesApi.md#get_all_subscription_charges) | **GET** /charges | Retrieves a collection of all charges. By default 10 values are returned. Records are returned in natural order.
[**get_subscription_charge_by_account_id**](ChargesApi.md#get_subscription_charge_by_account_id) | **GET** /charges/account/{account-ID} | Retrieves a collection of charges, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_subscription_charge_by_id**](ChargesApi.md#get_subscription_charge_by_id) | **GET** /charges/{charge-id} | Retrieves a single charge, specified by the charge-id parameter.
[**get_subscription_charge_by_state**](ChargesApi.md#get_subscription_charge_by_state) | **GET** /charges/state/{state} | Retrieves a collection of charges, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
[**get_subscription_charge_by_version_id**](ChargesApi.md#get_subscription_charge_by_version_id) | **GET** /charges/version/{version-ID} | Retrieves a single charge, specified by the version-ID parameter.
[**recalculate_subscription_charge**](ChargesApi.md#recalculate_subscription_charge) | **POST** /charges/{charge-ID}/recalculate | Recalculate a charge.
[**void_subscription_charge**](ChargesApi.md#void_subscription_charge) | **DELETE** /charges/{charge-id} | Void the charge with the specified charge-ID.


# **batch_recalculate_subscription_charge**
> RecalculateChargeBatchResponsePagedMetadata batch_recalculate_subscription_charge(request)

Recalculate a batch of charges.

{\"nickname\":\"Batch re-calculate charges\",\"request\":\"batchRecalculateChargeRequest.html\",\"response\":\"batchRecalculateChargeResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

request = Bfwd::RecalculateChargeBatchRequest.new # RecalculateChargeBatchRequest | The batch charge request.


begin
  #Recalculate a batch of charges.
  result = api_instance.batch_recalculate_subscription_charge(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->batch_recalculate_subscription_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RecalculateChargeBatchRequest**](RecalculateChargeBatchRequest.md)| The batch charge request. | 

### Return type

[**RecalculateChargeBatchResponsePagedMetadata**](RecalculateChargeBatchResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_subscription_charges**
> SubscriptionChargePagedMetadata get_all_subscription_charges(opts)

Retrieves a collection of all charges. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve all charges\",\"response\":\"getChargeAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of all charges. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_subscription_charges(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->get_all_subscription_charges: #{e}"
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

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_subscription_charge_by_account_id**
> SubscriptionChargePagedMetadata get_subscription_charge_by_account_id(account_id, opts)

Retrieves a collection of charges, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by account\",\"response\":\"getChargeByAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

account_id = "account_id_example" # String | The string ID of the account

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of charges, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscription_charge_by_account_id(account_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->get_subscription_charge_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The string ID of the account | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_subscription_charge_by_id**
> SubscriptionChargePagedMetadata get_subscription_charge_by_id(charge_id, opts)

Retrieves a single charge, specified by the charge-id parameter.

{\"nickname\":\"Retrieve a charge\",\"response\":\"getChargeByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

charge_id = "charge_id_example" # String | The unique string-ID of the subscription.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a single charge, specified by the charge-id parameter.
  result = api_instance.get_subscription_charge_by_id(charge_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->get_subscription_charge_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_id** | **String**| The unique string-ID of the subscription. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_subscription_charge_by_state**
> SubscriptionChargePagedMetadata get_subscription_charge_by_state(state, opts)

Retrieves a collection of charges, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by state\",\"response\":\"getChargeByState.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

state = "state_example" # String | The current state of the charge

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of charges, specified by the state parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_subscription_charge_by_state(state, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->get_subscription_charge_by_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The current state of the charge | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_subscription_charge_by_version_id**
> SubscriptionChargePagedMetadata get_subscription_charge_by_version_id(version_id, opts)

Retrieves a single charge, specified by the version-ID parameter.

{\"nickname\":\"Retrieve by version\",\"response\":\"getChargeByVersionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

version_id = "version_id_example" # String | The version-ID of the charge.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves a single charge, specified by the version-ID parameter.
  result = api_instance.get_subscription_charge_by_version_id(version_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->get_subscription_charge_by_version_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version_id** | **String**| The version-ID of the charge. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **recalculate_subscription_charge**
> SubscriptionChargePagedMetadata recalculate_subscription_charge(charge_id, charge)

Recalculate a charge.

{\"nickname\":\"Re-calculate a charge\",\"request\":\"recalculateChargeRequest.html\",\"response\":\"recalculateChargeResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

charge_id = "charge_id_example" # String | Unique id of the charge.

charge = Bfwd::RecalculateChargeRequest.new # RecalculateChargeRequest | The charge to be re-calculated.


begin
  #Recalculate a charge.
  result = api_instance.recalculate_subscription_charge(charge_id, charge)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->recalculate_subscription_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_id** | **String**| Unique id of the charge. | 
 **charge** | [**RecalculateChargeRequest**](RecalculateChargeRequest.md)| The charge to be re-calculated. | 

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **void_subscription_charge**
> SubscriptionChargePagedMetadata void_subscription_charge(charge_id, opts)

Void the charge with the specified charge-ID.

{\"nickname\":\"Void charge\",\"response\":\"deleteCharge.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ChargesApi.new

charge_id = "charge_id_example" # String | Unique id of the charge.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Void the charge with the specified charge-ID.
  result = api_instance.void_subscription_charge(charge_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ChargesApi->void_subscription_charge: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_id** | **String**| Unique id of the charge. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**SubscriptionChargePagedMetadata**](SubscriptionChargePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



