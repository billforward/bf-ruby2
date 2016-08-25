# Bfwd::SynchAppConfigsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sync_app_config**](SynchAppConfigsApi.md#create_sync_app_config) | **POST** /synchAppConfigs | Create a synch app configuration.
[**get_sync_app_config**](SynchAppConfigsApi.md#get_sync_app_config) | **GET** /synchAppConfigs/{synchAppConfigs-ID} | Returns a single config, specified by the ID parameter.
[**get_sync_app_config_by_platform**](SynchAppConfigsApi.md#get_sync_app_config_by_platform) | **GET** /synchAppConfigs/platform/{platform} | Returns a collection configurations, specified by the platform parameter.
[**update_sync_app_config**](SynchAppConfigsApi.md#update_sync_app_config) | **PUT** /synchAppConfigs | Update a synch app configuration.


# **create_sync_app_config**
> DataSynchronisationAppConfigurationPagedMetadata create_sync_app_config(synch_app_config)

Create a synch app configuration.

{\"nickname\":\"Create a new synch app configuration\",\"request\":\"createSynchAppConfigurationRequest.html\",\"response\":\"createSynchAppConfigurationResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchAppConfigsApi.new

synch_app_config = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The data synch app config object to be created.


begin
  #Create a synch app configuration.
  result = api_instance.create_sync_app_config(synch_app_config)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchAppConfigsApi->create_sync_app_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_app_config** | [**MutableBillingEntity**](MutableBillingEntity.md)| The data synch app config object to be created. | 

### Return type

[**DataSynchronisationAppConfigurationPagedMetadata**](DataSynchronisationAppConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_sync_app_config**
> DataSynchronisationAppConfigurationPagedMetadata get_sync_app_config(synch_app_configs_id, opts)

Returns a single config, specified by the ID parameter.

{ \"nickname\" : \"Retrieve an existing synch config\",\"response\" : \"getSynchAppConfigByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchAppConfigsApi.new

synch_app_configs_id = "synch_app_configs_id_example" # String | ID of the Synch App Configuration.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization -IDs used to restrict the scope of API calls.
}

begin
  #Returns a single config, specified by the ID parameter.
  result = api_instance.get_sync_app_config(synch_app_configs_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchAppConfigsApi->get_sync_app_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_app_configs_id** | **String**| ID of the Synch App Configuration. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization -IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronisationAppConfigurationPagedMetadata**](DataSynchronisationAppConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_sync_app_config_by_platform**
> DataSynchronisationAppConfigurationPagedMetadata get_sync_app_config_by_platform(platform, opts)

Returns a collection configurations, specified by the platform parameter.

{ \"nickname\" : \"Retrieve by platform\",\"response\" : \"getSynchAppConfigsByPlatform.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchAppConfigsApi.new

platform = "platform_example" # String | The type of the synch app configuration.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a collection configurations, specified by the platform parameter.
  result = api_instance.get_sync_app_config_by_platform(platform, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchAppConfigsApi->get_sync_app_config_by_platform: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**| The type of the synch app configuration. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DataSynchronisationAppConfigurationPagedMetadata**](DataSynchronisationAppConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_sync_app_config**
> DataSynchronisationAppConfigurationPagedMetadata update_sync_app_config(synch_app_config)

Update a synch app configuration.

{ \"nickname\" : \"Update a sync app configuration\", \"request\" : \"updateSyncAppConfigRequest.html\" ,\"response\" : \"updateSyncAppConfigResponse.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::SynchAppConfigsApi.new

synch_app_config = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The synch app configuration object to be updated.


begin
  #Update a synch app configuration.
  result = api_instance.update_sync_app_config(synch_app_config)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling SynchAppConfigsApi->update_sync_app_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **synch_app_config** | [**MutableBillingEntity**](MutableBillingEntity.md)| The synch app configuration object to be updated. | 

### Return type

[**DataSynchronisationAppConfigurationPagedMetadata**](DataSynchronisationAppConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



