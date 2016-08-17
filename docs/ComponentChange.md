# BillForward::ComponentChange

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | id | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[] } | 
**amendment_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[] } | 
**update_pricing_component_value_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the updateComponentValueAmendment object that is responsible for actioning the change.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**pricing_component_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the pricing component, that will not change with versioning. (Must be provided if pricingComponentName is empty)\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**pricing_component_name** | **String** | { \&quot;description\&quot; : \&quot;Name of the pricing component. (Must be provided if pricingComponentID is empty)\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**state** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | 
**change_mode** | **String** | { \&quot;description\&quot; : \&quot;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;immediate&lt;/span&gt; applies the changes to the subscription straight away. &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;delayed&lt;/span&gt; applies the changes to the subscription at the start of the next billing period\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**new_value** | **Integer** | { \&quot;description\&quot; : \&quot;Value of the pricing component that the subscription is moving to\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**value_effective** | **DateTime** | { \&quot;description\&quot; : \&quot;Date when the value becomes active. For example when an upgrade will come into effect.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 


