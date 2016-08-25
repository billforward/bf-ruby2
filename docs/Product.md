# Bfwd::Product

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | {\&quot;description\&quot;:\&quot;ID uniquely identifying this product.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;]} | [optional] 
**crm_id** | **String** | {\&quot;description\&quot;:\&quot;Customer-relationship-management ID of the product.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;PUT\&quot;,\&quot;POST\&quot;]} | [optional] 
**account_id** | **String** | {\&quot;description\&quot;:\&quot;\&quot;,\&quot;verbs\&quot;:[]} | [optional] 
**name** | **String** | {\&quot;description\&quot;:\&quot;A unique name &amp;mdash; for your benefit &amp;mdash; used to identify this product within Bfwd. It should reflect the fact that this product confers some service to a customer (e.g. \\\&quot;Gold membership\\\&quot;).&lt;br&gt;The product can also be defined by the frequency with which it recurs (e.g. \\\&quot;Monthly Gold membership\\\&quot;).&lt;br&gt;Remember also that rate plans can override the timing prescribed by their product. If you intend to override that timing, you may consider the product&#39;s period duration to be an unimportant factor when it comes to naming it.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**public_name** | **String** | {\&quot;description\&quot;:\&quot;A friendly non-unique name used to identify this product\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**description** | **String** | {\&quot;description\&quot;:\&quot;A description &amp;mdash; for your benefit &amp;mdash; of the product. For example: you could explain what service this product entitles a customer to.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**duration** | **Integer** | {\&quot;description\&quot;:\&quot;Number of length-measures which constitute the product&#39;s period.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**duration_period** | **String** | {\&quot;description\&quot;:\&quot;Measure describing the magnitude of the product&#39;s period.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**metadata** | [**DynamicMetadata**](DynamicMetadata.md) |  | [optional] 
**trial** | **Integer** | {\&quot;default\&quot;:0,\&quot;description\&quot;:\&quot;Number of trial-length-measures which constitute the product&#39;s trial period\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**trial_period** | **String** | {\&quot;default\&quot;:\&quot;none\&quot;,\&quot;description\&quot;:\&quot;Measure describing the magnitude of the product&#39;s trial period.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_type** | **String** | {\&quot;default\&quot;:\&quot;recurring\&quot;,\&quot;description\&quot;:\&quot;The frequency of the product &amp;mdash; either recurring or non-recurring.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**deleted** | **BOOLEAN** | {\&quot;description\&quot;:\&quot;\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;]} | [default to false]
**start_date** | **DateTime** | {\&quot;description\&quot;:\&quot;\&quot;,\&quot;verbs\&quot;:[]} | [optional] 
**payment_terms** | **Integer** |  | [optional] 


