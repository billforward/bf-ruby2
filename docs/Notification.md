# BillForward::Notification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | { \&quot;description\&quot; : \&quot;ID of the notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**domain** | **String** | { \&quot;description\&quot; : \&quot;The domain of the notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**action** | **String** | { \&quot;description\&quot; : \&quot;The action associated with the notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**webhook_id** | **String** | { \&quot;description\&quot; : \&quot;Webhook associated with the notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**entity_id** | **String** | { \&quot;description\&quot; : \&quot;The id of the entity associated with the notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**destination_url** | **String** | { \&quot;description\&quot; : \&quot;The URL the notification will be sent to.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**format** | **String** | { \&quot;description\&quot; : \&quot;Format of the notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**ack_enabled** | **BOOLEAN** | { \&quot;description\&quot; : \&quot;If true notifications will continue to be sent until an acknowledgment is received.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [default to false]
**entity** | **Array&lt;String&gt;** |  | [optional] 
**changes** | **Array&lt;String&gt;** |  | [optional] 
**last_send_attempt** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime of the notifications&#39;s last send attempt.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**next_send_attempt** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime of the notification&#39;s next send attempt.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**final_send_attempt** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime of the notification&#39;s final send attempt.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**total_send_attempts** | **Integer** | { \&quot;description\&quot; : \&quot;The number of send attempts for this notification.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**state** | **String** | { \&quot;description\&quot; : \&quot;Whether the notification has been sent.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**acked** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the notification was acked if it is ack enabled.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 


