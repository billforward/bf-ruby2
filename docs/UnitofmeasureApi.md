# BillForward::UnitofmeasureApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_unit_of_measure**](UnitofmeasureApi.md#create_unit_of_measure) | **POST** /units-of-measure | Create a unit-of-measure.
[**get_all_units_of_measure**](UnitofmeasureApi.md#get_all_units_of_measure) | **GET** /units-of-measure | Returns a collection of all unit-of-measure objects. By default 10 values are returned. Records are returned in natural order.
[**get_unit_of_measure_by_id**](UnitofmeasureApi.md#get_unit_of_measure_by_id) | **GET** /units-of-measure/{unit-of-measure-identifier} | Returns a single unit-of-measure corresponding to the unique id or name specified.
[**update_unit_of_measure**](UnitofmeasureApi.md#update_unit_of_measure) | **PUT** /units-of-measure | Update a unit-of-measure.


# **create_unit_of_measure**
> UnitOfMeasurePagedMetadata create_unit_of_measure(unit_of_measure)

Create a unit-of-measure.

{\"nickname\":\"Create a new unit of measure\",\"request\":\"createUnitOfMeasureRequest.html\",\"response\":\"createUnitOfMeasureResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UnitofmeasureApi.new

unit_of_measure = BillForward::UnitOfMeasure.new # UnitOfMeasure | The unit-of-measure object to be created.


begin
  #Create a unit-of-measure.
  result = api_instance.create_unit_of_measure(unit_of_measure)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UnitofmeasureApi->create_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md)| The unit-of-measure object to be created. | 

### Return type

[**UnitOfMeasurePagedMetadata**](UnitOfMeasurePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



# **get_all_units_of_measure**
> UnitOfMeasurePagedMetadata get_all_units_of_measure(opts)

Returns a collection of all unit-of-measure objects. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all units of measure\",\"response\":\"getUnitOfMeasureAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UnitofmeasureApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first taxation-link to return.
  records: 10, # Integer | The maximum number of taxation-links to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a collection of all unit-of-measure objects. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_units_of_measure(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UnitofmeasureApi->get_all_units_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first taxation-link to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of taxation-links to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**UnitOfMeasurePagedMetadata**](UnitOfMeasurePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_unit_of_measure_by_id**
> UnitOfMeasurePagedMetadata get_unit_of_measure_by_id(unit_of_measure_identifier, opts)

Returns a single unit-of-measure corresponding to the unique id or name specified.

{\"nickname\":\"Retrieve an existing unit of measure\",\"response\":\"getUnitOfMeasureByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UnitofmeasureApi.new

unit_of_measure_identifier = "unit_of_measure_identifier_example" # String | The unique id or name of the unit-of-measure.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single unit-of-measure corresponding to the unique id or name specified.
  result = api_instance.get_unit_of_measure_by_id(unit_of_measure_identifier, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UnitofmeasureApi->get_unit_of_measure_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_of_measure_identifier** | **String**| The unique id or name of the unit-of-measure. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**UnitOfMeasurePagedMetadata**](UnitOfMeasurePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **update_unit_of_measure**
> UnitOfMeasurePagedMetadata update_unit_of_measure(unit_of_measure)

Update a unit-of-measure.

{\"nickname\":\"Update a unit of measure\",\"request\":\"updateUnitOfMeasureRequest.html\",\"response\":\"updateUnitOfMeasureResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::UnitofmeasureApi.new

unit_of_measure = BillForward::UnitOfMeasure.new # UnitOfMeasure | The unit-of-measure object to be updated.


begin
  #Update a unit-of-measure.
  result = api_instance.update_unit_of_measure(unit_of_measure)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling UnitofmeasureApi->update_unit_of_measure: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md)| The unit-of-measure object to be updated. | 

### Return type

[**UnitOfMeasurePagedMetadata**](UnitOfMeasurePagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/xml, application/xml, application/json



