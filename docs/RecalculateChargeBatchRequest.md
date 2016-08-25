# Bfwd::RecalculateChargeBatchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charges** | [**Array&lt;SingleRecalculateChargeRequest&gt;**](SingleRecalculateChargeRequest.md) | {\&quot;description\&quot;:\&quot;Charges to recalculate.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | [optional] 
**organization_id** | **String** | {\&quot;default\&quot;:\&quot;(Auto-populated using your authentication credentials) ID of the organization actioning this request.\&quot;,\&quot;description\&quot;:\&quot;ID of the BillForward Organization within which the requested pricing component should be created. If omitted: this will be auto-populated using your authentication credentials.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;]} | [optional] 
**dry_run** | **BOOLEAN** | {\&quot;default\&quot;:false,\&quot;description\&quot;:\&quot;Changes described in the response:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;true&lt;/span&gt; &amp;mdash; Are not actually performed; your subscription remains unchanged, no billing events run, and no invoices are executed.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;false&lt;/span&gt; &amp;mdash; Are actually performed and committed.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]
**recalculate_invoices** | **BOOLEAN** | { \&quot;description\&quot; : \&quot;Whether the invoice of any charge to be recalculated should also be recalculated.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [optional] [default to true]
**invoice_state** | **String** | {\&quot;default\&quot;:null (invoice is raised in its default initial state),\&quot;description\&quot;:\&quot;The new state recalculated invoices should be created as. \&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 


