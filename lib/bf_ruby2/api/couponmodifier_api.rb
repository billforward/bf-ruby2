=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class CouponmodifierApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a coupon-modifier.
    # {\"nickname\":\"Create a new modifier\",\"request\":\"createCouponModifierRequest.html\",\"response\":\"createCouponModifierResponse.html\"}
    # @param coupon_instance The coupon-instance object to be created.
    # @param [Hash] opts the optional parameters
    # @return [CouponModifierBasePagedMetadata]
    def create_coupon_modifier(coupon_instance, opts = {})
      data, _status_code, _headers = create_coupon_modifier_with_http_info(coupon_instance, opts)
      return data
    end

    # Create a coupon-modifier.
    # {\&quot;nickname\&quot;:\&quot;Create a new modifier\&quot;,\&quot;request\&quot;:\&quot;createCouponModifierRequest.html\&quot;,\&quot;response\&quot;:\&quot;createCouponModifierResponse.html\&quot;}
    # @param coupon_instance The coupon-instance object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CouponModifierBasePagedMetadata, Fixnum, Hash)>] CouponModifierBasePagedMetadata data, response status code and response headers
    def create_coupon_modifier_with_http_info(coupon_instance, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponmodifierApi.create_coupon_modifier ..."
      end
      # verify the required parameter 'coupon_instance' is set
      if @api_client.config.client_side_validation && coupon_instance.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_instance' when calling CouponmodifierApi.create_coupon_modifier"
      end
      # resource path
      local_var_path = "/coupon-modifiers"

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
      post_body = @api_client.object_to_http_body(coupon_instance)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponModifierBasePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponmodifierApi#create_coupon_modifier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retire a coupon-modifier, specified by the coupon-modifier-ID parameter.
    # {\"nickname\":\"Delete a modifier\",\"response\":\"deleteCouponModifierByID.html\"}
    # @param coupon_modifier_id ID of the coupon-modifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [CouponModifierBasePagedMetadata]
    def delete_coupon_modifier(coupon_modifier_id, opts = {})
      data, _status_code, _headers = delete_coupon_modifier_with_http_info(coupon_modifier_id, opts)
      return data
    end

    # Retire a coupon-modifier, specified by the coupon-modifier-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Delete a modifier\&quot;,\&quot;response\&quot;:\&quot;deleteCouponModifierByID.html\&quot;}
    # @param coupon_modifier_id ID of the coupon-modifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(CouponModifierBasePagedMetadata, Fixnum, Hash)>] CouponModifierBasePagedMetadata data, response status code and response headers
    def delete_coupon_modifier_with_http_info(coupon_modifier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponmodifierApi.delete_coupon_modifier ..."
      end
      # verify the required parameter 'coupon_modifier_id' is set
      if @api_client.config.client_side_validation && coupon_modifier_id.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_modifier_id' when calling CouponmodifierApi.delete_coupon_modifier"
      end
      # resource path
      local_var_path = "/coupon-modifiers/{coupon-modifier-ID}".sub('{' + 'coupon-modifier-ID' + '}', coupon_modifier_id.to_s)

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
        :return_type => 'CouponModifierBasePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponmodifierApi#delete_coupon_modifier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of coupon-modifiers. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all modifiers\",\"response\":\"getCouponModifierAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first product-rate-plan to return. (default to 0)
    # @option opts [Integer] :records The maximum number of product-rate-plans to return. (default to 10)
    # @return [CouponModifierBasePagedMetadata]
    def get_all_coupon_modifiers(opts = {})
      data, _status_code, _headers = get_all_coupon_modifiers_with_http_info(opts)
      return data
    end

    # Returns a collection of coupon-modifiers. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all modifiers\&quot;,\&quot;response\&quot;:\&quot;getCouponModifierAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
    # @option opts [Integer] :records The maximum number of product-rate-plans to return.
    # @return [Array<(CouponModifierBasePagedMetadata, Fixnum, Hash)>] CouponModifierBasePagedMetadata data, response status code and response headers
    def get_all_coupon_modifiers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponmodifierApi.get_all_coupon_modifiers ..."
      end
      # resource path
      local_var_path = "/coupon-modifiers"

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?

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
        :return_type => 'CouponModifierBasePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponmodifierApi#get_all_coupon_modifiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of coupon-modifiers, specified by the coupon-code parameter.
    # {\"nickname\":\"Retrieve by coupon code\",\"response\":\"getCouponCode.html\"}
    # @param coupon_code The coupon-code.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first product-rate-plan to return. (default to 0)
    # @option opts [Integer] :records The maximum number of product-rate-plans to return. (default to 10)
    # @return [CouponModifierBasePagedMetadata]
    def get_coupon_modifier_by_coupon_code(coupon_code, opts = {})
      data, _status_code, _headers = get_coupon_modifier_by_coupon_code_with_http_info(coupon_code, opts)
      return data
    end

    # Returns a collection of coupon-modifiers, specified by the coupon-code parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by coupon code\&quot;,\&quot;response\&quot;:\&quot;getCouponCode.html\&quot;}
    # @param coupon_code The coupon-code.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
    # @option opts [Integer] :records The maximum number of product-rate-plans to return.
    # @return [Array<(CouponModifierBasePagedMetadata, Fixnum, Hash)>] CouponModifierBasePagedMetadata data, response status code and response headers
    def get_coupon_modifier_by_coupon_code_with_http_info(coupon_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponmodifierApi.get_coupon_modifier_by_coupon_code ..."
      end
      # verify the required parameter 'coupon_code' is set
      if @api_client.config.client_side_validation && coupon_code.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_code' when calling CouponmodifierApi.get_coupon_modifier_by_coupon_code"
      end
      # resource path
      local_var_path = "/coupon-modifiers/coupon-code/{coupon-code}".sub('{' + 'coupon-code' + '}', coupon_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?

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
        :return_type => 'CouponModifierBasePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponmodifierApi#get_coupon_modifier_by_coupon_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of coupon-modifiers, specified by the coupon-definition-ID parameter.
    # {\"nickname\":\"Retrieve by coupon definition\",\"response\":\"getCouponModifierByCouponDefinitionID.html\"}
    # @param coupon_definition_id ID of the coupon-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [CouponModifierBasePagedMetadata]
    def get_coupon_modifier_by_coupon_definition_id(coupon_definition_id, opts = {})
      data, _status_code, _headers = get_coupon_modifier_by_coupon_definition_id_with_http_info(coupon_definition_id, opts)
      return data
    end

    # Returns a collection of coupon-modifiers, specified by the coupon-definition-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by coupon definition\&quot;,\&quot;response\&quot;:\&quot;getCouponModifierByCouponDefinitionID.html\&quot;}
    # @param coupon_definition_id ID of the coupon-definition.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(CouponModifierBasePagedMetadata, Fixnum, Hash)>] CouponModifierBasePagedMetadata data, response status code and response headers
    def get_coupon_modifier_by_coupon_definition_id_with_http_info(coupon_definition_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponmodifierApi.get_coupon_modifier_by_coupon_definition_id ..."
      end
      # verify the required parameter 'coupon_definition_id' is set
      if @api_client.config.client_side_validation && coupon_definition_id.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_definition_id' when calling CouponmodifierApi.get_coupon_modifier_by_coupon_definition_id"
      end
      # resource path
      local_var_path = "/coupon-modifiers/coupon-definition/{coupon-definition-ID}".sub('{' + 'coupon-definition-ID' + '}', coupon_definition_id.to_s)

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
        :return_type => 'CouponModifierBasePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponmodifierApi#get_coupon_modifier_by_coupon_definition_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single coupon-modifier, specified by the coupon-modifier-ID parameter.
    # {\"nickname\":\"Get existing modifier\",\"response\":\"getCouponModifierByID.html\"}
    # @param coupon_modifier_id ID of the coupon-modifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [CouponModifierBasePagedMetadata]
    def get_coupon_modifier_by_id(coupon_modifier_id, opts = {})
      data, _status_code, _headers = get_coupon_modifier_by_id_with_http_info(coupon_modifier_id, opts)
      return data
    end

    # Returns a single coupon-modifier, specified by the coupon-modifier-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Get existing modifier\&quot;,\&quot;response\&quot;:\&quot;getCouponModifierByID.html\&quot;}
    # @param coupon_modifier_id ID of the coupon-modifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(CouponModifierBasePagedMetadata, Fixnum, Hash)>] CouponModifierBasePagedMetadata data, response status code and response headers
    def get_coupon_modifier_by_id_with_http_info(coupon_modifier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponmodifierApi.get_coupon_modifier_by_id ..."
      end
      # verify the required parameter 'coupon_modifier_id' is set
      if @api_client.config.client_side_validation && coupon_modifier_id.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_modifier_id' when calling CouponmodifierApi.get_coupon_modifier_by_id"
      end
      # resource path
      local_var_path = "/coupon-modifiers/{coupon-modifier-ID}".sub('{' + 'coupon-modifier-ID' + '}', coupon_modifier_id.to_s)

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
        :return_type => 'CouponModifierBasePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponmodifierApi#get_coupon_modifier_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a coupon-instance.
    # {\"nickname\":\"Update a modifier\",\"request\":\"updateCouponInstanceRequest.html\",\"response\":\"updateCouponInstanceResponse.html\"}
    # @param coupon_instance The coupon-instance object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [CouponModifierBasePagedMetadata]
    def update_coupon_modifier(coupon_instance, opts = {})
      data, _status_code, _headers = update_coupon_modifier_with_http_info(coupon_instance, opts)
      return data
    end

    # Update a coupon-instance.
    # {\&quot;nickname\&quot;:\&quot;Update a modifier\&quot;,\&quot;request\&quot;:\&quot;updateCouponInstanceRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateCouponInstanceResponse.html\&quot;}
    # @param coupon_instance The coupon-instance object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CouponModifierBasePagedMetadata, Fixnum, Hash)>] CouponModifierBasePagedMetadata data, response status code and response headers
    def update_coupon_modifier_with_http_info(coupon_instance, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponmodifierApi.update_coupon_modifier ..."
      end
      # verify the required parameter 'coupon_instance' is set
      if @api_client.config.client_side_validation && coupon_instance.nil?
        fail ArgumentError, "Missing the required parameter 'coupon_instance' when calling CouponmodifierApi.update_coupon_modifier"
      end
      # resource path
      local_var_path = "/coupon-modifiers"

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
      post_body = @api_client.object_to_http_body(coupon_instance)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CouponModifierBasePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponmodifierApi#update_coupon_modifier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
