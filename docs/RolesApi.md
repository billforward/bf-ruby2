# BillForward::RolesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_role**](RolesApi.md#create_role) | **POST** /roles | Create a new role.
[**get_all_roles**](RolesApi.md#get_all_roles) | **GET** /roles | Retrieves a collection of all roles. By default 10 values are returned. Records are returned in natural order.
[**get_role_by_id**](RolesApi.md#get_role_by_id) | **GET** /roles/{role} | Retrieves a single role, specified by the ID parameter.
[**remove_permission_from_role**](RolesApi.md#remove_permission_from_role) | **DELETE** /roles/{role}/permission/{resource}/{action} | Revokes a particular permission
[**revoke_role**](RolesApi.md#revoke_role) | **DELETE** /roles/{role} | Revokes a role
[**update_role**](RolesApi.md#update_role) | **PUT** /roles | Update a role.


# **create_role**
> RolePagedMetadata create_role(role_request)

Create a new role.

{\"nickname\":\"Create a new role\",\"request\":\"createRoleRequest.html\",\"response\":\"createRoleResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::RolesApi.new

role_request = BillForward::BillingEntityBase.new # BillingEntityBase | 


begin
  #Create a new role.
  result = api_instance.create_role(role_request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling RolesApi->create_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_request** | [**BillingEntityBase**](BillingEntityBase.md)|  | 

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_roles**
> RolePagedMetadata get_all_roles(opts)

Retrieves a collection of all roles. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve all roles\",\"response\":\"getRoleAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::RolesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | 
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of all roles. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_roles(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling RolesApi->get_all_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_role_by_id**
> RolePagedMetadata get_role_by_id(role, opts)

Retrieves a single role, specified by the ID parameter.

{\"nickname\":\"Retrieve a role\",\"response\":\"getRoleByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::RolesApi.new

role = "role_example" # String | ID or name of the role.

opts = { 
  organizations: ["organizations_example"], # Array<String> | 
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a single role, specified by the ID parameter.
  result = api_instance.get_role_by_id(role, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling RolesApi->get_role_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| ID or name of the role. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **remove_permission_from_role**
> RolePagedMetadata remove_permission_from_role(role, resource, action, opts)

Revokes a particular permission

{\"nickname\":\"Remove Permission from role\",\"response\":\"removePermissionFromGroup.html\",\"request\":\"removePermissionFromGroupRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::RolesApi.new

role = "role_example" # String | ID or name of the role.

resource = "resource_example" # String | 

action = "action_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | 
}

begin
  #Revokes a particular permission
  result = api_instance.remove_permission_from_role(role, resource, action, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling RolesApi->remove_permission_from_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| ID or name of the role. | 
 **resource** | **String**|  | 
 **action** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **revoke_role**
> RolePagedMetadata revoke_role(role, opts)

Revokes a role

{\"nickname\":\"Revoke role\",\"response\":\"revokeRole.html\",\"request\":\"revokeRoleRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::RolesApi.new

role = "role_example" # String | ID or name of the role.

opts = { 
  organizations: ["organizations_example"] # Array<String> | 
}

begin
  #Revokes a role
  result = api_instance.revoke_role(role, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling RolesApi->revoke_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| ID or name of the role. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_role**
> RolePagedMetadata update_role(role_request)

Update a role.

{\"nickname\":\"Update a role\",\"request\":\"updateRoleRequest.html\",\"response\":\"updateRoleResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::RolesApi.new

role_request = BillForward::UpdateRoleRequest.new # UpdateRoleRequest | 


begin
  #Update a role.
  result = api_instance.update_role(role_request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling RolesApi->update_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_request** | [**UpdateRoleRequest**](UpdateRoleRequest.md)|  | 

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



