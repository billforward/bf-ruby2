# Bfwd::Period

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**subscription_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the subscription to which this billing period pertains.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with this billing period.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**invoice_id** | **String** |  | [optional] 
**state** | **String** | { \&quot;description\&quot; : \&quot;The current state of this billing period. Initially a period is &#39;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] }ACTIVE_STATE&#39;. Once the &#39;stop&#39; date is passed, the billing period becomes HISTORIC_STATE. | 
**period** | **Integer** | { \&quot;description\&quot; : \&quot;The incarnation of the subscription to which this billing period refers. The first incarnation of the subscription is in &#39;period 0&#39;. A recurring subscription may enter &#39;period 1&#39; and further.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**start** | **DateTime** | { \&quot;description\&quot; : \&quot;The start date of this billing period, UTC DateTime\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**stop** | **DateTime** | { \&quot;description\&quot; : \&quot;The end date of this billing period, UTC DateTime\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**usage_type** | **String** | { \&quot;description\&quot; : \&quot;The type of usage measured within this billing period. Options are &#39;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] }Temporal which refers to time-based usage and Itemized, which refers to one-off usages. | 


