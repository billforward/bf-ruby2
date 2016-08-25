# Bfwd::AuditEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who made the change.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the audit-entry.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the organization associated with the audit-entry.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**entity** | **String** | { \&quot;description\&quot; : \&quot;The entity type.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**entity_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the entity.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**audit_action** | **String** | { \&quot;description\&quot; : \&quot;update, insert\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**field_changes** | **Array&lt;String&gt;** | { \&quot;description\&quot; : \&quot;A description of the changes.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**new_entity** | **Array&lt;String&gt;** |  | 
**state** | **String** | { \&quot;description\&quot; : \&quot;The state of the audit entry.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 


