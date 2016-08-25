# Bfwd::AddChargesToAccountAPIRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | {\&quot;description\&quot;:\&quot;Friendly name given to any Invoice immediately produced when adding charges.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**purchase_order** | **String** | {\&quot;description\&quot;:\&quot;Purchase order associated with any Invoice immediately produced when adding charges.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**description** | **String** | {\&quot;description\&quot;:\&quot;Description to apply to any Invoice immediately produced when adding charges\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**currency** | **String** | {\&quot;description\&quot;:\&quot;Currency of the charges raised, specified by a three-character ISO 4217 currency code.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;]} | [optional] 
**payment_terms** | **Integer** | {\&quot;description\&quot;:\&quot;Defines the &#39;payment terms&#39; for any Invoice generated as a result of this action. Number of days after the issued date that the invoice is due. Payment will be attempted regardless of the payment terms. Payment terms are all Net.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;]} | [optional] 
**remaining_credit_behaviour** | **String** | {\&quot;default\&quot;:\&quot;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Rollover&lt;/span&gt;\&quot;,\&quot;description\&quot;:\&quot;Defines the behaviour applied to any outstanding credit resulting from the application of the charge.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Rollover&lt;/span&gt; &amp;mdash; Outstanding credit is returned to the accounts credit pool.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;Discard&lt;/span&gt; &amp;mdash; Outstanding credit is lost.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**invoice_state** | **String** | {\&quot;default\&quot;:\&quot;Pending\&quot;,\&quot;description\&quot;:\&quot;Stipulates the state of the resulting adhoc invoice if the invoicing type is Immediate\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**charges** | [**Array&lt;NestedChargeRequest&gt;**](NestedChargeRequest.md) | {\&quot;description\&quot;:\&quot;The charges which shall be added to the Account.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**dry_run** | **BOOLEAN** | {\&quot;default\&quot;:\&quot;false\&quot;,\&quot;description\&quot;:\&quot;Calculate the effects of adding charges to an Account, but do not actually persist any changes.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**void_on_failure** | **BOOLEAN** | {\&quot;default\&quot;:true,\&quot;description\&quot;:\&quot;If we have created an adhoc invoice and it has had an unsuccessful payment attempt, should we void it\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 


