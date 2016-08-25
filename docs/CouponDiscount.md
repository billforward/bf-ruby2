# Bfwd::CouponDiscount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**pricing_component** | **String** | { \&quot;description\&quot; : \&quot;Name or ID of the pricing component to apply the discount to. If not set blank discount is applied at the invoice level.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;] } | [optional] 
**pricing_component_name** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**pricing_component_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**unit_of_measure_name** | **String** |  | [optional] 
**unit_of_measure_id** | **String** |  | [optional] 
**units_free** | **Integer** | { \&quot;description\&quot; : \&quot;Number of units that are free for a pricing-component.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 
**percentage_discount** | **Float** | { \&quot;description\&quot; : \&quot;Percentage to be discounted\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 
**cash_discount** | **Float** | { \&quot;description\&quot; : \&quot;Fixed monetary amount to be discounted\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 


