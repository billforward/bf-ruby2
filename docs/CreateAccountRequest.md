# Bfwd::CreateAccountRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**profile** | [**CreateAccountProfileRequest**](CreateAccountProfileRequest.md) |  | [optional] 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the account.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**user_id** | **String** | { \&quot;description\&quot; : \&quot;User associated with the account. If this is null, no user is currently assocaited with the account. A user is only set when an account is associated with a user account.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**aggregating_product_rate_plan_id** | **String** | { \&quot;description\&quot; : \&quot;If present, this will be the product rate plan to use when creating an aggregating subscription.  An account level aggregating subscription will be created when the first subscription is created against the account.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**aggregating_subscription_id** | **String** | { \&quot;description\&quot; : \&quot;The consistent ID of the account level aggregating subscription, if one exists.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**metadata** | [**DynamicMetadata**](DynamicMetadata.md) |  | [optional] 


