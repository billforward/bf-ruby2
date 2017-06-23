=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class UsageroundingstrategiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new rounding strategy
    # {\"nickname\":\"Create a new rounding strategy\",\"request\":\"createUsageRoundingStrategiesRequest.html\",\"response\":\"createUsageRoundingStrategiesResponse.html\"}
    # @param usage_rounding_strategy The usage-rounding-strategy object to be created.
    # @param [Hash] opts the optional parameters
    # @return [UsageRoundingStrategyPagedMetadata]
    def create_usage_rounding_strategy(usage_rounding_strategy, opts = {})
      data, _status_code, _headers = create_usage_rounding_strategy_with_http_info(usage_rounding_strategy, opts)
      return data
    end

    # Create a new rounding strategy
    # {\&quot;nickname\&quot;:\&quot;Create a new rounding strategy\&quot;,\&quot;request\&quot;:\&quot;createUsageRoundingStrategiesRequest.html\&quot;,\&quot;response\&quot;:\&quot;createUsageRoundingStrategiesResponse.html\&quot;}
    # @param usage_rounding_strategy The usage-rounding-strategy object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsageRoundingStrategyPagedMetadata, Fixnum, Hash)>] UsageRoundingStrategyPagedMetadata data, response status code and response headers
    def create_usage_rounding_strategy_with_http_info(usage_rounding_strategy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageroundingstrategiesApi.create_usage_rounding_strategy ..."
      end
      # verify the required parameter 'usage_rounding_strategy' is set
      if @api_client.config.client_side_validation && usage_rounding_strategy.nil?
        fail ArgumentError, "Missing the required parameter 'usage_rounding_strategy' when calling UsageroundingstrategiesApi.create_usage_rounding_strategy"
      end
      # resource path
      local_var_path = "/usage-rounding-strategies"

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
      post_body = @api_client.object_to_http_body(usage_rounding_strategy)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UsageRoundingStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageroundingstrategiesApi#create_usage_rounding_strategy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of usage-rounding-strategies, specified by the usage-rounding-strategies-id parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve an existing round strategy\",\"response\":\"getUsageRoundingStrategiesByID.html\"}
    # @param usage_rounding_strategies_id The string ID of the usage-rounding-strategies.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-components to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [UsageRoundingStrategyPagedMetadata]
    def get_usage_rounding_strategy_by_id(usage_rounding_strategies_id, opts = {})
      data, _status_code, _headers = get_usage_rounding_strategy_by_id_with_http_info(usage_rounding_strategies_id, opts)
      return data
    end

    # Returns a collection of usage-rounding-strategies, specified by the usage-rounding-strategies-id parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing round strategy\&quot;,\&quot;response\&quot;:\&quot;getUsageRoundingStrategiesByID.html\&quot;}
    # @param usage_rounding_strategies_id The string ID of the usage-rounding-strategies.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return.
    # @option opts [Integer] :records The maximum number of pricing-components to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(UsageRoundingStrategyPagedMetadata, Fixnum, Hash)>] UsageRoundingStrategyPagedMetadata data, response status code and response headers
    def get_usage_rounding_strategy_by_id_with_http_info(usage_rounding_strategies_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageroundingstrategiesApi.get_usage_rounding_strategy_by_id ..."
      end
      # verify the required parameter 'usage_rounding_strategies_id' is set
      if @api_client.config.client_side_validation && usage_rounding_strategies_id.nil?
        fail ArgumentError, "Missing the required parameter 'usage_rounding_strategies_id' when calling UsageroundingstrategiesApi.get_usage_rounding_strategy_by_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage-rounding-strategies/{usage-rounding-strategies-ID}".sub('{' + 'usage-rounding-strategies-ID' + '}', usage_rounding_strategies_id.to_s)

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
        :return_type => 'UsageRoundingStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageroundingstrategiesApi#get_usage_rounding_strategy_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of usage-rounding-strategies, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by pricing component\",\"response\":\"getUsageRoundingStrategiesByPricingComponent.html\"}
    # @param pricing_component_id The string pricing-component-ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-components to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [UsageRoundingStrategyPagedMetadata]
    def get_usage_rounding_strategy_by_pricing_component_id(pricing_component_id, opts = {})
      data, _status_code, _headers = get_usage_rounding_strategy_by_pricing_component_id_with_http_info(pricing_component_id, opts)
      return data
    end

    # Returns a collection of usage-rounding-strategies, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by pricing component\&quot;,\&quot;response\&quot;:\&quot;getUsageRoundingStrategiesByPricingComponent.html\&quot;}
    # @param pricing_component_id The string pricing-component-ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return.
    # @option opts [Integer] :records The maximum number of pricing-components to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(UsageRoundingStrategyPagedMetadata, Fixnum, Hash)>] UsageRoundingStrategyPagedMetadata data, response status code and response headers
    def get_usage_rounding_strategy_by_pricing_component_id_with_http_info(pricing_component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageroundingstrategiesApi.get_usage_rounding_strategy_by_pricing_component_id ..."
      end
      # verify the required parameter 'pricing_component_id' is set
      if @api_client.config.client_side_validation && pricing_component_id.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_component_id' when calling UsageroundingstrategiesApi.get_usage_rounding_strategy_by_pricing_component_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage-rounding-strategies/pricing-component/{pricing-component-ID}".sub('{' + 'pricing-component-ID' + '}', pricing_component_id.to_s)

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
        :return_type => 'UsageRoundingStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageroundingstrategiesApi#get_usage_rounding_strategy_by_pricing_component_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a rounding strategy
    # {\"nickname\":\"Update a rounding strategy\",\"request\":\"updateUsageRoundingStrategiesRequest.html\",\"response\":\"updateUsageRoundingStrategiesResponse.html\"}
    # @param usage_rounding_strategy The usage-rounding-strategy object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [UsageRoundingStrategyPagedMetadata]
    def update_usage_rounding_strategy(usage_rounding_strategy, opts = {})
      data, _status_code, _headers = update_usage_rounding_strategy_with_http_info(usage_rounding_strategy, opts)
      return data
    end

    # Update a rounding strategy
    # {\&quot;nickname\&quot;:\&quot;Update a rounding strategy\&quot;,\&quot;request\&quot;:\&quot;updateUsageRoundingStrategiesRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateUsageRoundingStrategiesResponse.html\&quot;}
    # @param usage_rounding_strategy The usage-rounding-strategy object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UsageRoundingStrategyPagedMetadata, Fixnum, Hash)>] UsageRoundingStrategyPagedMetadata data, response status code and response headers
    def update_usage_rounding_strategy_with_http_info(usage_rounding_strategy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageroundingstrategiesApi.update_usage_rounding_strategy ..."
      end
      # verify the required parameter 'usage_rounding_strategy' is set
      if @api_client.config.client_side_validation && usage_rounding_strategy.nil?
        fail ArgumentError, "Missing the required parameter 'usage_rounding_strategy' when calling UsageroundingstrategiesApi.update_usage_rounding_strategy"
      end
      # resource path
      local_var_path = "/usage-rounding-strategies"

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
      post_body = @api_client.object_to_http_body(usage_rounding_strategy)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UsageRoundingStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageroundingstrategiesApi#update_usage_rounding_strategy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
