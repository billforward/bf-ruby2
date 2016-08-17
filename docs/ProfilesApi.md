# BillForward::ProfilesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_profiles**](ProfilesApi.md#get_all_profiles) | **GET** /profiles | Returns a collection of all profiles. By default 10 values are returned. Records are returned in natural order
[**get_profile**](ProfilesApi.md#get_profile) | **GET** /profiles/{profile-ID} | Returns a single profile, specified by the ID parameter.
[**get_profile_by_account_id**](ProfilesApi.md#get_profile_by_account_id) | **GET** /profiles/account/{account-ID} | Returns a collection of profiles, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order
[**get_profile_by_email_address**](ProfilesApi.md#get_profile_by_email_address) | **GET** /profiles/email/{email} | Returns a single profile, specified by the email parameter.
[**update_profile**](ProfilesApi.md#update_profile) | **PUT** /profiles | Update a profile


# **get_all_profiles**
> ProfilePagedMetadata get_all_profiles(opts)

Returns a collection of all profiles. By default 10 values are returned. Records are returned in natural order

{\"nickname\":\"Get all profiles\",\"response\":\"getProfileAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ProfilesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organizations used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first profile to return.
  records: 10, # Integer | The maximum number of profiles to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of all profiles. By default 10 values are returned. Records are returned in natural order
  result = api_instance.get_all_profiles(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ProfilesApi->get_all_profiles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organizations used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first profile to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of profiles to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**ProfilePagedMetadata**](ProfilePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_profile**
> ProfilePagedMetadata get_profile(profile_id, opts)

Returns a single profile, specified by the ID parameter.

{\"nickname\":\"Retrieve an existing profile\",\"response\":\"getProfileByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ProfilesApi.new

profile_id = "profile_id_example" # String | ID of the Profile.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single profile, specified by the ID parameter.
  result = api_instance.get_profile(profile_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ProfilesApi->get_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profile_id** | **String**| ID of the Profile. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**ProfilePagedMetadata**](ProfilePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_profile_by_account_id**
> ProfilePagedMetadata get_profile_by_account_id(account_id, opts)

Returns a collection of profiles, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order

{\"nickname\":\"Retrieve by account\",\"response\":\"getProfileByAccountID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ProfilesApi.new

account_id = "account_id_example" # String | The account-ID of the profile.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organizations used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first profile to return.
  records: 10, # Integer | The maximum number of profiles to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of profiles, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order
  result = api_instance.get_profile_by_account_id(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ProfilesApi->get_profile_by_account_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The account-ID of the profile. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organizations used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first profile to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of profiles to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**ProfilePagedMetadata**](ProfilePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_profile_by_email_address**
> ProfilePagedMetadata get_profile_by_email_address(email, opts)

Returns a single profile, specified by the email parameter.

{\"nickname\":\"Retrieve by e-mail\",\"response\":\"getProfileByEmail.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ProfilesApi.new

email = "email_example" # String | The email address of the profile.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organizations used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first profile to return.
  records: 10, # Integer | The maximum number of profiles to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired profiles should be returned.
}

begin
  #Returns a single profile, specified by the email parameter.
  result = api_instance.get_profile_by_email_address(email, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ProfilesApi->get_profile_by_email_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| The email address of the profile. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organizations used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first profile to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of profiles to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired profiles should be returned. | [optional] [default to false]

### Return type

[**ProfilePagedMetadata**](ProfilePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_profile**
> ProfilePagedMetadata update_profile(request)

Update a profile

{\"nickname\":\"Update a profile\",\"request\":\"updateProfileRequest.html\",\"response\":\"updateProfileResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::ProfilesApi.new

request = BillForward::UpdateProfileRequest.new # UpdateProfileRequest | The profile object to be updated.


begin
  #Update a profile
  result = api_instance.update_profile(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling ProfilesApi->update_profile: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UpdateProfileRequest**](UpdateProfileRequest.md)| The profile object to be updated. | 

### Return type

[**ProfilePagedMetadata**](ProfilePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



