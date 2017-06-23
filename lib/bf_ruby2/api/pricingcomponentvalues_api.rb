=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class PricingcomponentvaluesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a pricing-component-value.
    # {\"nickname\":\"Create a new value\",\"request\":\"createPricingComponentValueRequest.html\",\"response\":\"createPricingComponentValueResponse.html\"}
    # @param pricing_component_value The pricing-component-value object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [PricingComponentValuePagedMetadata]
    def create_pricing_component_value(pricing_component_value, opts = {})
      data, _status_code, _headers = create_pricing_component_value_with_http_info(pricing_component_value, opts)
      return data
    end

    # Create a pricing-component-value.
    # {\&quot;nickname\&quot;:\&quot;Create a new value\&quot;,\&quot;request\&quot;:\&quot;createPricingComponentValueRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPricingComponentValueResponse.html\&quot;}
    # @param pricing_component_value The pricing-component-value object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingComponentValuePagedMetadata, Fixnum, Hash)>] PricingComponentValuePagedMetadata data, response status code and response headers
    def create_pricing_component_value_with_http_info(pricing_component_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluesApi.create_pricing_component_value ..."
      end
      # verify the required parameter 'pricing_component_value' is set
      if @api_client.config.client_side_validation && pricing_component_value.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_component_value' when calling PricingcomponentvaluesApi.create_pricing_component_value"
      end
      # resource path
      local_var_path = "/pricing-component-values"

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
      post_body = @api_client.object_to_http_body(pricing_component_value)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingComponentValuePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluesApi#create_pricing_component_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-values.By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all values\",\"response\":\"getPricingComponentValueAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-values to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [PricingComponentValuePagedMetadata]
    def get_all_pricing_component_values(opts = {})
      data, _status_code, _headers = get_all_pricing_component_values_with_http_info(opts)
      return data
    end

    # Returns a collection of pricing-component-values.By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all values\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value to return.
    # @option opts [Integer] :records The maximum number of pricing-component-values to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(PricingComponentValuePagedMetadata, Fixnum, Hash)>] PricingComponentValuePagedMetadata data, response status code and response headers
    def get_all_pricing_component_values_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluesApi.get_all_pricing_component_values ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-values"

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
        :return_type => 'PricingComponentValuePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluesApi#get_all_pricing_component_values\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-values, specified by the pricing-component-ID parameter.By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get existing values\",\"response\":\"getPricingComponentValueByID.html\"}
    # @param pricing_component_id The string ID of the pricing-component-value.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-values to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [PricingComponentValuePagedMetadata]
    def get_pricing_component_value(pricing_component_id, opts = {})
      data, _status_code, _headers = get_pricing_component_value_with_http_info(pricing_component_id, opts)
      return data
    end

    # Returns a collection of pricing-component-values, specified by the pricing-component-ID parameter.By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get existing values\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueByID.html\&quot;}
    # @param pricing_component_id The string ID of the pricing-component-value.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value to return.
    # @option opts [Integer] :records The maximum number of pricing-component-values to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(PricingComponentValuePagedMetadata, Fixnum, Hash)>] PricingComponentValuePagedMetadata data, response status code and response headers
    def get_pricing_component_value_with_http_info(pricing_component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluesApi.get_pricing_component_value ..."
      end
      # verify the required parameter 'pricing_component_id' is set
      if @api_client.config.client_side_validation && pricing_component_id.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_component_id' when calling PricingcomponentvaluesApi.get_pricing_component_value"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-values/{pricing-component-ID}".sub('{' + 'pricing-component-ID' + '}', pricing_component_id.to_s)

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
        :return_type => 'PricingComponentValuePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluesApi#get_pricing_component_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-values, specified by the subscription-ID parameter.By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by subscription\",\"response\":\"getPricingComponentValueBySubscriptionID.html\"}
    # @param subscription_id The string subscription-ID of the pricing-component-value.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-values to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [PricingComponentValuePagedMetadata]
    def get_pricing_component_value_by_subscription_id(subscription_id, opts = {})
      data, _status_code, _headers = get_pricing_component_value_by_subscription_id_with_http_info(subscription_id, opts)
      return data
    end

    # Returns a collection of pricing-component-values, specified by the subscription-ID parameter.By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueBySubscriptionID.html\&quot;}
    # @param subscription_id The string subscription-ID of the pricing-component-value.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value to return.
    # @option opts [Integer] :records The maximum number of pricing-component-values to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(PricingComponentValuePagedMetadata, Fixnum, Hash)>] PricingComponentValuePagedMetadata data, response status code and response headers
    def get_pricing_component_value_by_subscription_id_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluesApi.get_pricing_component_value_by_subscription_id ..."
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling PricingcomponentvaluesApi.get_pricing_component_value_by_subscription_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-values/subscription/{subscription-ID}".sub('{' + 'subscription-ID' + '}', subscription_id.to_s)

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
        :return_type => 'PricingComponentValuePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluesApi#get_pricing_component_value_by_subscription_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a pricing-component-value.
    # {\"nickname\":\"Update a value\",\"request\":\"updatePricingComponentValueRequest.html\",\"response\":\"updatePricingComponentValueResponse.html\"}
    # @param pricing_component_value The pricing-component-value object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [PricingComponentValuePagedMetadata]
    def update_pricing_component_value(pricing_component_value, opts = {})
      data, _status_code, _headers = update_pricing_component_value_with_http_info(pricing_component_value, opts)
      return data
    end

    # Update a pricing-component-value.
    # {\&quot;nickname\&quot;:\&quot;Update a value\&quot;,\&quot;request\&quot;:\&quot;updatePricingComponentValueRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePricingComponentValueResponse.html\&quot;}
    # @param pricing_component_value The pricing-component-value object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingComponentValuePagedMetadata, Fixnum, Hash)>] PricingComponentValuePagedMetadata data, response status code and response headers
    def update_pricing_component_value_with_http_info(pricing_component_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluesApi.update_pricing_component_value ..."
      end
      # verify the required parameter 'pricing_component_value' is set
      if @api_client.config.client_side_validation && pricing_component_value.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_component_value' when calling PricingcomponentvaluesApi.update_pricing_component_value"
      end
      # resource path
      local_var_path = "/pricing-component-values"

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
      post_body = @api_client.object_to_http_body(pricing_component_value)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingComponentValuePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluesApi#update_pricing_component_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
