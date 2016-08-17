# BillForward::PaymentMethod

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the payment-method.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**crm_id** | **String** | { \&quot;description\&quot; : \&quot;CRM ID of the product-rate-plan.\&quot;, \&quot;verbs\&quot;:] } | [optional] 
**account_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the account associated with the payment-method.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** |  | [optional] 
**name** | **String** | { \&quot;description\&quot; : \&quot;Name of the payment-method.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**description** | **String** | { \&quot;description\&quot; : \&quot;Description of the payment-method.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**card_holder_name** | **String** | { \&quot;description\&quot; : \&quot;Name of the card holder\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**expiry_date** | **String** | { \&quot;description\&quot; : \&quot;In the case of card payment methods this is the expiry date of the card, format should be MMYY including leading 0&#39;s. For example 0115 for January 2015.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**card_type** | **String** | { \&quot;description\&quot; : \&quot;Type of the card. In the case of card payment methods this is the payment type, for example VISA, MasterCard.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] 
**country** | **String** |  | [optional] 
**province** | **String** |  | [optional] 
**first_six** | **String** |  | [optional] 
**last_four** | **String** |  | [optional] 
**expiry_year** | **Integer** |  | [optional] 
**expiry_month** | **Integer** |  | [optional] 
**link_id** | **String** |  | 
**gateway** | **String** | { \&quot;description\&quot; : \&quot;Gateway type for payment-method.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**ip_address** | **String** | {\&quot;description\&quot;:\&quot;IP address associated with this payment method.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**ip_address_country** | **String** | {\&quot;description\&quot;:\&quot;Country of the IP address associated with this payment method.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**state** | **String** | { \&quot;description\&quot; : \&quot;State of the payment-method.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**deleted** | **BOOLEAN** | {\&quot;default\&quot; : \&quot;false\&quot;, \&quot;description\&quot; : \&quot;Indicates if a payment-method has been retired. If a payment-method has been retired it can still be retrieved using the appropriate flag on API requests. Generally payment-methods will be retired by customers wanting to remove the payment method from their account. Caution should be used when requested deleted payment methods.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] [default to false]
**default_payment_method** | **BOOLEAN** | {\&quot;default\&quot; : \&quot;false\&quot;, \&quot;description\&quot; : \&quot;Indicates if this is the default payment method for the account.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;POST\&quot;,\&quot;PUT\&quot;]  } | [optional] [default to false]


