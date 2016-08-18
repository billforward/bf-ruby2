# BillForward::SingleRecalculateChargeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | {\&quot;description\&quot;:\&quot;The unique id of the charge to be recalculated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**name** | **String** | {\&quot;description\&quot;:\&quot;New friendly name given to the charge to help identify it.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**description** | **String** | {\&quot;description\&quot;:\&quot;New description given to the charge.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**amount** | **Float** | {\&quot;description\&quot;:\&quot;(Applicable only if the existing charge has none of [&#x60;pricingComponentName&#x60;, &#x60;pricingComponentID&#x60;] defined)&lt;br&gt;New monetary amount for which to charge. Used only for ad-hoc charges (i.e charges not associated with any pricing component).&lt;br&gt;This amount excludes tax.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**invoicing_type** | **String** | {\&quot;default\&quot;:\&quot;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Aggregated&lt;/span&gt;\&quot;,\&quot;description\&quot;:\&quot;The strategy for how to raise invoices describing the charges produced by this charge recalculation.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Immediate&lt;/span&gt; &amp;mdash; Generate straight-away an invoice containing these charges.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Aggregated&lt;/span&gt; &amp;mdash; Add these charges to the next invoice which is generated naturally &amp;mdash; i.e. the invoice raised at the current period&#39;s end.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**pricing_component_value** | **Integer** | {\&quot;description\&quot;:\&quot;(Applicable only if the existing charge has any of [&#x60;pricingComponentName&#x60;, &#x60;pricingComponentID&#x60;] defined)&lt;br&gt;The updated value consumed of the pricing component which this charge concerns.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**recalculation_behaviour** | **String** | {\&quot;default\&quot;:\&quot;RecalculateWithLatestPricing\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**organization_id** | **String** | {\&quot;default\&quot;:\&quot;(Auto-populated using your authentication credentials) ID of the organization actioning this request.\&quot;,\&quot;description\&quot;:\&quot;ID of the BillForward Organization within which the requested pricing component should be created. If omitted: this will be auto-populated using your authentication credentials.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | [optional] 


