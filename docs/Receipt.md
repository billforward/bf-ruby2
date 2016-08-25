# Bfwd::Receipt

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**refund_id** | **String** |  | 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** |  | [optional] 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the subscription.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**invoice_id** | **String** |  | [optional] 
**gateway_reference_id** | **String** |  | [optional] 
**account_id** | **String** |  | [optional] 
**payment_id** | **String** |  | [optional] 
**payment_method_id** | **String** |  | [optional] 
**organization_id** | **String** |  | [optional] 
**cardholder_name** | **String** |  | [optional] 
**card_last_four** | **String** |  | [optional] 
**card_description** | **String** |  | [optional] 
**card_country** | **String** |  | [optional] 
**card_province** | **String** |  | [optional] 
**card_type** | **String** |  | [optional] 
**ip_address** | **String** | {\&quot;description\&quot;:\&quot;IP address associated with this payment method.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**ip_address_country** | **String** | {\&quot;description\&quot;:\&quot;Country of the IP address associated with this payment method.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**type** | **String** | { \&quot;description\&quot; : \&quot;Type of transaction.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**currency** | **String** | { \&quot;description\&quot; : \&quot;Currency of the invoice specified by a three character ISO 4217 currency code.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**value** | **Float** |  | [optional] 
**payment_gateway** | **String** |  | [optional] 
**invoice_type** | **String** | { \&quot;description\&quot; : \&quot;The type of the invoice. A subscription invoice is raised every time a subscription recurs. An amendment is created for intra-contract changes. An Adhoc invoice is created for payment that is taken out-of-band of a subscription. Finally the invoice generated for a trial period is marked as Trial.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**execution_attempt** | **Integer** |  | [optional] 
**decision** | **String** |  | [optional] 
**reason_code** | **Integer** |  | [optional] 
**raw_reason_code** | **String** |  | [optional] 
**raw_data** | **Array&lt;String&gt;** |  | [optional] 


