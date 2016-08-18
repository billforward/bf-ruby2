# BillForward::OrganizationsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_organization**](OrganizationsApi.md#create_organization) | **POST** /organizations | Create an organization.
[**get_all_my_organizations**](OrganizationsApi.md#get_all_my_organizations) | **GET** /organizations/mine | Returns a collection of all my asociated organizations. By default 10 values are returned. Records are returned in natural order.
[**get_all_organizations**](OrganizationsApi.md#get_all_organizations) | **GET** /organizations | Returns a collection of all organizations. By default 10 values are returned. Records are returned in natural order.
[**get_organization_by_customer_code**](OrganizationsApi.md#get_organization_by_customer_code) | **GET** /organizations/customer-code/{customer-code} | Returns a single organization, specified by the customer-code parameter.
[**get_organization_by_id**](OrganizationsApi.md#get_organization_by_id) | **GET** /organizations/{organization-ID} | Returns a single Organization, specified by the organization-ID parameter.
[**get_organization_by_name**](OrganizationsApi.md#get_organization_by_name) | **GET** /organizations/name/{name} | Returns a single Organization, specified by the name parameter.
[**update_organization**](OrganizationsApi.md#update_organization) | **PUT** /organizations | Update an organization.


# **create_organization**
> OrganizationPagedMetadata create_organization(organization)

Create an organization.

{\"nickname\":\"Create\",\"request\":\"createOrganizationRequest.html\",\"response\":\"createOrganizationResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::OrganizationsApi.new

organization = BillForward::Organization.new # Organization | The organization object to be updated.


begin
  #Create an organization.
  result = api_instance.create_organization(organization)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling OrganizationsApi->create_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md)| The organization object to be updated. | 

### Return type

[**OrganizationPagedMetadata**](OrganizationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_my_organizations**
> OrganizationPagedMetadata get_all_my_organizations(opts)

Returns a collection of all my asociated organizations. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get Mine\",\"response\":\"getOrganizationAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::OrganizationsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first organization to return.
  records: 10, # Integer | The maximum number of organizations to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all my asociated organizations. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_my_organizations(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling OrganizationsApi->get_all_my_organizations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first organization to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of organizations to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**OrganizationPagedMetadata**](OrganizationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_all_organizations**
> OrganizationPagedMetadata get_all_organizations(opts)

Returns a collection of all organizations. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get All\",\"response\":\"getOrganizationAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::OrganizationsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first organization to return.
  records: 10, # Integer | The maximum number of organizations to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all organizations. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_organizations(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling OrganizationsApi->get_all_organizations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first organization to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of organizations to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**OrganizationPagedMetadata**](OrganizationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_organization_by_customer_code**
> OrganizationPagedMetadata get_organization_by_customer_code(customer_code, opts)

Returns a single organization, specified by the customer-code parameter.

{\"nickname\":\"Retrieve by Customer-Code\",\"response\":\"getOrganizationByCustomer.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::OrganizationsApi.new

customer_code = "customer_code_example" # String | The unique customer code of the organization.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single organization, specified by the customer-code parameter.
  result = api_instance.get_organization_by_customer_code(customer_code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling OrganizationsApi->get_organization_by_customer_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_code** | **String**| The unique customer code of the organization. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**OrganizationPagedMetadata**](OrganizationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_organization_by_id**
> OrganizationPagedMetadata get_organization_by_id(organization_id, opts)

Returns a single Organization, specified by the organization-ID parameter.

{\"nickname\":\"Retrieve by id\",\"response\":\"getOrganizationByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::OrganizationsApi.new

organization_id = "organization_id_example" # String | ID of the organization.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single Organization, specified by the organization-ID parameter.
  result = api_instance.get_organization_by_id(organization_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling OrganizationsApi->get_organization_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | **String**| ID of the organization. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**OrganizationPagedMetadata**](OrganizationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_organization_by_name**
> OrganizationPagedMetadata get_organization_by_name(name, opts)

Returns a single Organization, specified by the name parameter.

{\"nickname\":\"Retrieve by Name\",\"response\":\"getOrganizationByName.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::OrganizationsApi.new

name = "name_example" # String | The name of the Organization.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single Organization, specified by the name parameter.
  result = api_instance.get_organization_by_name(name, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling OrganizationsApi->get_organization_by_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the Organization. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**OrganizationPagedMetadata**](OrganizationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_organization**
> OrganizationPagedMetadata update_organization(organization)

Update an organization.

{\"nickname\":\"Updated\",\"request\":\"updateOrganizationRequest.html\",\"response\":\"updateOrganizationResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::OrganizationsApi.new

organization = BillForward::Organization.new # Organization | The organization object to be updated.


begin
  #Update an organization.
  result = api_instance.update_organization(organization)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling OrganizationsApi->update_organization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md)| The organization object to be updated. | 

### Return type

[**OrganizationPagedMetadata**](OrganizationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



