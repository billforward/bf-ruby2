# Bfwd::ConfigurationsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_api_configuration**](ConfigurationsApi.md#create_api_configuration) | **POST** /configurations | Create a configuration.
[**get_all_api_configurations**](ConfigurationsApi.md#get_all_api_configurations) | **GET** /configurations | Returns a collection of configurations. By default 10 values are returned. Records are returned in natural order.
[**get_api_configurations_by_type**](ConfigurationsApi.md#get_api_configurations_by_type) | **GET** /configurations/type/{configuration-type} | Returns a single configuration, specified by the type parameter.
[**update_api_configuration**](ConfigurationsApi.md#update_api_configuration) | **PUT** /configurations | Update a configuration.


# **create_api_configuration**
> APIConfigurationPagedMetadata create_api_configuration(configuration)

Create a configuration.

{\"nickname\":\"Create a new configuration\",\"request\":\"createConfigurationRequest.html\",\"response\":\"createConfigurationResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ConfigurationsApi.new

configuration = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The configuration object to be created.


begin
  #Create a configuration.
  result = api_instance.create_api_configuration(configuration)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ConfigurationsApi->create_api_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration** | [**MutableBillingEntity**](MutableBillingEntity.md)| The configuration object to be created. | 

### Return type

[**APIConfigurationPagedMetadata**](APIConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_api_configurations**
> APIConfigurationPagedMetadata get_all_api_configurations(opts)

Returns a collection of configurations. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all configurations\",\"response\":\"getConfigurationsAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ConfigurationsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component to return.
  records: 10, # Integer | The maximum number of pricing-components to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of configurations. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_api_configurations(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ConfigurationsApi->get_all_api_configurations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-components to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**APIConfigurationPagedMetadata**](APIConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_api_configurations_by_type**
> APIConfigurationPagedMetadata get_api_configurations_by_type(configuration_type, opts)

Returns a single configuration, specified by the type parameter.

{\"nickname\":\"Retrieve by payment gateway\",\"response\":\"getConfigurationByType.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ConfigurationsApi.new

configuration_type = "configuration_type_example" # String | The unique type of the configuration.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first pricing-component to return.
  records: 10, # Integer | The maximum number of pricing-components to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a single configuration, specified by the type parameter.
  result = api_instance.get_api_configurations_by_type(configuration_type, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ConfigurationsApi->get_api_configurations_by_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_type** | **String**| The unique type of the configuration. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first pricing-component to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of pricing-components to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**APIConfigurationPagedMetadata**](APIConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **update_api_configuration**
> APIConfigurationPagedMetadata update_api_configuration(configuration)

Update a configuration.

{\"nickname\":\"Update a configuration\",\"request\":\"updateConfigurationRequest.html\",\"response\":\"updateConfigurationResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ConfigurationsApi.new

configuration = Bfwd::MutableBillingEntity.new # MutableBillingEntity | The configuration object to be updated.


begin
  #Update a configuration.
  result = api_instance.update_api_configuration(configuration)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ConfigurationsApi->update_api_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration** | [**MutableBillingEntity**](MutableBillingEntity.md)| The configuration object to be updated. | 

### Return type

[**APIConfigurationPagedMetadata**](APIConfigurationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



