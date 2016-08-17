# BillForward::InvoiceRecalculationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**recalculation_behaviour** | **String** | {\&quot;default\&quot;:\&quot;RecalculateAsLatestSubscriptionVersion\&quot;,\&quot;description\&quot;:\&quot;On plan change a subscription may have outstanding invoices.If the value of the invoice needs to be changed it can either be calculated via the new or old plan. &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;RecalculateAsLatestSubscriptionVersion&lt;/span&gt; calculates as the original plan and &lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;RecalculateAsCurrentSubscriptionVersion&lt;/span&gt; as the new plan\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**new_state** | **String** | {\&quot;default\&quot;:\&quot;Pending\&quot;,\&quot;description\&quot;:\&quot;State of the invoice once recalculated\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | 
**only_invoice_associated_charges** | **BOOLEAN** | {\&quot;default\&quot;:true,\&quot;description\&quot;:\&quot;Only include charges which are already associated with the invoice. For example the subscription may have pending charges which can be added to the invoice on recalculation by setting this value to false. Note settings this value to true may cause new invoice line itemsto the invoice\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [default to false]
**dry_run** | **BOOLEAN** | {\&quot;default\&quot;:\&quot;false\&quot;,\&quot;description\&quot;:\&quot;Calculate the invoice but do not store or attempt payment\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [default to false]


