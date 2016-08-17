# BillForward::RevenueAttribution

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period_start** | **DateTime** | {\&quot;description\&quot;:\&quot;PeriodStart of the charge with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**period_end** | **DateTime** | {\&quot;description\&quot;:\&quot;PeriodEnd of the charge with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | {\&quot;description\&quot;:\&quot;ID of the RevenueAttribution.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**organization_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the organization associated with the RevenueAttribution.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**invoice_id** | **String** | {\&quot;description\&quot;:\&quot;Consistent ID of the invoice which is expected to be consulted when paying for the billed feature described in this RevenueAttribution. That is: the top parent of that billed feature.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**invoice_version_id** | **String** | {\&quot;description\&quot;:\&quot;Version ID of the invoice which is expected to be consulted when paying for the billed feature described in this RevenueAttribution. That is: the top parent of that billed feature.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**aggregated_invoice_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the invoice to which this RevenueAttribution&#39;s invoice line belongs.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**aggregated_invoice_line_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the invoice line whose debt this RevenueAttribution describes.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**currency** | **String** | {\&quot;description\&quot;:\&quot;The currency of the Invoice from which this RevenueAttribution was raised &amp;mdash; specified by a three-character ISO 4217 currency code.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**nominal_amount** | **Float** | {\&quot;description\&quot;:\&quot;The amount paid &amp;mdash; through credit or otherwise &amp;mdash; toward this invoice line.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**actual_amount** | **Float** | {\&quot;description\&quot;:\&quot;The amount paid &amp;mdash; through real money &amp;mdash; toward this invoice line.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**pricing_component_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the PricingComponent with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**pricing_component_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the PricingComponent with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_rate_plan_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the ProductRatePlan with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_rate_plan_name** | **String** | {\&quot;description\&quot;:\&quot;Internal name of the ProductRatePlan with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_rate_plan_name_public** | **String** | {\&quot;description\&quot;:\&quot;Public name of the ProductRatePlan with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Product with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_name** | **String** | {\&quot;description\&quot;:\&quot;Internal name of the Product with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_name_public** | **String** | {\&quot;description\&quot;:\&quot;Public name of the Product with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**aggregated_subscription_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Subscription with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**subscription_id** | **String** | {\&quot;description\&quot;:\&quot;Consistent ID of the Subscription which pays for this invoice line.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**account_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Account with which this RevenueAttribution&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 


