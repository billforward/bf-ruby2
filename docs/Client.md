# Bfwd::Client

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**client_id** | **String** | { \&quot;description\&quot; : \&quot;ID of the OAuth2 client.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [optional] 
**client_secret** | **String** | { \&quot;description\&quot; : \&quot;Unique Client Secret of the client. This is used as the OAuth2 Client secret\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**organization_id** | **String** | { \&quot;description\&quot; : \&quot;Organization associated with the client.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**scope** | **String** | { \&quot;description\&quot; : \&quot;Scopes associated with the client.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**resource_ids** | **String** | { \&quot;description\&quot; : \&quot;Resources associated with the client.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**authorized_grant_types** | **String** | { \&quot;description\&quot; : \&quot;Oauth2 Grant Types which may be used when authenticating with the client.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**registered_redirect_uris** | **String** | { \&quot;description\&quot; : \&quot;Registered Redirect URIs associated with the client.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**authorities** | **String** | { \&quot;description\&quot; : \&quot;Authorities associated with the client.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**access_token_validity_seconds** | **Integer** | { \&quot;description\&quot; : \&quot;The amount of time in seconds that an access token for the client is valid.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**refresh_token_validity_seconds** | **Integer** | { \&quot;description\&quot; : \&quot;The amount of time in seconds that a refresh token for the client is valid.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | 
**deleted** | **BOOLEAN** | { \&quot;description\&quot; : \&quot;Indicates if a client has been retired. If a client has been retired it can still be retrieved using the appropriate flag on API requests.\&quot;, \&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;PUT\&quot;,\&quot;GET\&quot;] } | [default to false]


