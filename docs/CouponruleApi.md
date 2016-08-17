# BillForward::CouponruleApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_rule**](CouponruleApi.md#create_coupon_rule) | **POST** /coupon-rules | Create a coupon-rule.
[**delete_coupon_rule**](CouponruleApi.md#delete_coupon_rule) | **DELETE** /coupon-rules/{coupon-rule-ID} | Retire a coupon-rule, specified by the coupon-rule-ID parameter.
[**get_all_coupon_rules**](CouponruleApi.md#get_all_coupon_rules) | **GET** /coupon-rules | Returns a collection of coupon-rules. By default 10 values are returned. Records are returned in natural order.
[**get_coupon_rule_by_coupon_definition_id**](CouponruleApi.md#get_coupon_rule_by_coupon_definition_id) | **GET** /coupon-rules/coupon-definition/{coupon-definition-ID} | Returns a single coupon-definition, specified by the coupon-definition-ID parameter.
[**get_coupon_rule_by_id**](CouponruleApi.md#get_coupon_rule_by_id) | **GET** /coupon-rules/{coupon-rule-ID} | Returns a single coupon-rule, specified by the coupon-rule-ID parameter.


# **create_coupon_rule**
> CouponRulePagedMetadata create_coupon_rule(coupon_rule)

Create a coupon-rule.

{\"nickname\":\"Create a new rule\", \"request\" : \"createCouponRuleRequest.html\" ,\"response\" : \"createCouponRuleResponse.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponruleApi.new

coupon_rule = BillForward::CouponRule.new # CouponRule | The coupon-rule object to be created.


begin
  #Create a coupon-rule.
  result = api_instance.create_coupon_rule(coupon_rule)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponruleApi->create_coupon_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_rule** | [**CouponRule**](CouponRule.md)| The coupon-rule object to be created. | 

### Return type

[**CouponRulePagedMetadata**](CouponRulePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **delete_coupon_rule**
> CouponRulePagedMetadata delete_coupon_rule(coupon_rule_id, opts)

Retire a coupon-rule, specified by the coupon-rule-ID parameter.

{\"nickname\":\"Delete a rule\",\"response\" : \"deleteCouponRuleByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponruleApi.new

coupon_rule_id = "coupon_rule_id_example" # String | ID of the coupon-rule.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retire a coupon-rule, specified by the coupon-rule-ID parameter.
  result = api_instance.delete_coupon_rule(coupon_rule_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponruleApi->delete_coupon_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_rule_id** | **String**| ID of the coupon-rule. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponRulePagedMetadata**](CouponRulePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_all_coupon_rules**
> CouponRulePagedMetadata get_all_coupon_rules(opts)

Returns a collection of coupon-rules. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all rules\",\"response\" : \"getCouponRuleAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponruleApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of coupon-rules. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_coupon_rules(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponruleApi->get_all_coupon_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**CouponRulePagedMetadata**](CouponRulePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_coupon_rule_by_coupon_definition_id**
> CouponRulePagedMetadata get_coupon_rule_by_coupon_definition_id(coupon_definition_id, opts)

Returns a single coupon-definition, specified by the coupon-definition-ID parameter.

{\"nickname\":\"Retrieve by coupon definition\",\"response\" : \"getCouponRuleByCouponDefinitionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponruleApi.new

coupon_definition_id = "coupon_definition_id_example" # String | ID of the coupon-definition.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-definition, specified by the coupon-definition-ID parameter.
  result = api_instance.get_coupon_rule_by_coupon_definition_id(coupon_definition_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponruleApi->get_coupon_rule_by_coupon_definition_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_definition_id** | **String**| ID of the coupon-definition. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponRulePagedMetadata**](CouponRulePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_coupon_rule_by_id**
> CouponRulePagedMetadata get_coupon_rule_by_id(coupon_rule_id, opts)

Returns a single coupon-rule, specified by the coupon-rule-ID parameter.

{\"nickname\":\"Retrieve an existing rule\",\"response\" : \"getCouponRuleByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponruleApi.new

coupon_rule_id = "coupon_rule_id_example" # String | ID of the coupon-rule.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-rule, specified by the coupon-rule-ID parameter.
  result = api_instance.get_coupon_rule_by_id(coupon_rule_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponruleApi->get_coupon_rule_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_rule_id** | **String**| ID of the coupon-rule. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponRulePagedMetadata**](CouponRulePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



