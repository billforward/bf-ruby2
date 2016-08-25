# Bfwd::CouponBook

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**book_code** | **String** | { \&quot;description\&quot; : \&quot;The book code for the coupon-book. This is used to create coupon-instances which are associated with subscriptions.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the coupon-book.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the product-rate-plan.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the  the coupon-book.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**coupon_book_definition_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the coupon-book-definition associated with the coupon-book.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**name** | **String** | { \&quot;description\&quot; : \&quot;The human readable name of the coupon-book.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**cost** | **Float** | { \&quot;description\&quot; : \&quot;The cost of the coupon-book. Can be used to keep track of coupon-book sales.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**remaining_coupons** | **Integer** | { \&quot;description\&quot; : \&quot;The number of available coupon-instances left in the coupon-book.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**max_remaining_coupons** | **Integer** | { \&quot;description\&quot; : \&quot;The original number of available coupon-instances that the coupon-book can hold.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**maximum_coupon_uses** | **Integer** | { \&quot;description\&quot; : \&quot;The maximum number of uses each coupon-instance created from this coupon-book can have.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**deleted** | **BOOLEAN** | { \&quot;description\&quot; : \&quot;Has the coupon book been deleted?\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [default to false]


