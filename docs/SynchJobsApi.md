# Bfwd::SynchJobsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sync_job**](SynchJobsApi.md#create_sync_job) | **POST** /synchJobs | Create a synch job.
[**get_all_sync_jobs**](SynchJobsApi.md#get_all_sync_jobs) | **GET** /synchJobs | Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
[**get_sync_job_by_id**](SynchJobsApi.md#get_sync_job_by_id) | **GET** /synchJobs/{synchJob-ID} | Returns a single job, specified by the ID parameter.
[**get_sync_job_by_scope**](SynchJobsApi.md#get_sync_job_by_scope) | **GET** /synchJobs/scope/{scope} | Returns a collection jobs, specified by the scope parameter.
[**get_sync_job_by_state**](SynchJobsApi.md#get_sync_job_by_state) | **GET** /synchJobs/state/{state} | Returns a collection jobs, specified by the state parameter.
[**get_sync_job_by_target**](SynchJobsApi.md#get_sync_job_by_target) | **GET** /synchJobs/target/{target} | Returns a collection jobs, specified by the target parameter.
[**get_sync_job_by_type**](SynchJobsApi.md#get_sync_job_by_type) | **GET** /synchJobs/type/{type} | Returns a collection jobs, specified by the type parameter.
[**update_sync_job**](SynchJobsApi.md#update_sync_job) | **PUT** /synchJobs | Update a synch job.


# **create_sync_job**
> DataSynchronizationJobPagedMetadata create_sync_job(synch_job)

Create a synch job.

{\"nickname\":\"Create a new sync job\",\"request\":\"createSynchJobRequest.html\",\"response\":\"createSynchJobResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

synch_job = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The data synch job object to be created.


begin
  #Create a synch job.
  result = api_instance.create_sync_job(synch_job)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->create_sync_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_job** | [**MutableBillingEntity**](MutableBillingEntity.md)| The data synch job object to be created. | 

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_sync_jobs**
> DataSynchronizationJobPagedMetadata get_all_sync_jobs(opts)

Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all synch jobs\",\"response\":\"getSynchJobsAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first synch job to return.
  records: 10, # Integer | The maximum number of synch jobs to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_sync_jobs(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->get_all_sync_jobs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first synch job to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of synch jobs to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_sync_job_by_id**
> DataSynchronizationJobPagedMetadata get_sync_job_by_id(synch_job_id, opts)

Returns a single job, specified by the ID parameter.

{\"nickname\":\"Retrieve an existing synch job\",\"response\":\"getSyncJobByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

synch_job_id = "synch_job_id_example" # String | ID of the Sync Job.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization -IDs used to restrict the scope of API calls.
}

begin
  #Returns a single job, specified by the ID parameter.
  result = api_instance.get_sync_job_by_id(synch_job_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->get_sync_job_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_job_id** | **String**| ID of the Sync Job. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization -IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_sync_job_by_scope**
> DataSynchronizationJobPagedMetadata get_sync_job_by_scope(scope, opts)

Returns a collection jobs, specified by the scope parameter.

{\"nickname\":\"Retrieve by scope\",\"response\":\"getSyncJobByScope.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

scope = "scope_example" # String | The scope of the synch job.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection jobs, specified by the scope parameter.
  result = api_instance.get_sync_job_by_scope(scope, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->get_sync_job_by_scope: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **String**| The scope of the synch job. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_sync_job_by_state**
> DataSynchronizationJobPagedMetadata get_sync_job_by_state(state, opts)

Returns a collection jobs, specified by the state parameter.

{\"nickname\":\"Retrieve by state\",\"response\":\"getSyncJobByState.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

state = "state_example" # String | The state of the synch job.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection jobs, specified by the state parameter.
  result = api_instance.get_sync_job_by_state(state, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->get_sync_job_by_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| The state of the synch job. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_sync_job_by_target**
> DataSynchronizationJobPagedMetadata get_sync_job_by_target(target, opts)

Returns a collection jobs, specified by the target parameter.

{\"nickname\":\"Retrieve by target\",\"response\":\"getSyncJobByTarget.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

target = "target_example" # String | The target of the synch job.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection jobs, specified by the target parameter.
  result = api_instance.get_sync_job_by_target(target, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->get_sync_job_by_target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target** | **String**| The target of the synch job. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_sync_job_by_type**
> DataSynchronizationJobPagedMetadata get_sync_job_by_type(type, opts)

Returns a collection jobs, specified by the type parameter.

{\"nickname\":\"Retrieve by type\",\"response\":\"getSyncJobByType.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

type = "type_example" # String | The type of the synch job.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection jobs, specified by the type parameter.
  result = api_instance.get_sync_job_by_type(type, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->get_sync_job_by_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| The type of the synch job. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_sync_job**
> DataSynchronizationJobPagedMetadata update_sync_job(synch_job)

Update a synch job.

{\"nickname\":\"Update a synch job\",\"request\":\"updateSyncJobRequest.html\",\"response\":\"updateSyncJobResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchJobsApi.new

synch_job = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The synch job object to be updated.


begin
  #Update a synch job.
  result = api_instance.update_sync_job(synch_job)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchJobsApi->update_sync_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_job** | [**MutableBillingEntity**](MutableBillingEntity.md)| The synch job object to be updated. | 

### Return type

[**DataSynchronizationJobPagedMetadata**](DataSynchronizationJobPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



