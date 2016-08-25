# Bfwd::Refund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;, \&quot;PUT\&quot;] } | [optional] 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**account_id** | **String** | { \&quot;description\&quot; : \&quot;Identifier of account to refund.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**reason** | **String** | { \&quot;description\&quot; : \&quot;The reason for the refund.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**nominal_value** | **Float** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[] } | 
**value** | **Float** | { \&quot;description\&quot; : \&quot;Positive decimal representing the total value to refund. This is at most the amount un-refunded on the payment. If amount is the total payment amount is refunded.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 
**refunded** | **Float** | { \&quot;description\&quot; : \&quot;Value refunded\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**actual_value** | **Float** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[] } | 
**nominal_refunded_value** | **Float** | { \&quot;description\&quot; : \&quot;Nominal value refunded.\&quot;, \&quot;verbs\&quot;:[] } | 
**actual_refunded_value** | **Float** | { \&quot;description\&quot; : \&quot;Refunded amount\&quot;, \&quot;verbs\&quot;:[] } | 
**refund_state** | **String** | { \&quot;default\&quot; : \&quot;AwaitingRefund\&quot;, \&quot;PUT_description\&quot; : \&quot;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Pending&lt;/span&gt; refunds can be set to &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;AwaitingRefund&lt;/span&gt; to initiate the refund or &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Cancelled&lt;/span&gt; to stop the refund.\&quot;, \&quot;description\&quot; : \&quot;Initially a refund is in the &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;AwaitingRefund&lt;/span&gt; state. Once the funds are successfully returned the state is &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Refunded&lt;/span&gt;. If the refund fails or is rejected is it set as &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Failed&lt;/span&gt;. Refunds can be set to a &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Pending&lt;/span&gt; state to support authorization flows, and will leave the refund pending until updated to &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;AwaitingRefund&lt;/span&gt;. &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Cancelled&lt;/span&gt; is when a refund will not be executed.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;, \&quot;POST\&quot;, \&quot;PUT\&quot;] } | 
**refund_type** | **String** | { \&quot;description\&quot; : \&quot;This is the type of refund. Refunds are associated with either an invoice and payment, a payment or unreferenced.\&quot;, \&quot;verbs\&quot;:[] } | 
**refund_nature** | **String** | {\&quot;default\&quot;:\&quot;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;SingleAttempt&lt;/span&gt;\&quot;,\&quot;description\&quot;:The mechanism by which credit is returned to the customer:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Void&lt;/span&gt; &amp;mdash; The original authorized payment is voided before capture.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Refund&lt;/span&gt; &amp;mdash; A refund is issued against an already-captured payment.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;]} | 
**refund_completed** | **DateTime** | { \&quot;description\&quot; : \&quot;When the refund was completed\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**currency** | **String** | { \&quot;description\&quot; : \&quot;Currency of the refund specified by a three character ISO 4217 currency code.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | 
**payment_method_id** | **String** | { \&quot;description\&quot; : \&quot;Payment method to refund from\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**invoice_payment_id** | **String** | { \&quot;description\&quot; : \&quot;Invoice payment to refund\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;, \&quot;GET\&quot;] } | [optional] 
**refund_invoice_payment_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**original_payment_id** | **String** | { \&quot;description\&quot; : \&quot;Original payment being refunded.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**original_gateway_payment_reference** | **String** | { \&quot;description\&quot; : \&quot;Reference in the gateway to the payment being refunded.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**refund_payment_id** | **String** | { \&quot;description\&quot; : \&quot;Identifier for the payment used to refund\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**invoice_id** | **String** | { \&quot;description\&quot; : \&quot;Invoice to refund.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 
**receipt_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the receipt for this refund.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 
**original_receipt_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the receipt for the successful payment that this entity refunds.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 
**created_by** | **String** | { \&quot;description\&quot; : \&quot;Refund requested by this account\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 


