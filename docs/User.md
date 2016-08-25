# Bfwd::User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | {\&quot;description\&quot;:\&quot;ID of the user\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [optional] 
**organization_id** | **String** | {\&quot;description\&quot;:\&quot;ID of the Organization to which the User belongs.\&quot;,\&quot;verbs\&quot;:[\&quot;GET\&quot;,\&quot;POST\&quot;]} | 
**password** | [**Array&lt;Password&gt;**](Password.md) | {\&quot;description\&quot;:\&quot;Passwords associated with the user. A user must have one currently active password to login.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**username** | [**Array&lt;Username&gt;**](Username.md) | {\&quot;description\&quot;:\&quot;Usernames associated with the user. A user may have more than one username currently active. Usernames are enforced to be formatted as e-mail addresses.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**password_reset_valid_till** | **DateTime** | {\&quot;description\&quot;:\&quot;The UTC DateTime when a password reset would no longer be valid with the current code.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 
**bf_admin** | **BOOLEAN** |  | [optional] [default to false]
**account_non_expired** | **BOOLEAN** | {\&quot;description\&quot;:\&quot;Whether the User has expired.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [default to false]
**account_non_locked** | **BOOLEAN** | {\&quot;description\&quot;:\&quot;Is the User locked.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [default to false]
**credentials_non_expired** | **BOOLEAN** | {\&quot;description\&quot;:\&quot;Are the User credentials expired.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [default to false]
**enabled** | **BOOLEAN** | {\&quot;description\&quot;:\&quot;Is the User enabled.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | [default to false]
**timezone** | [**TimeZone**](TimeZone.md) | {\&quot;description\&quot;:\&quot;The timezone used when displaying time series data to the user.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;]} | 


