# BillForward::AccountsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_charge_to_account**](AccountsApi.md#add_charge_to_account) | **POST** /accounts/{account-ID}/invoice | Create a manual invoice.
[**add_credit_note_to_account**](AccountsApi.md#add_credit_note_to_account) | **POST** /accounts/{account-ID}/credit | Creates a credit-note which may be used by any subscription of this account.
[**add_permission_to_account**](AccountsApi.md#add_permission_to_account) | **POST** /accounts/{account-ID}/roles/{role} | Add a role to the account
[**create_account**](AccountsApi.md#create_account) | **POST** /accounts | Create an Account.
[**delete_account**](AccountsApi.md#delete_account) | **DELETE** /accounts/{account-ID} | Delete the account specified by the account-ID parameter.
[**delete_metadata_for_account**](AccountsApi.md#delete_metadata_for_account) | **DELETE** /accounts/{account-ID}/metadata | Remove any associated metadata.
[**get_account_by_id**](AccountsApi.md#get_account_by_id) | **GET** /accounts/{account-ID} | Returns a single account, specified by the account-ID parameter.
[**get_accounts_by_created**](AccountsApi.md#get_accounts_by_created) | **GET** /accounts/created/{lower-threshold}/{upper-threshold} | Returns a collection of account objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_accounts_by_updated**](AccountsApi.md#get_accounts_by_updated) | **GET** /accounts/updated/{lower-threshold}/{upper-threshold} | Returns a collection of account objects with updated times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
[**get_accounts_by_user_id**](AccountsApi.md#get_accounts_by_user_id) | **GET** /accounts/user/{user-ID} | Returns a collection of accounts, specified by the user-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**get_all_accounts**](AccountsApi.md#get_all_accounts) | **GET** /accounts | Returns a collection of all account objects. By default 10 values are returned. Records are returned in natural order.
[**get_available_credit_on_account**](AccountsApi.md#get_available_credit_on_account) | **GET** /accounts/{account-ID}/credit | Returns all available credit-notes for the specified account. By default 10 values are returned. Records are returned in natural order.
[**get_metadata_for_account**](AccountsApi.md#get_metadata_for_account) | **GET** /accounts/{account-ID}/metadata | Retrieve any associated metadata.
[**get_permissions_on_account**](AccountsApi.md#get_permissions_on_account) | **GET** /accounts/{account-ID}/roles | Retrieves a collection of roles, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
[**remove_credit_from_account**](AccountsApi.md#remove_credit_from_account) | **DELETE** /accounts/{account-ID}/credit/{value} | Decrease the amount of credit by the value specified or entirely if no value provided.
[**remove_permission_from_account**](AccountsApi.md#remove_permission_from_account) | **DELETE** /accounts/{account-ID}/roles/{role} | Revoke the specified role.
[**set_metadata_for_account**](AccountsApi.md#set_metadata_for_account) | **POST** /accounts/{account-ID}/metadata | Remove any existing metadata keys and create the provided data.
[**update_account**](AccountsApi.md#update_account) | **PUT** /accounts | Update an Account.
[**upsert_metadata_for_account**](AccountsApi.md#upsert_metadata_for_account) | **PUT** /accounts/{account-ID}/metadata | Update any existing metadata key-values and insert any new key-values, no keys will be removed.


# **add_charge_to_account**
> AddChargeToAccountResponsePagedMetadata add_charge_to_account(account_id, request)

Create a manual invoice.

{\"nickname\":\"Create a manual invoice\",\"request\":\"addChargeToAccountRequest.html\",\"response\":\"addChargeToAccountResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | ID of the account.

request = BillForward::AddChargesToAccountAPIRequest.new # AddChargesToAccountAPIRequest | The charge request


begin
  #Create a manual invoice.
  result = api_instance.add_charge_to_account(account_id, request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->add_charge_to_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the account. | 
 **request** | [**AddChargesToAccountAPIRequest**](AddChargesToAccountAPIRequest.md)| The charge request | 

### Return type

[**AddChargeToAccountResponsePagedMetadata**](AddChargeToAccountResponsePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **add_credit_note_to_account**
> CreditNotePagedMetadata add_credit_note_to_account(account_id, credit_note)

Creates a credit-note which may be used by any subscription of this account.

{\"nickname\":\"Add Credit\",\"request\":\"addCreditNoteToAccountRequest.html\", \"response\":\"addCreditNoteToAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | ID of the account.

credit_note = BillForward::CreditAccountRequest.new # CreditAccountRequest | The credit-note request


begin
  #Creates a credit-note which may be used by any subscription of this account.
  result = api_instance.add_credit_note_to_account(account_id, credit_note)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->add_credit_note_to_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the account. | 
 **credit_note** | [**CreditAccountRequest**](CreditAccountRequest.md)| The credit-note request | 

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **add_permission_to_account**
> RolePagedMetadata add_permission_to_account(account_id, role, opts)

Add a role to the account

{\"nickname\":\"Add Role\",\"response\":\"addRoleToAccountResponse.html\",\"request\":\"addRoleToAccountRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | ID of the account.

role = "role_example" # String | ID or name of the role.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Add a role to the account
  result = api_instance.add_permission_to_account(account_id, role, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->add_permission_to_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| ID of the account. | 
 **role** | **String**| ID or name of the role. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **create_account**
> AccountPagedMetadata create_account(request)

Create an Account.

{\"nickname\":\"Create a new account\",\"response\":\"createAccountResponse.html\",\"request\":\"createAccountRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

request = BillForward::CreateAccountRequest.new # CreateAccountRequest | The account object to be created.


begin
  #Create an Account.
  result = api_instance.create_account(request)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->create_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateAccountRequest**](CreateAccountRequest.md)| The account object to be created. | 

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_account**
> AccountPagedMetadata delete_account(account_id, delete_gateway_data, organizations)

Delete the account specified by the account-ID parameter.

{\"nickname\":\"Retire\",\"response\":\"deleteAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | 

delete_gateway_data = true # BOOLEAN | 

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Delete the account specified by the account-ID parameter.
  result = api_instance.delete_account(account_id, delete_gateway_data, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->delete_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **delete_gateway_data** | **BOOLEAN**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **delete_metadata_for_account**
> DynamicMetadata delete_metadata_for_account(account_id, opts)

Remove any associated metadata.

{\"nickname\":\"Clear metadata from account\",\"request\" :\"deleteAccountMetadataRequest.html\",\"response\":\"deleteAccountMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any associated metadata.
  result = api_instance.delete_metadata_for_account(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->delete_metadata_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_account_by_id**
> AccountPagedMetadata get_account_by_id(account_id, opts)

Returns a single account, specified by the account-ID parameter.

{\"nickname\":\"Retrieve an existing account\",\"response\":\"getAccountByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | 
}

begin
  #Returns a single account, specified by the account-ID parameter.
  result = api_instance.get_account_by_id(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_accounts_by_created**
> AccountPagedMetadata get_accounts_by_created(lower_threshold, upper_threshold, opts)

Returns a collection of account objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by creation\",\"response\":\"getAccountByCreated.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of account objects with created times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_accounts_by_created(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts_by_created: #{e}"
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

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json; charset=utf-8



# **get_accounts_by_updated**
> AccountPagedMetadata get_accounts_by_updated(lower_threshold, upper_threshold, opts)

Returns a collection of account objects with updated times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by updated\",\"response\":\"getAccountByUpdated.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

lower_threshold = "lower_threshold_example" # String | The UTC DateTime specifying the start of the result period.

upper_threshold = "upper_threshold_example" # String | The UTC DateTime specifying the end of the result period.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of account objects with updated times within the period specified by the lower-threshold and upper-threshold parameters. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_accounts_by_updated(lower_threshold, upper_threshold, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts_by_updated: #{e}"
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

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json; charset=utf-8



# **get_accounts_by_user_id**
> AccountPagedMetadata get_accounts_by_user_id(user_id, opts)

Returns a collection of accounts, specified by the user-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by user\",\"response\":\"getAccountByUserID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

user_id = "user_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first account to return.
  records: 10, # Integer | The maximum number of accounts to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of accounts, specified by the user-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_accounts_by_user_id(user_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts_by_user_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first account to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of accounts to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_all_accounts**
> AccountPagedMetadata get_all_accounts(opts)

Returns a collection of all account objects. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all accounts\",\"response\":\"getAccountAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

opts = { 
  id: ["id_example"], # Array<String> | A list of account IDs used to filter the output.
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true, # BOOLEAN | Whether retired products should be returned.
  users_only: false, # BOOLEAN | Whether only accounts have a user should be returned.
  metadata: "metadata_example" # String | 
}

begin
  #Returns a collection of all account objects. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_accounts(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_all_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Array&lt;String&gt;**](String.md)| A list of account IDs used to filter the output. | [optional] 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]
 **users_only** | **BOOLEAN**| Whether only accounts have a user should be returned. | [optional] [default to false]
 **metadata** | **String**|  | [optional] 

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json; charset=utf-8



# **get_available_credit_on_account**
> CreditNotePagedMetadata get_available_credit_on_account(account_id, opts)

Returns all available credit-notes for the specified account. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get available credit\",\"response\":\"getAvailableCreditAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | The ID of the account

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Returns all available credit-notes for the specified account. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_available_credit_on_account(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_available_credit_on_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**| The ID of the account | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_metadata_for_account**
> DynamicMetadata get_metadata_for_account(account_id, opts)

Retrieve any associated metadata.

{\"nickname\":\"Retrieve metadata on account\",\"request\":\"getAccountMetadataRequest.html\",\"response\":\"getAccountMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieve any associated metadata.
  result = api_instance.get_metadata_for_account(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_metadata_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_permissions_on_account**
> RolePagedMetadata get_permissions_on_account(account_id, opts)

Retrieves a collection of roles, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"List roles on account\",\"response\":\"getRoleByAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first subscription to return.
  records: 10, # Integer | The maximum number of subscriptions to return.
  order_by: "id", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired subscriptions should be returned.
}

begin
  #Retrieves a collection of roles, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_permissions_on_account(account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->get_permissions_on_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first subscription to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of subscriptions to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to id]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired subscriptions should be returned. | [optional] [default to false]

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **remove_credit_from_account**
> CreditNotePagedMetadata remove_credit_from_account(account_id, value, opts)

Decrease the amount of credit by the value specified or entirely if no value provided.

{\"nickname\":\"Remove Credit\",\"response\":\"removeCreditForAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | 

value = "value_example" # String | <p>Either a credit note ID or a currency value.</p><p>If a credit note ID is provided any remaining credit will be removed from this credit note.</p><p>If a currency value is provided the format should be in the form of valueCurrency, where value is the value to remove. The currency should be an ISO 4217 Currency Code. For example setting the value as 10USD will reduce the credit on this account by $10 or 9.86USD would reduce the credit by $9.86. Note: the value will be reduced from any credit notes with available balance.</p>

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Decrease the amount of credit by the value specified or entirely if no value provided.
  result = api_instance.remove_credit_from_account(account_id, value, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->remove_credit_from_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **value** | **String**| &lt;p&gt;Either a credit note ID or a currency value.&lt;/p&gt;&lt;p&gt;If a credit note ID is provided any remaining credit will be removed from this credit note.&lt;/p&gt;&lt;p&gt;If a currency value is provided the format should be in the form of valueCurrency, where value is the value to remove. The currency should be an ISO 4217 Currency Code. For example setting the value as 10USD will reduce the credit on this account by $10 or 9.86USD would reduce the credit by $9.86. Note: the value will be reduced from any credit notes with available balance.&lt;/p&gt; | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CreditNotePagedMetadata**](CreditNotePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **remove_permission_from_account**
> RolePagedMetadata remove_permission_from_account(account_id, role, opts)

Revoke the specified role.

{\"nickname\":\"Remove Role\",\"response\":\"removeRoleFromAccount.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account_id = "account_id_example" # String | 

role = "role_example" # String | ID or name of the role.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Revoke the specified role.
  result = api_instance.remove_permission_from_account(account_id, role, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->remove_permission_from_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **role** | **String**| ID or name of the role. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**RolePagedMetadata**](RolePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **set_metadata_for_account**
> DynamicMetadata set_metadata_for_account(metadata, account_id, opts)

Remove any existing metadata keys and create the provided data.

{\"nickname\":\"Set metadata on account\",\"request\":\"setAccountMetadataRequest.html\",\"response\":\"setAccountMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any existing metadata keys and create the provided data.
  result = api_instance.set_metadata_for_account(metadata, account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->set_metadata_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **update_account**
> AccountPagedMetadata update_account(account)

Update an Account.

{\"nickname\":\"Update an account\",\"response\":\"updateAccountResponse.html\",\"request\":\"updateAccountRequest.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

account = BillForward::Account.new # Account | The account object to be created.


begin
  #Update an Account.
  result = api_instance.update_account(account)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->update_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**Account**](Account.md)| The account object to be created. | 

### Return type

[**AccountPagedMetadata**](AccountPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **upsert_metadata_for_account**
> DynamicMetadata upsert_metadata_for_account(metadata, account_id, opts)

Update any existing metadata key-values and insert any new key-values, no keys will be removed.

{\"nickname\":\"Upsert metadata on account\",\"request\":\"upsertAccountMetadataRequest.html\",\"response\":\"upsertAccountMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::AccountsApi.new

metadata = BillForward::DynamicMetadata.new # DynamicMetadata | 

account_id = "account_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Update any existing metadata key-values and insert any new key-values, no keys will be removed.
  result = api_instance.upsert_metadata_for_account(metadata, account_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling AccountsApi->upsert_metadata_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **account_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



