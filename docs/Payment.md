# BillForward::Payment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the payment.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the invoice.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**payment_method_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the payment method associated with the payment.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**invoice_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the invoice associated with the payment. This may be null when a payment is not explicitly associated with an invoice. Payments may be used across multiple invoices.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the organization associated with the payment.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**gateway** | **String** | { \&quot;description\&quot; : \&quot;Payment gateway associated with the payment\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**currency** | **String** | { \&quot;description\&quot; : \&quot;The currency of the payment specified by a three character ISO 4217 currency code.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**nominal_value** | **Float** | { \&quot;description\&quot; : \&quot;Nominal value of the payment. This is the theoretical value of the payment, thus the value this payment can pay off an invoice. For example a coupon has a nominal value of the discount, and the actual value is zero.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**actual_value** | **Float** | { \&quot;description\&quot; : \&quot;Actual monetary value of the payment. This is real value of the payment amount, thus the amount of currency received for this payment. A coupon has a real value of zero, even though the nominal amount it pays may be greater than zero.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**remaining_nominal_value** | **Float** | { \&quot;description\&quot; : \&quot;Remaining nominal value of the payment not used. In the case when a payment is used across a range of invoices a payment may be used multiple times, each use reducing the available blance of the payment.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**payment_received** | **DateTime** | { \&quot;description\&quot; : \&quot;UTC DateTime specifying when payment was received for the invoice.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**refunded_value** | **Float** | { \&quot;description\&quot; : \&quot;Refunded nominal value of the payment.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**refund_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the refund associated with the payment.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**type** | **String** | { \&quot;description\&quot; : \&quot;Type of payment.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 


