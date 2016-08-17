# BillForward::SynchConfigsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sync_config**](SynchConfigsApi.md#create_sync_config) | **POST** /synchConfigs | Create a synch configuration.
[**get_all_sync_configs**](SynchConfigsApi.md#get_all_sync_configs) | **GET** /synchConfigs | Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
[**get_sync_config**](SynchConfigsApi.md#get_sync_config) | **GET** /synchConfigs/{synchConfigs-ID} | Returns a single config, specified by the ID parameter.
[**get_sync_config_by_platform**](SynchConfigsApi.md#get_sync_config_by_platform) | **GET** /synchConfigs/platform/{platform} | Returns a collection configurations, specified by the platform parameter.
[**get_sync_config_by_username**](SynchConfigsApi.md#get_sync_config_by_username) | **GET** /synchConfigs/username/{username} | Returns a collection configurations, specified by the username parameter.
[**update_sync_config**](SynchConfigsApi.md#update_sync_config) | **PUT** /synchConfigs | Update a synch configuration.


# **create_sync_config**
> DataSynchronisationConfigurationPagedMetadata create_sync_config(synch_config)

Create a synch configuration.

{\"nickname\":\"Create a new synch configuration\",\"request\":\"createSynchConfigRequest.html\",\"response\":\"createSynchConfigResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SynchConfigsApi.new

synch_config = BillForward::DataSynchronisationConfiguration.new # DataSynchronisationConfiguration | The data synch config object to be created.


begin
  #Create a synch configuration.
  result = api_instance.create_sync_config(synch_config)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SynchConfigsApi->create_sync_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_config** | [**DataSynchronisationConfiguration**](DataSynchronisationConfiguration.md)| The data synch config object to be created. | 

### Return type

[**DataSynchronisationConfigurationPagedMetadata**](DataSynchronisationConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_sync_configs**
> DataSynchronisationConfigurationPagedMetadata get_all_sync_configs(opts)

Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Get all synch configs\",\"response\" : \"getSynchConfigsAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SynchConfigsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first synch configuration to return.
  records: 10, # Integer | The maximum number of configs to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_sync_configs(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SynchConfigsApi->get_all_sync_configs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first synch configuration to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of configs to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**DataSynchronisationConfigurationPagedMetadata**](DataSynchronisationConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_sync_config**
> DataSynchronisationConfigurationPagedMetadata get_sync_config(synch_configs_id, opts)

Returns a single config, specified by the ID parameter.

{ \"nickname\" : \"Retrieve an existing synch config\",\"response\" : \"getSynchConfigByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SynchConfigsApi.new

synch_configs_id = "synch_configs_id_example" # String | ID of the Synch Configuration.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization -IDs used to restrict the scope of API calls.
}

begin
  #Returns a single config, specified by the ID parameter.
  result = api_instance.get_sync_config(synch_configs_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SynchConfigsApi->get_sync_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_configs_id** | **String**| ID of the Synch Configuration. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization -IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronisationConfigurationPagedMetadata**](DataSynchronisationConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_sync_config_by_platform**
> DataSynchronisationConfigurationPagedMetadata get_sync_config_by_platform(platform, opts)

Returns a collection configurations, specified by the platform parameter.

{ \"nickname\" : \"Retrieve by platform\",\"response\" : \"getSynchConfigsByPlatform.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SynchConfigsApi.new

platform = "platform_example" # String | The type of the synch configuration.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection configurations, specified by the platform parameter.
  result = api_instance.get_sync_config_by_platform(platform, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SynchConfigsApi->get_sync_config_by_platform: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**| The type of the synch configuration. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronisationConfigurationPagedMetadata**](DataSynchronisationConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_sync_config_by_username**
> DataSynchronisationConfigurationPagedMetadata get_sync_config_by_username(username, opts)

Returns a collection configurations, specified by the username parameter.

{ \"nickname\" : \"Retrieve by username\",\"response\" : \"getSynchConfigByUsername.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SynchConfigsApi.new

username = "username_example" # String | The username in the synch configuration.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection configurations, specified by the username parameter.
  result = api_instance.get_sync_config_by_username(username, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SynchConfigsApi->get_sync_config_by_username: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username in the synch configuration. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronisationConfigurationPagedMetadata**](DataSynchronisationConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_sync_config**
> DataSynchronisationConfigurationPagedMetadata update_sync_config(synch_config)

Update a synch configuration.

{ \"nickname\" : \"Update a synch config\", \"request\" : \"updateSyncConfigRequest.html\" ,\"response\" : \"updateSyncConfigResponse.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::SynchConfigsApi.new

synch_config = BillForward::DataSynchronisationConfiguration.new # DataSynchronisationConfiguration | The synch configuration object to be updated.


begin
  #Update a synch configuration.
  result = api_instance.update_sync_config(synch_config)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling SynchConfigsApi->update_sync_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_config** | [**DataSynchronisationConfiguration**](DataSynchronisationConfiguration.md)| The synch configuration object to be updated. | 

### Return type

[**DataSynchronisationConfigurationPagedMetadata**](DataSynchronisationConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



