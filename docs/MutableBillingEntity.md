# Bfwd::MutableBillingEntity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**changed_by** | **String** | { \&quot;description\&quot; : \&quot;ID of the user who last updated the entity.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**updated** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was last updated.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**id** | **String** | ID of the Synchronization Job. | [optional] 
**config_id** | **String** | This is config id which links to this sync job. | 
**organization_id** | **String** | Organization associated with the refund. | 
**state** | **String** | This is the state of job. Pending jobs have not run. Complete jobs have run without error. Failed jobs have one of more errors. Cancelled jobs did not run. | 
**type** | **String** | This is the type of job. Incremental jobs just sync changes, fully jobs sync all data. | 
**scope** | **String** | The scope of the data synch&#39;d. | 
**target** | **String** | This is the target of the job. | 
**name** | **String** | Name of the Job. | 
**description** | **String** | Description of the Job. | 
**data_from** | **DateTime** | UTC DateTime of the start of the data to sync. | [optional] 
**data_till** | **DateTime** | UTC DateTime of the start of the data to sync. | [optional] 
**started** | **DateTime** | UTC DateTime of the end of the data to sync. | [optional] 
**stopped** | **DateTime** | UTC DateTime of the start of the data to sync. | [optional] 
**created_by** | **String** | The account who created the synch job. | [optional] 
**max_retry_times** | **Integer** | The max number of times the records will try to resync. | 
**retry_attempted** | **Integer** | The number of times the records tried to resync. | 
**deleted** | **BOOLEAN** | Is the sync job deleted. | [default to false]


