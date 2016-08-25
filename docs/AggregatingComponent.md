# Bfwd::AggregatingComponent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | {\&quot;description\&quot;:\&quot;Unique ID by which the AggregatingComponent can be looked up.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;]} | [optional] 
**organization_id** | **String** | {\&quot;default\&quot;:\&quot;(Auto-populated using your authentication credentials)\&quot;,\&quot;description\&quot;:\&quot;ID of the BillForward Organization within which the requested pricing component should be created. If omitted: this will be auto-populated using your authentication credentials.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**product_rate_plan_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the rate plan upon which this AggregatingComponent is defined.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**product_rate_plan_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the rate plan upon which this AggregatingComponent is defined.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**pricing_component_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the pricing component to which this AggregatingComponent&#39;s aggregation applies. The subscriber to the aggregating rate plan (which contains this AggregatingComponent), will consult its children at the end of each billing period, and collect from those children all charges whose pricing component matches this ID. Those charges&#39; quantities will be counted, and used when calculating the price of consuming this AggregatingComponent. The aggregating subscription then raises a discount charge &amp;mdash; to account for the more favourable price tiering that emerges when aggregating.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | 
**pricing_component_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the pricing component to which this AggregatingComponent&#39;s aggregation applies. The subscriber to the aggregating rate plan (which contains this AggregatingComponent), will consult its children at the end of each billing period, and collect from those children all charges whose pricing component matches this ID. Those charges&#39; quantities will be counted, and used when calculating the price of consuming this AggregatingComponent. The aggregating subscription then raises a discount charge &amp;mdash; to account for the more favourable price tiering that emerges when aggregating.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | 
**deleted** | **BOOLEAN** | {\&quot;default\&quot;:false,\&quot;description\&quot;:\&quot;Whether the AggregatingComponent has been retired.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;]} | [optional] [default to false]


