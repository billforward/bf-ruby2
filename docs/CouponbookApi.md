# BillForward::CouponbookApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_coupon_book**](CouponbookApi.md#create_coupon_book) | **POST** /coupon-books | Create a coupon-book.
[**delete_coupon_book**](CouponbookApi.md#delete_coupon_book) | **DELETE** /coupon-books/{coupon-book-ID} | Retire a coupon-book, specified by the coupon-book-ID parameter.
[**get_all_attachable_coupon_books**](CouponbookApi.md#get_all_attachable_coupon_books) | **GET** /coupon-books/attachable/{attachableness}/{has_code} | Returns a collection of attachable coupon-books. An attachable coupon-book has at least one remaining use, and is not deleted. By default 10 values are returned. Records are returned in natural order.
[**get_all_coupon_books**](CouponbookApi.md#get_all_coupon_books) | **GET** /coupon-books | Returns a collection of coupon-books. By default 10 values are returned. Records are returned in natural order.
[**get_coupon_book_by_book_code**](CouponbookApi.md#get_coupon_book_by_book_code) | **GET** /coupon-books/book-code/{book-code} | Returns a single coupon-book, specified by the book-code parameter.
[**get_coupon_book_by_coupon_book_definition_id**](CouponbookApi.md#get_coupon_book_by_coupon_book_definition_id) | **GET** /coupon-books/coupon-book-definition/{coupon-book-definition-ID} | Returns a collection of coupon-books, specified by coupon-book-definition-ID parameter. By default 10 coupon-books are returned. Records are returned in natural order.
[**get_coupon_book_by_coupon_code**](CouponbookApi.md#get_coupon_book_by_coupon_code) | **GET** /coupon-books/coupon/{coupon-code} | Returns a single coupon-book, specified by the coupon-code parameter.
[**get_coupon_book_by_id**](CouponbookApi.md#get_coupon_book_by_id) | **GET** /coupon-books/{coupon-book-ID} | Returns a single coupon-book, specified by the coupon-book-ID parameter.
[**update_coupon_book**](CouponbookApi.md#update_coupon_book) | **PUT** /coupon-books | Update a coupon-book.


# **create_coupon_book**
> CouponBookPagedMetadata create_coupon_book(coupon_book)

Create a coupon-book.

{\"nickname\":\"Create a new coupon book\",\"request\":\"createCouponBookRequest.html\",\"response\":\"createCouponBookResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

coupon_book = BillForward::CouponBook.new # CouponBook | The coupon-book object to be created.


begin
  #Create a coupon-book.
  result = api_instance.create_coupon_book(coupon_book)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->create_coupon_book: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book** | [**CouponBook**](CouponBook.md)| The coupon-book object to be created. | 

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_coupon_book**
> CouponBookPagedMetadata delete_coupon_book(coupon_book_id, opts)

Retire a coupon-book, specified by the coupon-book-ID parameter.

{\"nickname\":\"Delete coupon book\",\"response\":\"deleteCouponBookByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

coupon_book_id = "coupon_book_id_example" # String | ID of the coupon-book.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retire a coupon-book, specified by the coupon-book-ID parameter.
  result = api_instance.delete_coupon_book(coupon_book_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->delete_coupon_book: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book_id** | **String**| ID of the coupon-book. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_all_attachable_coupon_books**
> CouponBookPagedMetadata get_all_attachable_coupon_books(attachableness, has_code, opts)

Returns a collection of attachable coupon-books. An attachable coupon-book has at least one remaining use, and is not deleted. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all attachable coupon books\",\"response\":\"getCouponBookAllAttachable.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

attachableness = true # BOOLEAN | The attachableness of the coupon-book.

has_code = true # BOOLEAN | Whether the coupon-books have book codes or not.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-book to return.
  records: 10, # Integer | The maximum number of coupon-books to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC" # String | Ihe direction of any ordering, either ASC or DESC.
}

begin
  #Returns a collection of attachable coupon-books. An attachable coupon-book has at least one remaining use, and is not deleted. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_attachable_coupon_books(attachableness, has_code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->get_all_attachable_coupon_books: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachableness** | **BOOLEAN**| The attachableness of the coupon-book. | 
 **has_code** | **BOOLEAN**| Whether the coupon-books have book codes or not. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-book to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-books to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_all_coupon_books**
> CouponBookPagedMetadata get_all_coupon_books(opts)

Returns a collection of coupon-books. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all coupon books\",\"response\":\"getCouponBookAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-books to return.
  records: 10, # Integer | The maximum number of coupon-books to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-books should be returned.
}

begin
  #Returns a collection of coupon-books. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_coupon_books(opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->get_all_coupon_books: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-books to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-books to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-books should be returned. | [optional] [default to true]

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8



# **get_coupon_book_by_book_code**
> CouponBookPagedMetadata get_coupon_book_by_book_code(book_code, opts)

Returns a single coupon-book, specified by the book-code parameter.

{\"nickname\":\"Retrieve by book code\",\"response\":\"getCouponBookByBookCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

book_code = "book_code_example" # String | The unique coupon-book-code.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-book, specified by the book-code parameter.
  result = api_instance.get_coupon_book_by_book_code(book_code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->get_coupon_book_by_book_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **book_code** | **String**| The unique coupon-book-code. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_book_by_coupon_book_definition_id**
> CouponBookPagedMetadata get_coupon_book_by_coupon_book_definition_id(coupon_book_definition_id, opts)

Returns a collection of coupon-books, specified by coupon-book-definition-ID parameter. By default 10 coupon-books are returned. Records are returned in natural order.

{\"nickname\":\"Retrieve by coupon book definition\",\"response\":\"getCouponBookByCouponBookDefinitionID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

coupon_book_definition_id = "coupon_book_definition_id_example" # String | The string coupon-book-definition-ID of the coupon-book.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first coupon-book to return.
  records: 10, # Integer | The maximum number of coupon-books to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired coupon-books should be returned.
}

begin
  #Returns a collection of coupon-books, specified by coupon-book-definition-ID parameter. By default 10 coupon-books are returned. Records are returned in natural order.
  result = api_instance.get_coupon_book_by_coupon_book_definition_id(coupon_book_definition_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->get_coupon_book_by_coupon_book_definition_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book_definition_id** | **String**| The string coupon-book-definition-ID of the coupon-book. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first coupon-book to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of coupon-books to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired coupon-books should be returned. | [optional] [default to true]

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_book_by_coupon_code**
> CouponBookPagedMetadata get_coupon_book_by_coupon_code(coupon_code, opts)

Returns a single coupon-book, specified by the coupon-code parameter.

{\"nickname\":\"Retrieve by coupon code\",\"response\":\"getCouponBookByBookCode.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

coupon_code = "coupon_code_example" # String | The unique coupon-code.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-book, specified by the coupon-code parameter.
  result = api_instance.get_coupon_book_by_coupon_code(coupon_code, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->get_coupon_book_by_coupon_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_code** | **String**| The unique coupon-code. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **get_coupon_book_by_id**
> CouponBookPagedMetadata get_coupon_book_by_id(coupon_book_id, opts)

Returns a single coupon-book, specified by the coupon-book-ID parameter.

{\"nickname\":\"Retrieve an existing coupon book\",\"response\":\"getCouponBookByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

coupon_book_id = "coupon_book_id_example" # String | ID of the coupon-book.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Returns a single coupon-book, specified by the coupon-book-ID parameter.
  result = api_instance.get_coupon_book_by_id(coupon_book_id, opts)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->get_coupon_book_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book_id** | **String**| ID of the coupon-book. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json; charset=utf-8



# **update_coupon_book**
> CouponBookPagedMetadata update_coupon_book(coupon_book)

Update a coupon-book.

{\"nickname\":\"Update a coupon book\",\"request\":\"updateCouponBookRequest.html\",\"response\":\"updateCouponBookResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = BillForward::CouponbookApi.new

coupon_book = BillForward::CouponBook.new # CouponBook | The coupon-book object to be updated.


begin
  #Update a coupon-book.
  result = api_instance.update_coupon_book(coupon_book)
  p result
rescue BillForward::ApiError => e
  puts "Exception when calling CouponbookApi->update_coupon_book: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_book** | [**CouponBook**](CouponBook.md)| The coupon-book object to be updated. | 

### Return type

[**CouponBookPagedMetadata**](CouponBookPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



