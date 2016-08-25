# Bfwd::UsersApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /users | Create a user.
[**create_user_login**](UsersApi.md#create_user_login) | **POST** /users/create-user-login | Create a user.
[**get_all_users**](UsersApi.md#get_all_users) | **GET** /users | Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
[**get_user_by_id**](UsersApi.md#get_user_by_id) | **GET** /users/{user-ID} | Returns a single User, specified by the ID parameter.
[**get_user_by_password_reset_code**](UsersApi.md#get_user_by_password_reset_code) | **GET** /users/password-reset-code/{password-reset-code} | Returns a single User, specified by the password-reset-code parameter.
[**get_user_by_sms_password_reset_code**](UsersApi.md#get_user_by_sms_password_reset_code) | **GET** /users/sms-password-reset-code/{sms-password-reset-code} | Returns a single User, specified by the sms-password-reset-code parameter.
[**get_user_by_username**](UsersApi.md#get_user_by_username) | **GET** /users/username/{username} | Returns a single User, specified by the username parameter, this is by default the e-mail address of the user.
[**reset_user_password**](UsersApi.md#reset_user_password) | **POST** /users/password-reset | Create a password reset request.
[**retire_user**](UsersApi.md#retire_user) | **DELETE** /users/{user-ID} | Retires the user with the specified user-ID.
[**update_user**](UsersApi.md#update_user) | **PUT** /users | Update a user.
[**update_user_password**](UsersApi.md#update_user_password) | **POST** /users/password-update | Update a user&#39;s password.


# **create_user**
> UserPagedMetadata create_user(user)

Create a user.

{\"nickname\":\"Create a new user\",\"request\":\"createUserRequest.html\",\"response\":\"createUserResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

user = Bfwd::User.new # User | The user object to be created.


begin
  #Create a user.
  result = api_instance.create_user(user)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| The user object to be created. | 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **create_user_login**
> UserCreationResponsePagedMetadata create_user_login(user)

Create a user.

{\"nickname\":\"Create a new user with login\",\"request\":\"createUserWithLoginRequest.html\",\"response\":\"createUserWithLoginResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

user = Bfwd::UserCreationRequest.new # UserCreationRequest | The user object to be created.


begin
  #Create a user.
  result = api_instance.create_user_login(user)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->create_user_login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**UserCreationRequest**](UserCreationRequest.md)| The user object to be created. | 

### Return type

[**UserCreationResponsePagedMetadata**](UserCreationResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **get_all_users**
> UserPagedMetadata get_all_users(opts)

Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.

{ \"nickname\" : \"Get all users\",\"response\" : \"getUserAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first user to return.
  records: 10, # Integer | The maximum number of users to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_users(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->get_all_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first user to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of users to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_user_by_id**
> UserPagedMetadata get_user_by_id(user_id, opts)

Returns a single User, specified by the ID parameter.

{ \"nickname\" : \"Retrieve an existing user\",\"response\" : \"getUserByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

user_id = "user_id_example" # String | ID of the User.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization -IDs used to restrict the scope of API calls.
}

begin
  #Returns a single User, specified by the ID parameter.
  result = api_instance.get_user_by_id(user_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->get_user_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| ID of the User. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization -IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_user_by_password_reset_code**
> UserPagedMetadata get_user_by_password_reset_code(password_reset_code, opts)

Returns a single User, specified by the password-reset-code parameter.

{ \"nickname\" : \"Retrieve by reset code\",\"response\" : \"getUserByPasswordResetCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

password_reset_code = "password_reset_code_example" # String | The unique password reset code of the User.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single User, specified by the password-reset-code parameter.
  result = api_instance.get_user_by_password_reset_code(password_reset_code, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->get_user_by_password_reset_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_reset_code** | **String**| The unique password reset code of the User. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_user_by_sms_password_reset_code**
> UserPagedMetadata get_user_by_sms_password_reset_code(sms_password_reset_code, opts)

Returns a single User, specified by the sms-password-reset-code parameter.

{ \"nickname\" : \"Retrieve by sms reset code\",\"response\" : \"getUserBySMSPasswordResetCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

sms_password_reset_code = "sms_password_reset_code_example" # String | The unique SMS password reset code of the User.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single User, specified by the sms-password-reset-code parameter.
  result = api_instance.get_user_by_sms_password_reset_code(sms_password_reset_code, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->get_user_by_sms_password_reset_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_password_reset_code** | **String**| The unique SMS password reset code of the User. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_user_by_username**
> UserPagedMetadata get_user_by_username(username, opts)

Returns a single User, specified by the username parameter, this is by default the e-mail address of the user.

{ \"nickname\" : \"Retrieve by username\",\"response\" : \"getUserByUsername.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

username = "username_example" # String | The unique username of the User.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single User, specified by the username parameter, this is by default the e-mail address of the user.
  result = api_instance.get_user_by_username(username, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->get_user_by_username: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The unique username of the User. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **reset_user_password**
> UserPagedMetadata reset_user_password(request)

Create a password reset request.

{\"nickname\":\"Create a password reset request\",\"request\":\"PasswordResetRequest.html\",\"response\":\"PasswordResetResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

request = Bfwd::PasswordResetRequest.new # PasswordResetRequest | 


begin
  #Create a password reset request.
  result = api_instance.reset_user_password(request)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->reset_user_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PasswordResetRequest**](PasswordResetRequest.md)|  | 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **retire_user**
> UserPagedMetadata retire_user(user_id, organizations)

Retires the user with the specified user-ID.

{ \"nickname\" : \"Delete a user\",\"response\" : \"deleteUser.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

user_id = "user_id_example" # String | ID of the User.

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Retires the user with the specified user-ID.
  result = api_instance.retire_user(user_id, organizations)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->retire_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| ID of the User. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_user**
> UserPagedMetadata update_user(user)

Update a user.

{ \"nickname\" : \"Update a user\", \"request\" : \"updateUserRequest.html\" ,\"response\" : \"updateUserResponse.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

user = Bfwd::User.new # User | The user object to be updated.


begin
  #Update a user.
  result = api_instance.update_user(user)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| The user object to be updated. | 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **update_user_password**
> UserPagedMetadata update_user_password(password_reset)

Update a user's password.

{ \"nickname\" : \"Update password using reset code\", \"request\" : \"updateUserPassword.html\" ,\"response\" : \"updateUserPasswordResponse.html\" }

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::UsersApi.new

password_reset = Bfwd::BillingEntityBase.new # BillingEntityBase | The password reset object.


begin
  #Update a user's password.
  result = api_instance.update_user_password(password_reset)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling UsersApi->update_user_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_reset** | [**BillingEntityBase**](BillingEntityBase.md)| The password reset object. | 

### Return type

[**UserPagedMetadata**](UserPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



