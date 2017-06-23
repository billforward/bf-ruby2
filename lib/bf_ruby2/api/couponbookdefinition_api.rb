=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class CouponbookdefinitionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a coupon-book-definition.
    # {\"nickname\":\"Create a new book definition\",\"request\":\"createCouponBookDefinitionRequest.html\",\"response\":\"createCouponBookDefinitionResponse.html\"}
    # @param coupon_book_definition The coupon-book-definition object to be created.
    # @param [Hash] opts the optional parameters
    # @return [CouponBookDefinitionPagedMetadata]
    def create_coupon_book_definition(coupon_book_definition, opts = {})
      data, _status_code, _headers = create_coupon_book_definition_with_http_info(coupon_book_definition, opts)
      return data
    end

    # Create a coupon-book-definition.
    # {\&quot;nickname\&quot;:\&quot;Create a new book definition\&quot;,\&quot;request\&quot;:\&quot;createCouponBookDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;createCouponBookDefinitionResponse.html\&quot;}
    # @param coupon_book_definition The coupon-book-definition object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CouponBookDefinitionPagedMetadata, Fixnum, Hash)>] CouponBookDefinitionPagedMetadata data, response status code and response headers
    def create_coupon_book_definition_with_http_info(coupon_book_definition, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponbookdefinitionApi.create_coupon_book_definition ..."
      end
      # verify the required parameter 'coupon_book_definition' is set
      if @api_client.config.client_side_validation && coupon_book_definition.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_book_definition' when calling CouponbookdefinitionApi.create_coupon_book_definition"
      end
      # resource path
      local_var_path = "/coupon-book-definitions"

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
      post_body = @api_client.object_to_http_body(coupon_book_definition)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponBookDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponbookdefinitionApi#create_coupon_book_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retire a coupon-book-definition, specified by the coupon-book-definition-ID parameter.
    # {\"nickname\":\"Delete book definition\",\"response\":\"deleteCouponBookDefinitionByID.html\"}
    # @param coupon_book_definition_id ID of the coupon-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [CouponBookDefinitionPagedMetadata]
    def delete_coupon_book_definition(coupon_book_definition_id, opts = {})
      data, _status_code, _headers = delete_coupon_book_definition_with_http_info(coupon_book_definition_id, opts)
      return data
    end

    # Retire a coupon-book-definition, specified by the coupon-book-definition-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Delete book definition\&quot;,\&quot;response\&quot;:\&quot;deleteCouponBookDefinitionByID.html\&quot;}
    # @param coupon_book_definition_id ID of the coupon-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(CouponBookDefinitionPagedMetadata, Fixnum, Hash)>] CouponBookDefinitionPagedMetadata data, response status code and response headers
    def delete_coupon_book_definition_with_http_info(coupon_book_definition_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponbookdefinitionApi.delete_coupon_book_definition ..."
      end
      # verify the required parameter 'coupon_book_definition_id' is set
      if @api_client.config.client_side_validation && coupon_book_definition_id.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_book_definition_id' when calling CouponbookdefinitionApi.delete_coupon_book_definition"
      end
      # resource path
      local_var_path = "/coupon-book-definitions/{coupon-book-definition-ID}".sub('{' + 'coupon-book-definition-ID' + '}', coupon_book_definition_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/plain'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponBookDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponbookdefinitionApi#delete_coupon_book_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of coupon-book-definitions. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all book definitions\",\"response\":\"getCouponBookDefinitionAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first product-rate-plan to return. (default to 0)
    # @option opts [Integer] :records The maximum number of product-rate-plans to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired coupon-book-definitions should be returned. (default to true)
    # @return [CouponBookDefinitionPagedMetadata]
    def get_all_coupon_book_definitions(opts = {})
      data, _status_code, _headers = get_all_coupon_book_definitions_with_http_info(opts)
      return data
    end

    # Returns a collection of coupon-book-definitions. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all book definitions\&quot;,\&quot;response\&quot;:\&quot;getCouponBookDefinitionAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
    # @option opts [Integer] :records The maximum number of product-rate-plans to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired coupon-book-definitions should be returned.
    # @return [Array<(CouponBookDefinitionPagedMetadata, Fixnum, Hash)>] CouponBookDefinitionPagedMetadata data, response status code and response headers
    def get_all_coupon_book_definitions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponbookdefinitionApi.get_all_coupon_book_definitions ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/coupon-book-definitions"

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'include_retired'] = opts[:'include_retired'] if !opts[:'include_retired'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponBookDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponbookdefinitionApi#get_all_coupon_book_definitions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of coupon-book-definitions, specified by coupon-definition-ID parameter. By default 10 coupon-book-definitions are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by coupon definition\",\"response\":\"getCouponBookDefinitionByCouponDefinitionID.html\"}
    # @param coupon_definition_id The string coupon-definition-ID of the coupon-book-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first coupon-book-definition to return. (default to 0)
    # @option opts [Integer] :records The maximum number of coupon-book-definitions to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired coupon-book-definitions should be returned. (default to true)
    # @return [CouponBookDefinitionPagedMetadata]
    def get_coupon_book_definition_by_coupon_definition_id(coupon_definition_id, opts = {})
      data, _status_code, _headers = get_coupon_book_definition_by_coupon_definition_id_with_http_info(coupon_definition_id, opts)
      return data
    end

    # Returns a collection of coupon-book-definitions, specified by coupon-definition-ID parameter. By default 10 coupon-book-definitions are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by coupon definition\&quot;,\&quot;response\&quot;:\&quot;getCouponBookDefinitionByCouponDefinitionID.html\&quot;}
    # @param coupon_definition_id The string coupon-definition-ID of the coupon-book-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first coupon-book-definition to return.
    # @option opts [Integer] :records The maximum number of coupon-book-definitions to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired coupon-book-definitions should be returned.
    # @return [Array<(CouponBookDefinitionPagedMetadata, Fixnum, Hash)>] CouponBookDefinitionPagedMetadata data, response status code and response headers
    def get_coupon_book_definition_by_coupon_definition_id_with_http_info(coupon_definition_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponbookdefinitionApi.get_coupon_book_definition_by_coupon_definition_id ..."
      end
      # verify the required parameter 'coupon_definition_id' is set
      if @api_client.config.client_side_validation && coupon_definition_id.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_definition_id' when calling CouponbookdefinitionApi.get_coupon_book_definition_by_coupon_definition_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/coupon-book-definitions/coupon-definition/{coupon-definition-ID}".sub('{' + 'coupon-definition-ID' + '}', coupon_definition_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'include_retired'] = opts[:'include_retired'] if !opts[:'include_retired'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/plain'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponBookDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponbookdefinitionApi#get_coupon_book_definition_by_coupon_definition_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single coupon-book-definition, specified by the coupon-book-definition-ID parameter.
    # {\"nickname\":\"Retrieve an existing book definition\",\"response\":\"getCouponBookDefinitionByID.html\"}
    # @param coupon_book_definition_id ID of the coupon-book-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [CouponBookDefinitionPagedMetadata]
    def get_coupon_book_definition_by_id(coupon_book_definition_id, opts = {})
      data, _status_code, _headers = get_coupon_book_definition_by_id_with_http_info(coupon_book_definition_id, opts)
      return data
    end

    # Returns a single coupon-book-definition, specified by the coupon-book-definition-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing book definition\&quot;,\&quot;response\&quot;:\&quot;getCouponBookDefinitionByID.html\&quot;}
    # @param coupon_book_definition_id ID of the coupon-book-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(CouponBookDefinitionPagedMetadata, Fixnum, Hash)>] CouponBookDefinitionPagedMetadata data, response status code and response headers
    def get_coupon_book_definition_by_id_with_http_info(coupon_book_definition_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponbookdefinitionApi.get_coupon_book_definition_by_id ..."
      end
      # verify the required parameter 'coupon_book_definition_id' is set
      if @api_client.config.client_side_validation && coupon_book_definition_id.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_book_definition_id' when calling CouponbookdefinitionApi.get_coupon_book_definition_by_id"
      end
      # resource path
      local_var_path = "/coupon-book-definitions/{coupon-book-definition-ID}".sub('{' + 'coupon-book-definition-ID' + '}', coupon_book_definition_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/plain'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponBookDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponbookdefinitionApi#get_coupon_book_definition_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a coupon-book-definition.
    # {\"nickname\":\"Update a book definition\",\"request\":\"updateCouponBookDefinitionRequest.html\",\"response\":\"updateCouponBookDefinitionResponse.html\"}
    # @param coupon_book_definition The coupon-book-definition object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [CouponBookDefinitionPagedMetadata]
    def update_coupon_book_definition(coupon_book_definition, opts = {})
      data, _status_code, _headers = update_coupon_book_definition_with_http_info(coupon_book_definition, opts)
      return data
    end

    # Update a coupon-book-definition.
    # {\&quot;nickname\&quot;:\&quot;Update a book definition\&quot;,\&quot;request\&quot;:\&quot;updateCouponBookDefinitionRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateCouponBookDefinitionResponse.html\&quot;}
    # @param coupon_book_definition The coupon-book-definition object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CouponBookDefinitionPagedMetadata, Fixnum, Hash)>] CouponBookDefinitionPagedMetadata data, response status code and response headers
    def update_coupon_book_definition_with_http_info(coupon_book_definition, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponbookdefinitionApi.update_coupon_book_definition ..."
      end
      # verify the required parameter 'coupon_book_definition' is set
      if @api_client.config.client_side_validation && coupon_book_definition.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_book_definition' when calling CouponbookdefinitionApi.update_coupon_book_definition"
      end
      # resource path
      local_var_path = "/coupon-book-definitions"

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
      post_body = @api_client.object_to_http_body(coupon_book_definition)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponBookDefinitionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponbookdefinitionApi#update_coupon_book_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
