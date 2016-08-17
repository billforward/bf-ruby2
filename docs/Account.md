# BillForward::Account

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the account.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**metadata** | [**DynamicMetadata**](DynamicMetadata.md) | { \&quot;description\&quot; : \&quot;Add metadata.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the account.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the account.\&quot;, \&quot;verbs\&quot;:[] } | 
**user_id** | **String** | { \&quot;description\&quot; : \&quot;User associated with the account. If this is null, no user is currently assocaited with the account. A user is only set when an account is associated with a user account.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**successful_subscriptions** | **Integer** | { \&quot;description\&quot; : \&quot;Number of distinct, paid subscriptions associated with this account. Initially the value will be 0 when no successful subscriptions have been taken. A subscription cancelled whilst in trial is counted as successful.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**aggregating_product_rate_plan_id** | **String** | { \&quot;description\&quot; : \&quot;If present, this will be the product rate plan to use when creating an aggregating subscription.  An account level aggregating subscription will be created when the first subscription is created against the account.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**aggregating_subscription_id** | **String** | { \&quot;description\&quot; : \&quot;The consistent ID of the account level aggregating subscription, if one exists.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**deleted** | **BOOLEAN** | {  \&quot;default\&quot; : \&quot;false\&quot;,  \&quot;description\&quot; : \&quot;Indicates if an account has been retired. If an account has been retired it can still be retrieved using the appropriate flag on API requests.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] [default to false]
**profile** | [**Profile**](Profile.md) |  | [optional] 
**payment_methods** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) | { \&quot;description\&quot; : \&quot;The payment-methods associated with the account.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 


