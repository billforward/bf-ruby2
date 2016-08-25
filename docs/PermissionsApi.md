# Bfwd::PermissionsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_permission**](PermissionsApi.md#create_permission) | **POST** /permissions | Create a new permission.
[**get_all_permissions**](PermissionsApi.md#get_all_permissions) | **GET** /permissions | Retrieves a collection of all permissions. By default 10 values are returned. Records are returned in natural order.
[**get_available_actions_for_resource**](PermissionsApi.md#get_available_actions_for_resource) | **GET** /permissions/resources/{resource} | Retrieves all the available actions for the specified resource.
[**get_available_resources**](PermissionsApi.md#get_available_resources) | **GET** /permissions/resources | Retrieves all available resource.
[**get_permission_by_id**](PermissionsApi.md#get_permission_by_id) | **GET** /permissions/{permission-ID} | Retrieves a single permission, specified by the ID parameter.
[**revoke_permission**](PermissionsApi.md#revoke_permission) | **DELETE** /permissions/{permission-ID} | Revokes a permission


# **create_permission**
> BFPermissionPagedMetadata create_permission(permission_request)

Create a new permission.

{\"nickname\":\"Create a new permission\",\"request\":\"createPermissionRequest.html\",\"response\":\"createPermissionResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PermissionsApi.new

permission_request = Bfwd::BillingEntityBase.new # BillingEntityBase | 


begin
  #Create a new permission.
  result = api_instance.create_permission(permission_request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PermissionsApi->create_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_request** | [**BillingEntityBase**](BillingEntityBase.md)|  | 

### Return type

[**BFPermissionPagedMetadata**](BFPermissionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_permissions**
> BFPermissionPagedMetadata get_all_permissions(opts)

Retrieves a collection of all permissions. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve all permissions\",\"response\":\"getPermissionAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PermissionsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of all permissions. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_permissions(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PermissionsApi->get_all_permissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**BFPermissionPagedMetadata**](BFPermissionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_available_actions_for_resource**
> PermissionActionEntityPagedMetadata get_available_actions_for_resource(resource, opts)

Retrieves all the available actions for the specified resource.

{\"nickname\":\"Retrieve available actions\",\"response\":\"getAvailableActions.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PermissionsApi.new

resource = "resource_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves all the available actions for the specified resource.
  result = api_instance.get_available_actions_for_resource(resource, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PermissionsApi->get_available_actions_for_resource: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PermissionActionEntityPagedMetadata**](PermissionActionEntityPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_available_resources**
> PermissionResourceEntityPagedMetadata get_available_resources(opts)

Retrieves all available resource.

{\"nickname\":\"Retrieve available resources\",\"response\":\"getAvailableResources.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PermissionsApi.new

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieves all available resource.
  result = api_instance.get_available_resources(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PermissionsApi->get_available_resources: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**PermissionResourceEntityPagedMetadata**](PermissionResourceEntityPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_permission_by_id**
> BFPermissionPagedMetadata get_permission_by_id(permission_id, opts)

Retrieves a single permission, specified by the ID parameter.

{\"nickname\":\"Retrieve a permission\",\"response\":\"getPermissionByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PermissionsApi.new

permission_id = "permission_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a single permission, specified by the ID parameter.
  result = api_instance.get_permission_by_id(permission_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PermissionsApi->get_permission_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**BFPermissionPagedMetadata**](BFPermissionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **revoke_permission**
> BFPermissionPagedMetadata revoke_permission(permission_id, opts)

Revokes a permission

{\"nickname\":\"Revoke permission\",\"response\":\"revokePermission.html\",\"request\":\"revokePErmissionRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::PermissionsApi.new

permission_id = "permission_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Revokes a permission
  result = api_instance.revoke_permission(permission_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling PermissionsApi->revoke_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**BFPermissionPagedMetadata**](BFPermissionPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



