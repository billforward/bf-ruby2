# Bfwd::UsageSession

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with this session.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**subscription_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the subscription to which this session pertains.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**session_id** | **String** | { \&quot;description\&quot; : \&quot;A (not guaranteed unique) identifier for this session, provided by the user. This, when combined with the subscription ID and unit of measure, uniquely identify a session.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**pricing_component_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the pricing-component to which this usage session applies\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**pricing_component_name** | **String** | { \&quot;description\&quot; : \&quot;Name of the pricing-component to which this usage session applies\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**uom** | **String** | { \&quot;description\&quot; : \&quot;Unit-of-measure to which this usage session applies\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**description** | **String** | { \&quot;description\&quot; : \&quot;A description provided by the user, to record details about this session.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**sessionix** | **Integer** | { \&quot;description\&quot; : \&quot;The current incarnation of the session. Initially 0, this number increments every time the session is &#39;cut&#39; without ending. For example, a cut is taken of a session if it outlasts the end date of the billing period it started in. The session reincarnates with an incremented sessionix, in the next billing period (that is, if some period indeed follows the current one).\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**start** | **DateTime** | { \&quot;description\&quot; : \&quot;The start date of this session, UTC DateTime\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**stop** | **DateTime** | { \&quot;description\&quot; : \&quot;The end date of this session, UTC DateTime\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**state** | **String** | { \&quot;description\&quot; : \&quot;The type of usage measured within this billing period. Options are &#39;\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] }Active&#39;, Which refers to a session that is currently running &#39;Historic&#39;, Which refers to a session that has terminated. | [optional] 
**uduration** | **Integer** | { \&quot;description\&quot; : \&quot;The amount of time that elapsed (in milliseconds?) during this session. Initially 0. Presently updated only when a cut is taken of the session (for example if the session or billnig period ends).\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 


