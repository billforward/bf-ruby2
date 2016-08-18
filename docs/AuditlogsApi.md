# BillForward::AuditlogsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_audit_entries**](AuditlogsApi.md#get_all_audit_entries) | **GET** /audit-logs | Returns a collection of all audit-log objects. By default 10 values are returned. Records are returned in natural order.
[**get_audit_entries_by_created_date**](AuditlogsApi.md#get_audit_entries_by_created_date) | **GET** /audit-logs/created/{lower-threshold}/{upper-threshold} | Returns a collection of audit-log objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_audit_entry_by_entity_id**](AuditlogsApi.md#get_audit_entry_by_entity_id) | **GET** /audit-logs/entity/{entity-ID} | Returns a collection of audit-log entries, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_audit_entry_by_entity_type**](AuditlogsApi.md#get_audit_entry_by_entity_type) | **GET** /audit-logs/entity-type/{entity-type} | Returns a collection of audit-log entries, specified by the entity-type parameter. By default 10 values are returned. Records are returned in natural order.
[**get_audit_entry_by_id**](AuditlogsApi.md#get_audit_entry_by_id) | **GET** /audit-logs/{audit-ID} | Returns a single audit-log entry, specified by the audit-ID parameter.


# **get_all_audit_entries**
> AuditEntryPagedMetadata get_all_audit_entries(opts)

Returns a collection of all audit-log objects. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all\",\"response\":\"getAuditAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AuditlogsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first audit-log entry to return.
  records: 10, # Integer | The maximum number of audit-log entry to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all audit-log objects. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_audit_entries(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AuditlogsApi->get_all_audit_entries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first audit-log entry to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of audit-log entry to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**AuditEntryPagedMetadata**](AuditEntryPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_audit_entries_by_created_date**
> AuditEntryPagedMetadata get_audit_entries_by_created_date(lower_threshold, upper_threshold, opts)

Returns a collection of audit-log objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by created time\",\"response\":\"getAuditByCreated.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AuditlogsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first audit-log entry to return.
  records: 10, # Integer | The maximum number of audit-log entry to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of audit-log objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_audit_entries_by_created_date(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AuditlogsApi->get_audit_entries_by_created_date: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first audit-log entry to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of audit-log entry to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**AuditEntryPagedMetadata**](AuditEntryPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_audit_entry_by_entity_id**
> AuditEntryPagedMetadata get_audit_entry_by_entity_id(entity_id, opts)

Returns a collection of audit-log entries, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by entity-ID\",\"response\":\"getAuditByEntityID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AuditlogsApi.new

entity_id = "entity_id_example" # String | The string ID of the entity whose changes are documented by the audit log.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first account to return.
  records: 10, # Integer | The maximum number of accounts to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of audit-log entries, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_audit_entry_by_entity_id(entity_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AuditlogsApi->get_audit_entry_by_entity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**| The string ID of the entity whose changes are documented by the audit log. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first account to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of accounts to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**AuditEntryPagedMetadata**](AuditEntryPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_audit_entry_by_entity_type**
> AuditEntryPagedMetadata get_audit_entry_by_entity_type(entity_type, opts)

Returns a collection of audit-log entries, specified by the entity-type parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by entity type\",\"response\":\"getAuditByEntityType.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AuditlogsApi.new

entity_type = "entity_type_example" # String | The type of the entity whose changes are documented by the audit log.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first account to return.
  records: 10, # Integer | The maximum number of accounts to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of audit-log entries, specified by the entity-type parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_audit_entry_by_entity_type(entity_type, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AuditlogsApi->get_audit_entry_by_entity_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | **String**| The type of the entity whose changes are documented by the audit log. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first account to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of accounts to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**AuditEntryPagedMetadata**](AuditEntryPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_audit_entry_by_id**
> AuditEntryPagedMetadata get_audit_entry_by_id(audit_id, opts)

Returns a single audit-log entry, specified by the audit-ID parameter.

{\"nickname\":\"Retrieve by id\",\"response\":\"getAuditByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AuditlogsApi.new

audit_id = "audit_id_example" # String | The string ID of the audit-log entry.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls. Multiple organization-IDs may be specified by repeated use of the query parameter. Example: ...&organizations=org1&organizations=org2
}

begin
  #Returns a single audit-log entry, specified by the audit-ID parameter.
  result = api_instance.get_audit_entry_by_id(audit_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AuditlogsApi->get_audit_entry_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audit_id** | **String**| The string ID of the audit-log entry. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. Multiple organization-IDs may be specified by repeated use of the query parameter. Example: ...&amp;organizations&#x3D;org1&amp;organizations&#x3D;org2 | [optional] 

### Return type

[**AuditEntryPagedMetadata**](AuditEntryPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



