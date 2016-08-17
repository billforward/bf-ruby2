# BillForward::TaxationstrategiesApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_taxation_strategy**](TaxationstrategiesApi.md#create_taxation_strategy) | **POST** /taxation-strategies | &lt;p&gt;Add a new tax or schedule changes in an existing tax.&lt;/p&gt;&lt;p&gt;Add a new tax by providing the location and tax percentage. To schedule a tax change specify the ID of the current Tax. A new version of the will be created &lt;i&gt;validFrom&lt;/i&gt; the specified date, the existing tax &lt;i&gt;validTill&lt;/i&gt; the start of this new tax.&lt;/p&gt;
[**get_all_taxation_strategies**](TaxationstrategiesApi.md#get_all_taxation_strategies) | **GET** /taxation-strategies | Returns a collection of all taxation-strategies. By default 10 values are returned. Records are returned in natural order.
[**get_taxation_strategy_by_consistent_id**](TaxationstrategiesApi.md#get_taxation_strategy_by_consistent_id) | **GET** /taxation-strategies/{taxation-strategy-ID} | Returns the tax currently being applied for the taxation-strategy-ID. To return schedule or historic tax changes the include_retired query parameter should be set to true.
[**get_taxation_strategy_by_country**](TaxationstrategiesApi.md#get_taxation_strategy_by_country) | **GET** /taxation-strategies/country/{country} | Returns a collection of taxation-strategies, specified by the country parameter. By default 10 values are returned. Records are returned in natural order. To return schedule or historic tax changes the include_retired query parameter should be set to true.
[**get_taxation_strategy_by_currency**](TaxationstrategiesApi.md#get_taxation_strategy_by_currency) | **GET** /taxation-strategies/currency/{currency} | Returns a collection of taxation-strategies, specified by the currency parameter. By default 10 values are returned. Records are returned in natural order.
[**get_taxation_strategy_by_province**](TaxationstrategiesApi.md#get_taxation_strategy_by_province) | **GET** /taxation-strategies/province/{province} | Returns a collection of taxation-strategies, specified by the province parameter. By default 10 values are returned. Records are returned in natural order.
[**get_taxation_strategy_by_version_id**](TaxationstrategiesApi.md#get_taxation_strategy_by_version_id) | **GET** /taxation-strategies/version/{version-ID} | Returns a single taxation-strategy, specified by the taxation-strategy-ID parameter.
[**retire_taxation_strategy**](TaxationstrategiesApi.md#retire_taxation_strategy) | **DELETE** /taxation-strategies/version/{version-ID} | Retires the taxation-strategy specified by taxation-strategy-ID parameter. Only the version of the tax which has an unbounded (null) validTill can be removed. Removing a tax change will make the previous tax come into effect. For example if you have a Tax in January and 5% and a new tax at 7% from February onwards, you can remove the February tax. Remove the February tax will re-instate the January tax.
[**update_taxation_strategy**](TaxationstrategiesApi.md#update_taxation_strategy) | **PUT** /taxation-strategies | Update a tax.


# **create_taxation_strategy**
> TaxationStrategyPagedMetadata create_taxation_strategy(taxation_strategy)

<p>Add a new tax or schedule changes in an existing tax.</p><p>Add a new tax by providing the location and tax percentage. To schedule a tax change specify the ID of the current Tax. A new version of the will be created <i>validFrom</i> the specified date, the existing tax <i>validTill</i> the start of this new tax.</p>

{\"nickname\":\"Create a tax\",\"request\":\"createTaxationStrategyRequest.html\",\"response\":\"createTaxationStrategyResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

taxation_strategy = BillForward::MutableBillingEntity.new # MutableBillingEntity | The taxation-strategy object to be updated.


begin
  #<p>Add a new tax or schedule changes in an existing tax.</p><p>Add a new tax by providing the location and tax percentage. To schedule a tax change specify the ID of the current Tax. A new version of the will be created <i>validFrom</i> the specified date, the existing tax <i>validTill</i> the start of this new tax.</p>
  result = api_instance.create_taxation_strategy(taxation_strategy)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->create_taxation_strategy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxation_strategy** | [**MutableBillingEntity**](MutableBillingEntity.md)| The taxation-strategy object to be updated. | 

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_taxation_strategies**
> TaxationStrategyPagedMetadata get_all_taxation_strategies(opts)

Returns a collection of all taxation-strategies. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all tax\",\"response\":\"getTaxationStrategyAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-strategy to return.
  records: 10, # Integer | The maximum number of taxation-strategies to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all taxation-strategies. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_taxation_strategies(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->get_all_taxation_strategies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-strategy to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-strategies to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_taxation_strategy_by_consistent_id**
> TaxationStrategyPagedMetadata get_taxation_strategy_by_consistent_id(taxation_strategy_id, opts)

Returns the tax currently being applied for the taxation-strategy-ID. To return schedule or historic tax changes the include_retired query parameter should be set to true.

{\"nickname\":\"Retrieve an existing tax \",\"response\":\"getTaxationStrategyByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

taxation_strategy_id = "taxation_strategy_id_example" # String | 

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-strategy to return.
  records: 10, # Integer | The maximum number of taxation-strategies to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns the tax currently being applied for the taxation-strategy-ID. To return schedule or historic tax changes the include_retired query parameter should be set to true.
  result = api_instance.get_taxation_strategy_by_consistent_id(taxation_strategy_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->get_taxation_strategy_by_consistent_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxation_strategy_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-strategy to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-strategies to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_taxation_strategy_by_country**
> TaxationStrategyPagedMetadata get_taxation_strategy_by_country(country, opts)

Returns a collection of taxation-strategies, specified by the country parameter. By default 10 values are returned. Records are returned in natural order. To return schedule or historic tax changes the include_retired query parameter should be set to true.

{\"nickname\":\"Retrieve by country\",\"response\":\"getTaxationStrategyByCountry.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

country = "country_example" # String | The country

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-strategy to return.
  records: 10, # Integer | The maximum number of taxation-strategies to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of taxation-strategies, specified by the country parameter. By default 10 values are returned. Records are returned in natural order. To return schedule or historic tax changes the include_retired query parameter should be set to true.
  result = api_instance.get_taxation_strategy_by_country(country, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->get_taxation_strategy_by_country: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **String**| The country | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-strategy to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-strategies to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_taxation_strategy_by_currency**
> TaxationStrategyPagedMetadata get_taxation_strategy_by_currency(currency, opts)

Returns a collection of taxation-strategies, specified by the currency parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by currency\",\"response\":\"getTaxationStrategyByProvince.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

currency = "currency_example" # String | The currency

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-strategy to return.
  records: 10, # Integer | The maximum number of taxation-strategies to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of taxation-strategies, specified by the currency parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_taxation_strategy_by_currency(currency, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->get_taxation_strategy_by_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **String**| The currency | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-strategy to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-strategies to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_taxation_strategy_by_province**
> TaxationStrategyPagedMetadata get_taxation_strategy_by_province(province, opts)

Returns a collection of taxation-strategies, specified by the province parameter. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by province\",\"response\":\"getTaxationStrategyByProvince.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

province = "province_example" # String | The province

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-strategy to return.
  records: 10, # Integer | The maximum number of taxation-strategies to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: false # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of taxation-strategies, specified by the province parameter. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_taxation_strategy_by_province(province, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->get_taxation_strategy_by_province: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **province** | **String**| The province | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-strategy to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-strategies to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to false]

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **get_taxation_strategy_by_version_id**
> TaxationStrategyPagedMetadata get_taxation_strategy_by_version_id(version_id, opts)

Returns a single taxation-strategy, specified by the taxation-strategy-ID parameter.

{\"nickname\":\"Retrieve by version\",\"response\":\"getTaxationStrategyByVersionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

version_id = "version_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single taxation-strategy, specified by the taxation-strategy-ID parameter.
  result = api_instance.get_taxation_strategy_by_version_id(version_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->get_taxation_strategy_by_version_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **retire_taxation_strategy**
> TaxationStrategyPagedMetadata retire_taxation_strategy(version_id, organizations)

Retires the taxation-strategy specified by taxation-strategy-ID parameter. Only the version of the tax which has an unbounded (null) validTill can be removed. Removing a tax change will make the previous tax come into effect. For example if you have a Tax in January and 5% and a new tax at 7% from February onwards, you can remove the February tax. Remove the February tax will re-instate the January tax.

{\"nickname\":\"Remove a tax change\",\"response\":\"deleteSubscription.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

version_id = "version_id_example" # String | 

organizations = ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.


begin
  #Retires the taxation-strategy specified by taxation-strategy-ID parameter. Only the version of the tax which has an unbounded (null) validTill can be removed. Removing a tax change will make the previous tax come into effect. For example if you have a Tax in January and 5% and a new tax at 7% from February onwards, you can remove the February tax. Remove the February tax will re-instate the January tax.
  result = api_instance.retire_taxation_strategy(version_id, organizations)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->retire_taxation_strategy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | 

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_taxation_strategy**
> TaxationStrategyPagedMetadata update_taxation_strategy(taxation_strategy)

Update a tax.

{\"nickname\":\"Update a tax\",\"request\":\"updateTaxationStrategyRequest.html\",\"response\":\"updateTaxationStrategyResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::TaxationstrategiesApi.new

taxation_strategy = BillForward::MutableBillingEntity.new # MutableBillingEntity | The taxation-strategy object to be updated.


begin
  #Update a tax.
  result = api_instance.update_taxation_strategy(taxation_strategy)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling TaxationstrategiesApi->update_taxation_strategy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxation_strategy** | [**MutableBillingEntity**](MutableBillingEntity.md)| The taxation-strategy object to be updated. | 

### Return type

[**TaxationStrategyPagedMetadata**](TaxationStrategyPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



