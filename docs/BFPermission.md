# Bfwd::BFPermission

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;] } | [optional] 
**role_id** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;, \&quot;POST\&quot;] } | [optional] 
**role_name** | **String** | { \&quot;description\&quot; : \&quot;\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;, \&quot;POST\&quot;] } | [optional] 
**resource** | **String** | { \&quot;description\&quot; : \&quot;BillForward resource associated with this permission.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;POST\&quot;,\&quot;PUT\&quot;] } | [optional] 
**action** | **String** | { \&quot;description\&quot; : \&quot;Action they may be performed on the associated resource.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;POST\&quot;,\&quot;PUT\&quot;] } | [optional] 
**revoked** | **DateTime** | { \&quot;description\&quot; : \&quot;If a permission is deleted it is set as revoked from this date. The role with this permission will no longer have its applied.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;POST\&quot;,\&quot;PUT\&quot;] } | [optional] 
**deleted** | **BOOLEAN** | { \&quot;default\&quot; : \&quot;false\&quot;, \&quot;description\&quot; : \&quot;If a permission is deleted the role with this permission will no longer have its applied.\&quot;, \&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;POST\&quot;,\&quot;PUT\&quot;] } | [optional] [default to false]


