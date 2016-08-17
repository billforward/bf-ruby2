# BillForward::DataSynchronisationConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | ID of the Synchronization Configuration. | [optional] 
**organization_id** | **String** | Organization associated with Synchronization Configuration. | 
**username** | **String** | This is the username for the platform. | 
**access_token** | **String** | This is the token for the platform. | 
**refresh_token** | **String** | This is the refresh token for the platform. | 
**instance_url** | **String** | This is the instance url for client&#39;s salesforce instance. | 
**platform** | **String** | This is the platform of the job. | 
**max_failed_retry** | **Integer** | This is maximum of the retry attempts when a synch is failed. | [optional] 
**synch_interval** | **Integer** | This is interval between each sync. | [optional] 
**deleted** | **BOOLEAN** | Is the sync job deleted. | [default to false]


