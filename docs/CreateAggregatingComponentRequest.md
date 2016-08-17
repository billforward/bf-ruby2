# BillForward::CreateAggregatingComponentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**pricing_component** | **String** | {\&quot;description\&quot;:\&quot;Name of the pricing component upon which to aggregate. The subscriber to the aggregating rate plan (which contains the AggregatingComponent specified here), will consult its children at the end of each billing period, and collect from those children all charges whose pricing component matches the ID of the component identified here. Those charges&#39; quantities will be counted, and used when calculating the price of consuming this AggregatingComponent. The aggregating subscription then raises a discount charge &amp;mdash; to account for the more favourable price tiering that emerges when aggregating.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | 
**organization_id** | **String** | {\&quot;default\&quot;:\&quot;(Auto-populated using your authentication credentials)\&quot;,\&quot;description\&quot;:\&quot;ID of the BillForward Organization within which the requested pricing component should be created. If omitted: this will be auto-populated using your authentication credentials.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | [optional] 


