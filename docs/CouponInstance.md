# Bfwd::CouponInstance

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target_id** | **String** | { \&quot;description\&quot; : \&quot;Target ID of the coupon-instance. If the target is subscription, this is the subscription&#39;s ID. If the target is account, this is the account&#39;s ID.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**coupon_code** | **String** | { \&quot;description\&quot; : \&quot;Code for the coupon. This code can be used to apply coupon-instances to subscriptions or accounts.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**date_initialised** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime the coupon was initialised.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**valid_till** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime the coupon-instance is valid until.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the coupon-instance.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the product-rate-plan.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**book_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the coupon-book associated with the coupon-instance.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**coupon_definition_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the coupon-definition associated with the coupon-instance.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**target** | **String** | { \&quot;description\&quot; : \&quot;Ttype of the target for the coupon-instance. Used in combination with the targetID.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**periods_valid_for** | **Integer** | { \&quot;description\&quot; : \&quot;Number of subscription periods the coupon is valid for. Unused.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**total_periods** | **Integer** | { \&quot;description\&quot; : \&quot;Unused.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**remaining_uses** | **Integer** | { \&quot;description\&quot; : \&quot;The number of remaining uses the coupon-instance has left.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**instance_discount_value** | **Float** | { \&quot;description\&quot; : \&quot;(Optional) The value to be used for dynamic price calculation, if the coupon definition has an &#39;instance&#39; or &#39;instance_percent&#39; coupon modifier. If it is not set, the effect amount of the coupon modifier will be used.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**max_remaining_uses** | **Integer** | { \&quot;description\&quot; : \&quot;The number of remaining uses the coupon-instance had upon initialisation.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**coupon_instance_existing_values** | [**Array&lt;CouponInstanceExistingValue&gt;**](CouponInstanceExistingValue.md) | { \&quot;description\&quot; : \&quot;The collection of coupon-instance-existing-value objects associated with the coupon-instance.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 


