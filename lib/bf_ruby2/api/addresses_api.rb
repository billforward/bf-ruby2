=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

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
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling AddressesApi.create_address"
      end
      # resource path
      local_var_path = "/addresses"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/xml', 'application/xml', 'application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json; charset=utf-8'])

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
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling AddressesApi.update_address"
      end
      # resource path
      local_var_path = "/addresses"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/xml', 'application/xml', 'application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json; charset=utf-8'])

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
