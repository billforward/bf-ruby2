=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Bfwd
  class AddressesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create
    # {\"nickname\":\"Create a new address\",\"response\":\"createAddressResponse.html\",\"request\":\"createAddressRequest.html\"}
    # @param request The address object to be created.
    # @param [Hash] opts the optional parameters
    # @return [AddressPagedMetadata]
    def create_address(request, opts = {})
      data, _status_code, _headers = create_address_with_http_info(request, opts)
      return data
    end

    # Create
    # {\&quot;nickname\&quot;:\&quot;Create a new address\&quot;,\&quot;response\&quot;:\&quot;createAddressResponse.html\&quot;,\&quot;request\&quot;:\&quot;createAddressRequest.html\&quot;}
    # @param request The address object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddressPagedMetadata, Fixnum, Hash)>] AddressPagedMetadata data, response status code and response headers
    def create_address_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressesApi.create_address ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling AddressesApi.create_address" if request.nil?
      # resource path
      local_var_path = "/addresses".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/xml', 'application/xml', 'application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AddressPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressesApi#create_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # {\"nickname\":\"Update an address\",\"response\":\"updateAddressResponse.html\",\"request\":\"updateAddressRequest.html\"}
    # @param request The address object to be created.
    # @param [Hash] opts the optional parameters
    # @return [AddressPagedMetadata]
    def update_address(request, opts = {})
      data, _status_code, _headers = update_address_with_http_info(request, opts)
      return data
    end

    # Update
    # {\&quot;nickname\&quot;:\&quot;Update an address\&quot;,\&quot;response\&quot;:\&quot;updateAddressResponse.html\&quot;,\&quot;request\&quot;:\&quot;updateAddressRequest.html\&quot;}
    # @param request The address object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddressPagedMetadata, Fixnum, Hash)>] AddressPagedMetadata data, response status code and response headers
    def update_address_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AddressesApi.update_address ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling AddressesApi.update_address" if request.nil?
      # resource path
      local_var_path = "/addresses".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/xml', 'application/xml', 'application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json; charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AddressPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressesApi#update_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
