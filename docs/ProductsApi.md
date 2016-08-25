# Bfwd::ProductsApi

All URIs are relative to *https://localhost:8080/RestAPI*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_product**](ProductsApi.md#create_product) | **POST** /products | Create a product.
[**delete_metadata_for_product**](ProductsApi.md#delete_metadata_for_product) | **DELETE** /products/{product-ID}/metadata | Remove any associated metadata.
[**get_all_products**](ProductsApi.md#get_all_products) | **GET** /products | Returns a collection of products. By default 10 values are returned. Records are returned in natural order.
[**get_metadata_for_product**](ProductsApi.md#get_metadata_for_product) | **GET** /products/{product-ID}/metadata | Retrieve any associated metadata.
[**get_product_by_id**](ProductsApi.md#get_product_by_id) | **GET** /products/{product-ID} | Returns a single product, specified by the product-ID parameter.
[**retire_product**](ProductsApi.md#retire_product) | **DELETE** /products/{product-ID} | Deletes the product specified by the product-ID parameter. Any existing subscriptions will continue; it is a soft delete.
[**set_metadata_for_product**](ProductsApi.md#set_metadata_for_product) | **POST** /products/{product-ID}/metadata | Remove any existing metadata keys and create the provided data.
[**update_product**](ProductsApi.md#update_product) | **PUT** /products | Update a product.
[**upsert_metadata_for_product**](ProductsApi.md#upsert_metadata_for_product) | **PUT** /products/{product-ID}/metadata | Update any existing metadata key-values and insert any new key-values, no keys will be removed.


# **create_product**
> ProductPagedMetadata create_product(product)

Create a product.

{\"nickname\":\"Create a new product\",\"request\":\"createProductRequest.html\",\"response\":\"createProductResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

product = Bfwd::Product.new # Product | The product object to be updated.


begin
  #Create a product.
  result = api_instance.create_product(product)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->create_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | [**Product**](Product.md)| The product object to be updated. | 

### Return type

[**ProductPagedMetadata**](ProductPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **delete_metadata_for_product**
> DynamicMetadata delete_metadata_for_product(product_id, opts)

Remove any associated metadata.

{\"nickname\":\"Clear metadata from product\",\"request\" :\"deleteProductMetadataRequest.html\",\"response\":\"deleteProductMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

product_id = "product_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any associated metadata.
  result = api_instance.delete_metadata_for_product(product_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->delete_metadata_for_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **get_all_products**
> ProductPagedMetadata get_all_products(opts)

Returns a collection of products. By default 10 values are returned. Records are returned in natural order.

{\"nickname\":\"Get all products\",\"response\":\"getProductAll.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product to return.
  records: 10, # Integer | The maximum number of products to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true, # BOOLEAN | Whether retired products should be returned.
  metadata: "metadata_example" # String | 
}

begin
  #Returns a collection of products. By default 10 values are returned. Records are returned in natural order.
  result = api_instance.get_all_products(opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->get_all_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of products to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]
 **metadata** | **String**|  | [optional] 

### Return type

[**ProductPagedMetadata**](ProductPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8, text/plain



# **get_metadata_for_product**
> DynamicMetadata get_metadata_for_product(product_id, opts)

Retrieve any associated metadata.

{\"nickname\":\"Retrieve metadata on product\",\"request\":\"getProductMetadataRequest.html\",\"response\":\"getProductMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

product_id = "product_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Retrieve any associated metadata.
  result = api_instance.get_metadata_for_product(product_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->get_metadata_for_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8, text/plain
 - **Accept**: application/json; charset=utf-8



# **get_product_by_id**
> ProductPagedMetadata get_product_by_id(product_id, opts)

Returns a single product, specified by the product-ID parameter.

{\"nickname\":\"Retrieve an existing product\",\"response\":\"getProductByID.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

product_id = "product_id_example" # String | ID or name of the product.

opts = { 
  organizations: ["organizations_example"], # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
  offset: 0, # Integer | The offset from the first product-rate-plan to return.
  records: 10, # Integer | The maximum number of product-rate-plans to return.
  order_by: "created", # String | Specify a field used to order the result set.
  order: "DESC", # String | Ihe direction of any ordering, either ASC or DESC.
  include_retired: true # BOOLEAN | Whether retired products should be returned.
}

begin
  #Returns a single product, specified by the product-ID parameter.
  result = api_instance.get_product_by_id(product_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->get_product_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| ID or name of the product. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 
 **offset** | **Integer**| The offset from the first product-rate-plan to return. | [optional] [default to 0]
 **records** | **Integer**| The maximum number of product-rate-plans to return. | [optional] [default to 10]
 **order_by** | **String**| Specify a field used to order the result set. | [optional] [default to created]
 **order** | **String**| Ihe direction of any ordering, either ASC or DESC. | [optional] [default to DESC]
 **include_retired** | **BOOLEAN**| Whether retired products should be returned. | [optional] [default to true]

### Return type

[**ProductPagedMetadata**](ProductPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **retire_product**
> ProductPagedMetadata retire_product(product_id, opts)

Deletes the product specified by the product-ID parameter. Any existing subscriptions will continue; it is a soft delete.

{\"nickname\":\"Delete a product\",\"response\":\"deleteProduct.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

product_id = "product_id_example" # String | ID of the Product.

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Deletes the product specified by the product-ID parameter. Any existing subscriptions will continue; it is a soft delete.
  result = api_instance.retire_product(product_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->retire_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| ID of the Product. | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**ProductPagedMetadata**](ProductPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **set_metadata_for_product**
> DynamicMetadata set_metadata_for_product(metadata, product_id, opts)

Remove any existing metadata keys and create the provided data.

{\"nickname\":\"Set metadata on product\",\"request\":\"setProductMetadataRequest.html\",\"response\":\"setProductMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

metadata = Bfwd::DynamicMetadata.new # DynamicMetadata | 

product_id = "product_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Remove any existing metadata keys and create the provided data.
  result = api_instance.set_metadata_for_product(metadata, product_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->set_metadata_for_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **product_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



# **update_product**
> ProductPagedMetadata update_product(product)

Update a product.

{\"nickname\":\"Update a product\",\"request\":\"updateProductRequest.html\",\"response\":\"updateProductResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

product = Bfwd::Product.new # Product | The product object to be updated.


begin
  #Update a product.
  result = api_instance.update_product(product)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->update_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | [**Product**](Product.md)| The product object to be updated. | 

### Return type

[**ProductPagedMetadata**](ProductPagedMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: text/xml, application/xml, application/json; charset=utf-8



# **upsert_metadata_for_product**
> DynamicMetadata upsert_metadata_for_product(metadata, product_id, opts)

Update any existing metadata key-values and insert any new key-values, no keys will be removed.

{\"nickname\":\"Upsert metadata on product\",\"request\":\"upsertProductMetadataRequest.html\",\"response\":\"upsertProductMetadataResponse.html\"}

### Example
```ruby
# load the gem
require 'bf_ruby2'

api_instance = Bfwd::ProductsApi.new

metadata = Bfwd::DynamicMetadata.new # DynamicMetadata | 

product_id = "product_id_example" # String | 

opts = { 
  organizations: ["organizations_example"] # Array<String> | A list of organization-IDs used to restrict the scope of API calls.
}

begin
  #Update any existing metadata key-values and insert any new key-values, no keys will be removed.
  result = api_instance.upsert_metadata_for_product(metadata, product_id, opts)
  p result
rescue Bfwd::ApiError => e
  puts "Exception when calling ProductsApi->upsert_metadata_for_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata** | [**DynamicMetadata**](DynamicMetadata.md)|  | 
 **product_id** | **String**|  | 
 **organizations** | [**Array&lt;String&gt;**](String.md)| A list of organization-IDs used to restrict the scope of API calls. | [optional] 

### Return type

[**DynamicMetadata**](DynamicMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8



