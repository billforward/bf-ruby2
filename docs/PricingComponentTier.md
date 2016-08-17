# BillForward::PricingComponentTier

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lower_threshold** | **Integer** | { \&quot;description\&quot; : \&quot;The lower threshold of the tier.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**upper_threshold** | **Integer** | {  \&quot;default\&quot; : \&quot;&amp;infin;\&quot;,  \&quot;description\&quot; : \&quot;The upper threshold of the tier. If this is left null the tier will be infinite\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**pricing_component_version_id** | **String** | { \&quot;description\&quot; : \&quot;Version ID of the associated pricing-component\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**pricing_component_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the pricing-component associated with the pricing-component-tier.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**product_rate_plan_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the product-rate-plan associated with the pricing-component-tier.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the pricing-component-tier.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**pricing_type** | **String** | { \&quot;description\&quot; : \&quot;Pricing calculation used to price items in this pricing tier. Unit pricing means every distinct value is used in the calculation. Fixed means that the total price of the tier is fixed regardless of the purchased amount.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**price** | **Float** | { \&quot;description\&quot; : \&quot;Cost associated with tier. When the pricingType is fixed this is the total value. When pricingType is unit, this is the cost of each unit. \&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 


