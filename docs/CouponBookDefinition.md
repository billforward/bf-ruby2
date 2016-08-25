# Bfwd::CouponBookDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the coupon-book-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the product-rate-plan.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the coupon-book-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**coupon_definition_id** | **String** | { \&quot;description\&quot; : \&quot;The unique ID of the coupon-definition associated with the coupon-book-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**name** | **String** | { \&quot;description\&quot; : \&quot;The human readable name of the coupon-book-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**description** | **String** | { \&quot;description\&quot; : \&quot;The human readable description of the coupon-book-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**minimum** | **Integer** | { \&quot;description\&quot; : \&quot;The minimum number of coupon-instances a coupon-book can hold.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**maximum** | **Integer** | { \&quot;description\&quot; : \&quot;The maximum number of coupon-instances a coupon-book can hold.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**step** | **Integer** | { \&quot;description\&quot; : \&quot;The stepping parameter between the minimum and the maximum value. E.g. if the minimum is 100, the maximum is 150, and the step is 10, this means the coupon-books can hold 100, 110, 120, 130, 140 or 150 coupon-instances.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**definition_valid_from** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime that the coupon-book-definition is valid from.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**definition_valid_till** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime that the coupon-book-definition is valid until.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**instance_duration** | **Integer** | { \&quot;description\&quot; : \&quot;Reserved for future use.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**instance_duration_period** | **String** | { \&quot;description\&quot; : \&quot;Reserved for future use.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**state** | **String** | { \&quot;description\&quot; : \&quot;The current state of the coupon-book-definition.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 


