# BillForward::InvoiceRecalculationAmendment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**type** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;default\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;\&quot;] } | [optional] 
**subscription_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**amendment_type** | **String** | { \&quot;description\&quot; : \&quot;Type of amendment\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**actioning_time** | **DateTime** | { \&quot;description\&quot; : \&quot;When the amendment will run\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**actioned_time** | **DateTime** | { \&quot;description\&quot; : \&quot;The time the amendment completed.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**state** | **String** | Whether the subscription-amendment is: pending (to be actioned in the future), succeeded (actioning completed), failed (actioning was attempted but no effect was made) or discarded (the amendment had been cancelled before being actioned). Default: Pending | 
**deleted** | **BOOLEAN** | { \&quot;description\&quot; : \&quot;Is the amendment deleted.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [default to false]
**invoice_id** | **String** | { \&quot;description\&quot; : \&quot;Identifier of the invoice to recalcaulte\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**recalculation_behaviour** | **String** | { \&quot;description\&quot; : \&quot;The recalculation behaviour of the invoice\&quot;, \&quot;default\&quot; : \&quot;RecalculateAsLatestSubscriptionVersion\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**new_invoice_state** | **String** | { \&quot;description\&quot; : \&quot;State of invoice once recalculated\&quot;, \&quot;default\&quot; : \&quot;Pending\&quot;,  \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | 
**include_invoiced_charges_only** | **BOOLEAN** | { \&quot;description\&quot; : \&quot;Only include charges which are already linked to the invoice being recalculated\&quot;, \&quot;default\&quot; : \&quot;Pending\&quot;,  \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;] } | [default to false]

