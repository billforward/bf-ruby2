# BillForward::Usage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**session_id** | **String** | { \&quot;description\&quot; : \&quot;A (not guaranteed unique) identifier for the session from which this usage was generated.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**subscription_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the subscription to which this usage instance pertains.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**pricing_component_id** | **String** | { \&quot;description\&quot; : \&quot;The ID of the pricing component this usage is for.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**pricing_component_name** | **String** | { \&quot;description\&quot; : \&quot;The name of the pricing component this usage is for.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**uom** | **String** | { \&quot;description\&quot; : \&quot;The unit-of-measure that this usage is for.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;The organization associated with this usage instance.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**usage_period** | **Integer** | { \&quot;description\&quot; : \&quot;The usage period during which this usage occurred.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**usage_duration** | **Integer** | { \&quot;description\&quot; : \&quot;The amount of time over which usage occurred (in milliseconds?). Relevant for &#39;temporal&#39; usage only.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**usage_type** | **String** | { \&quot;description\&quot; : \&quot;The type of usage (&#39;Temporal&#39; or &#39;Itemized&#39;).\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**usage_value** | **Integer** | { \&quot;description\&quot; : \&quot;The quantity of product consumed by this usage. Relevant for &#39;itemized&#39; usage only.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**detailed** | **BOOLEAN** | { \&quot;description\&quot; : \&quot;Is this usage a detailed entry?\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] [default to false]
**created_by** | **String** | { \&quot;description\&quot; : \&quot;Some identifying information about who created this object.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**updated_by** | **String** | { \&quot;description\&quot; : \&quot;Some identifying information about who updated this object.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**start** | **DateTime** | { \&quot;description\&quot; : \&quot;The start date of this usage instance, UTC DateTime\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**stop** | **DateTime** | { \&quot;description\&quot; : \&quot;The end date of this usage instance, UTC DateTime\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was updated.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**occurred_on** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the usage occurred.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**billing_date** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the usage is to be billed.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 


