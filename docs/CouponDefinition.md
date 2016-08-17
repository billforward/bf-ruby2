# BillForward::CouponDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the product-rate-plan.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the organization associated with the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**name** | **String** | { \&quot;description\&quot; : \&quot;The human readable name of the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**description** | **String** | { \&quot;description\&quot; : \&quot;The human readable description of the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**customer_code** | **String** | { \&quot;description\&quot; : \&quot;The customerCode associated with the organization.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**target** | **String** | { \&quot;description\&quot; : \&quot;The target of the coupon-definition. Currently coupon-definitions can only target products.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**currency** | **String** | { \&quot;description\&quot; : \&quot;The currency of the coupon-definition specified by a three character ISO 4217 currency code.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**definition_valid_from** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime that the coupon-definition is valid from.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**definition_valid_till** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime that the coupon-definition is valid until.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**instance_duration_period** | **String** | { \&quot;description\&quot; : \&quot;instanceDurationPeriod\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**instance_duration** | **Integer** | { \&quot;description\&quot; : \&quot;instanceDuration\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**fixed_end_date** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime specifying the fixed end date of the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**state** | **String** | { \&quot;description\&quot; : \&quot;The current state of the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**modifiers** | [**Array&lt;CouponModifierBase&gt;**](CouponModifierBase.md) | { \&quot;description\&quot; : \&quot;The collection of coupon-modifiers associated with the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**rules** | [**Array&lt;CouponRule&gt;**](CouponRule.md) | { \&quot;description\&quot; : \&quot;The collection of coupon-rules associated with the coupon-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 


