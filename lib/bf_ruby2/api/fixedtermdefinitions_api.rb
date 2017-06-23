=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class FixedtermdefinitionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create
    # {\"nickname\":\"Create a new fixed term definition\",\"request\":\"createFixedTermDefinitionRequest.html\",\"response\":\"createFixedTermDefinitionResponse.html\"}
    # @param fixed_term_definiton The fixed-term-definition object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [FixedTermDefinitionPagedMetadata]
    def create_fixed_term_definition(fixed_term_definiton, opts = {})
      data, _status_code, _headers = create_fixed_term_definition_with_http_info(fixed_term_definiton, opts)
      return data
    end

    # Create
    # {\&quot;nickname\&quot;:\&quot;Create a new fixed term definition\&quot;,\&quot;request\&quot;:\&quot;createFixedTermDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;createFixedTermDefinitionResponse.html\&quot;}
    # @param fixed_term_definiton The fixed-term-definition object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FixedTermDefinitionPagedMetadata, Fixnum, Hash)>] FixedTermDefinitionPagedMetadata data, response status code and response headers
    def create_fixed_term_definition_with_http_info(fixed_term_definiton, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FixedtermdefinitionsApi.create_fixed_term_definition ..."
      end
      # verify the required parameter 'fixed_term_definiton' is set
      if @api_client.config.client_side_validation && fixed_term_definiton.nil?
        fail ArgumentError, "Missing the required parameter 'fixed_term_definiton' when calling FixedtermdefinitionsApi.create_fixed_term_definition"
      end
      # resource path
      local_var_path = "/fixed-term-definitions"

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
      post_body = @api_client.object_to_http_body(fixed_term_definiton)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FixedTermDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FixedtermdefinitionsApi#create_fixed_term_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # {\"nickname\":\"Update a fixed-term definition\",\"request\":\"updateFixedTermDefinitionRequest.html\",\"response\":\"updateFixedTermDefinitionResponse.html\"}
    # @param fixed_term_definiton The fixed-term-definition object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [FixedTermDefinitionPagedMetadata]
    def update_fixed_term_definition(fixed_term_definiton, opts = {})
      data, _status_code, _headers = update_fixed_term_definition_with_http_info(fixed_term_definiton, opts)
      return data
    end

    # Update
    # {\&quot;nickname\&quot;:\&quot;Update a fixed-term definition\&quot;,\&quot;request\&quot;:\&quot;updateFixedTermDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateFixedTermDefinitionResponse.html\&quot;}
    # @param fixed_term_definiton The fixed-term-definition object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FixedTermDefinitionPagedMetadata, Fixnum, Hash)>] FixedTermDefinitionPagedMetadata data, response status code and response headers
    def update_fixed_term_definition_with_http_info(fixed_term_definiton, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FixedtermdefinitionsApi.update_fixed_term_definition ..."
      end
      # verify the required parameter 'fixed_term_definiton' is set
      if @api_client.config.client_side_validation && fixed_term_definiton.nil?
        fail ArgumentError, "Missing the required parameter 'fixed_term_definiton' when calling FixedtermdefinitionsApi.update_fixed_term_definition"
      end
      # resource path
      local_var_path = "/fixed-term-definitions"

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
      post_body = @api_client.object_to_http_body(fixed_term_definiton)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FixedTermDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FixedtermdefinitionsApi#update_fixed_term_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
