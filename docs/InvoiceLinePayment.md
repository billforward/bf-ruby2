# BillForward::InvoiceLinePayment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period_start** | **DateTime** | {\&quot;description\&quot;:\&quot;PeriodStart of the charge with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**period_end** | **DateTime** | {\&quot;description\&quot;:\&quot;PeriodEnd of the charge with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**payment_received** | **DateTime** | {\&quot;description\&quot;:\&quot;The date when the associated payment was received.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**refund_received** | **DateTime** | {\&quot;description\&quot;:\&quot;The date when the associated payment was refunded.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | {\&quot;description\&quot;:\&quot;ID of the InvoiceLinePayment.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**organization_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the organization associated with the InvoiceLinePayment.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**payment_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Payment used upon this InvoiceLinePayment&#39;s invoice line.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**gateway_original_payment_reference** | **String** | {\&quot;description\&quot;:\&quot;Reference with which the original payment transaction can be looked up in its gateway.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**gateway_refund_payment_reference** | **String** | {\&quot;description\&quot;:\&quot;Reference with which the refund transaction for the payment can be looked up in its gateway.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**aggregated_invoice_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the invoice to which this InvoiceLinePayment&#39;s invoice line belongs.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**aggregated_invoice_line_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the invoice line toward which this InvoiceLinePayment contributes payment.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**invoice_payment_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the InvoicePayment with which this InvoiceLinePayment is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**currency** | **String** | {\&quot;description\&quot;:\&quot;The currency of the payment &amp;mdash; specified by a three-character ISO 4217 currency code.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**gateway** | **String** | {\&quot;description\&quot;:\&quot;Payment gateway through which the payment was made.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**nominal_amount** | **Float** | {\&quot;description\&quot;:\&quot;The amount paid &amp;mdash; through credit or otherwise &amp;mdash; toward this invoice line.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**actual_amount** | **Float** | {\&quot;description\&quot;:\&quot;The amount paid &amp;mdash; through real money &amp;mdash; toward this invoice line.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**refunded_amount** | **Float** | {\&quot;description\&quot;:\&quot;The monetary amount refunded toward this invoice line.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**pricing_component_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the PricingComponent with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**pricing_component_name** | **String** | {\&quot;description\&quot;:\&quot;Name of the PricingComponent with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_rate_plan_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the ProductRatePlan with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_rate_plan_name** | **String** | {\&quot;description\&quot;:\&quot;Internal name of the ProductRatePlan with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_rate_plan_name_public** | **String** | {\&quot;description\&quot;:\&quot;Public name of the ProductRatePlan with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Product with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_name** | **String** | {\&quot;description\&quot;:\&quot;Internal name of the Product with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**product_name_public** | **String** | {\&quot;description\&quot;:\&quot;Public name of the Product with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**subscription_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Subscription with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**account_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Account with which this InvoiceLinePayment&#39;s invoice line is associated.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 


