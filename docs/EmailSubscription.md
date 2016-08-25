# Bfwd::EmailSubscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the email provider.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the organization associated with the email provider.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**type** | **String** |  | [optional] 
**state** | **String** |  | 
**from** | **String** |  | 
**bcc** | **String** |  | [optional] 
**cc** | **String** |  | [optional] 
**subject_template** | **String** |  | [optional] 
**send_to_customer** | **BOOLEAN** |  | [optional] [default to false]
**attach_invoice** | **BOOLEAN** |  | [optional] [default to false]


