# BillForward::NotificationsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ack_notification**](NotificationsApi.md#ack_notification) | **GET** /notifications/ack/{notification-ID} | Acknowledge a newly recevied notification.
[**get_all_notifications**](NotificationsApi.md#get_all_notifications) | **GET** /notifications | Returns a collection of all notifications. By default 10 values are returned. Records are returned in natural order.
[**get_notification_by_entity_id**](NotificationsApi.md#get_notification_by_entity_id) | **GET** /notifications/entity-ID/{entity-ID} | Returns a collection of notifications, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_notification_by_id**](NotificationsApi.md#get_notification_by_id) | **GET** /notifications/{notification-ID} | Returns a single notification, specified by the notification-ID parameter.
[**get_notifications_by_webhook_id**](NotificationsApi.md#get_notifications_by_webhook_id) | **GET** /notifications/{lower-threshold}/{upper-threshold}/{webhookID} | Returns a collection of notification objects with created times within the period specified by the lower-threshold and upper-threshold parameters for the given webhook id. By default 10 values are returned. Records are returned in natural order.
[**get_notifications_within_date_range**](NotificationsApi.md#get_notifications_within_date_range) | **GET** /notifications/{lower-threshold}/{upper-threshold} | Returns a collection of notification objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.


# **ack_notification**
> NotificationPagedMetadata ack_notification(notification_id, opts)

Acknowledge a newly recevied notification.

{\"nickname\":\"Acknowledge\",\"response\":\"getNotificationACK.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::NotificationsApi.new

notification_id = "notification_id_example" # String | ID of the notification.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Acknowledge a newly recevied notification.
  result = api_instance.ack_notification(notification_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling NotificationsApi->ack_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_id** | **String**| ID of the notification. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**NotificationPagedMetadata**](NotificationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_all_notifications**
> NotificationPagedMetadata get_all_notifications(opts)

Returns a collection of all notifications. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all notifications\",\"response\":\"getNotificationAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::NotificationsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first Subscription to return.
  records: 10, # Integer | The maximum number of Subscriptions to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all notifications. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_notifications(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling NotificationsApi->get_all_notifications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first Subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of Subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**NotificationPagedMetadata**](NotificationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_notification_by_entity_id**
> NotificationPagedMetadata get_notification_by_entity_id(entity_id, opts)

Returns a collection of notifications, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by entity\",\"response\":\"getNotificationBySubscriptionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::NotificationsApi.new

entity_id = "entity_id_example" # String | The string entity-ID of the notification.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first notification to return.
  records: 10, # Integer | The maximum number of notifications to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of notifications, specified by the entity-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_notification_by_entity_id(entity_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling NotificationsApi->get_notification_by_entity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**| The string entity-ID of the notification. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first notification to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of notifications to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**NotificationPagedMetadata**](NotificationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_notification_by_id**
> NotificationPagedMetadata get_notification_by_id(notification_id, opts)

Returns a single notification, specified by the notification-ID parameter.

{\"nickname\":\"Retrieve an existing notification\",\"response\":\"getNotificationByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::NotificationsApi.new

notification_id = "notification_id_example" # String | ID of the notification.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single notification, specified by the notification-ID parameter.
  result = api_instance.get_notification_by_id(notification_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling NotificationsApi->get_notification_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_id** | **String**| ID of the notification. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**NotificationPagedMetadata**](NotificationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_notifications_by_webhook_id**
> NotificationPagedMetadata get_notifications_by_webhook_id(lower_threshold, upper_threshold, webhook_id, opts)

Returns a collection of notification objects with created times within the period specified by the lower-threshold and upper-threshold parameters for the given webhook id. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by creation\",\"response\":\"getNotificationByCreated.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::NotificationsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

webhook_id = "webhook_id_example" # String | The id of the webhook.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true, # BOOLEAN | Whether retired products should be returned.
  safety_margin: 10 # Integer | How many seconds behind server-time upperThreshold may approach.
}

begin
  #Returns a collection of notification objects with created times within the period specified by the lower-threshold and upper-threshold parameters for the given webhook id. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_notifications_by_webhook_id(lower_threshold, upper_threshold, webhook_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling NotificationsApi->get_notifications_by_webhook_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **webhook_id** | **String**| The id of the webhook. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]
 **safety_margin** | **Integer**| How many seconds behind server-time upperThreshold may approach. | [optional] [default to 10]

### Return type

[**NotificationPagedMetadata**](NotificationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_notifications_within_date_range**
> NotificationPagedMetadata get_notifications_within_date_range(lower_threshold, upper_threshold, opts)

Returns a collection of notification objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by creation\",\"response\":\"getNotificationByCreated.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::NotificationsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true, # BOOLEAN | Whether retired products should be returned.
  safety_margin: 10 # Integer | How many seconds behind server-time upperThreshold may approach.
}

begin
  #Returns a collection of notification objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_notifications_within_date_range(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling NotificationsApi->get_notifications_within_date_range: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lower_threshold** | **String**| The UTC DateTime specifying the start of the result period. | 
 **upper_threshold** | **String**| The UTC DateTime specifying the end of the result period. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]
 **safety_margin** | **Integer**| How many seconds behind server-time upperThreshold may approach. | [optional] [default to 10]

### Return type

[**NotificationPagedMetadata**](NotificationPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



