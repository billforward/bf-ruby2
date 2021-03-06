=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class TaxationstrategiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Add a new tax or schedule changes in an existing tax.</p><p>Add a new tax by providing the location and tax percentage. To schedule a tax change specify the ID of the current Tax. A new version of the will be created <i>validFrom</i> the specified date, the existing tax <i>validTill</i> the start of this new tax.</p>
    # {\"nickname\":\"Create a tax\",\"request\":\"createTaxationStrategyRequest.html\",\"response\":\"createTaxationStrategyResponse.html\"}
    # @param taxation_strategy The taxation-strategy object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [TaxationStrategyPagedMetadata]
    def create_taxation_strategy(taxation_strategy, opts = {})
      data, _status_code, _headers = create_taxation_strategy_with_http_info(taxation_strategy, opts)
      return data
    end

    # &lt;p&gt;Add a new tax or schedule changes in an existing tax.&lt;/p&gt;&lt;p&gt;Add a new tax by providing the location and tax percentage. To schedule a tax change specify the ID of the current Tax. A new version of the will be created &lt;i&gt;validFrom&lt;/i&gt; the specified date, the existing tax &lt;i&gt;validTill&lt;/i&gt; the start of this new tax.&lt;/p&gt;
    # {\&quot;nickname\&quot;:\&quot;Create a tax\&quot;,\&quot;request\&quot;:\&quot;createTaxationStrategyRequest.html\&quot;,\&quot;response\&quot;:\&quot;createTaxationStrategyResponse.html\&quot;}
    # @param taxation_strategy The taxation-strategy object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def create_taxation_strategy_with_http_info(taxation_strategy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.create_taxation_strategy ..."
      end
      # verify the required parameter 'taxation_strategy' is set
      if @api_client.config.client_side_validation && taxation_strategy.nil?
        fail ArgumentError, "Missing the required parameter 'taxation_strategy' when calling TaxationstrategiesApi.create_taxation_strategy"
      end
      # resource path
      local_var_path = "/taxation-strategies"

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
      post_body = @api_client.object_to_http_body(taxation_strategy)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#create_taxation_strategy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of all taxation-strategies. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all tax\",\"response\":\"getTaxationStrategyAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return. (default to 0)
    # @option opts [Integer] :records The maximum number of taxation-strategies to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to false)
    # @return [TaxationStrategyPagedMetadata]
    def get_all_taxation_strategies(opts = {})
      data, _status_code, _headers = get_all_taxation_strategies_with_http_info(opts)
      return data
    end

    # Returns a collection of all taxation-strategies. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all tax\&quot;,\&quot;response\&quot;:\&quot;getTaxationStrategyAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return.
    # @option opts [Integer] :records The maximum number of taxation-strategies to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def get_all_taxation_strategies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.get_all_taxation_strategies ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/taxation-strategies"

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
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#get_all_taxation_strategies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the tax currently being applied for the taxation-strategy-ID. To return schedule or historic tax changes the include_retired query parameter should be set to true.
    # {\"nickname\":\"Retrieve an existing tax \",\"response\":\"getTaxationStrategyByID.html\"}
    # @param taxation_strategy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return. (default to 0)
    # @option opts [Integer] :records The maximum number of taxation-strategies to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to false)
    # @return [TaxationStrategyPagedMetadata]
    def get_taxation_strategy_by_consistent_id(taxation_strategy_id, opts = {})
      data, _status_code, _headers = get_taxation_strategy_by_consistent_id_with_http_info(taxation_strategy_id, opts)
      return data
    end

    # Returns the tax currently being applied for the taxation-strategy-ID. To return schedule or historic tax changes the include_retired query parameter should be set to true.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing tax \&quot;,\&quot;response\&quot;:\&quot;getTaxationStrategyByID.html\&quot;}
    # @param taxation_strategy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return.
    # @option opts [Integer] :records The maximum number of taxation-strategies to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def get_taxation_strategy_by_consistent_id_with_http_info(taxation_strategy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.get_taxation_strategy_by_consistent_id ..."
      end
      # verify the required parameter 'taxation_strategy_id' is set
      if @api_client.config.client_side_validation && taxation_strategy_id.nil?
        fail ArgumentError, "Missing the required parameter 'taxation_strategy_id' when calling TaxationstrategiesApi.get_taxation_strategy_by_consistent_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/taxation-strategies/{taxation-strategy-ID}".sub('{' + 'taxation-strategy-ID' + '}', taxation_strategy_id.to_s)

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
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#get_taxation_strategy_by_consistent_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of taxation-strategies, specified by the country parameter. By default 10 values are returned. Records are returned in natural order. To return schedule or historic tax changes the include_retired query parameter should be set to true.
    # {\"nickname\":\"Retrieve by country\",\"response\":\"getTaxationStrategyByCountry.html\"}
    # @param country The country
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return. (default to 0)
    # @option opts [Integer] :records The maximum number of taxation-strategies to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to false)
    # @return [TaxationStrategyPagedMetadata]
    def get_taxation_strategy_by_country(country, opts = {})
      data, _status_code, _headers = get_taxation_strategy_by_country_with_http_info(country, opts)
      return data
    end

    # Returns a collection of taxation-strategies, specified by the country parameter. By default 10 values are returned. Records are returned in natural order. To return schedule or historic tax changes the include_retired query parameter should be set to true.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by country\&quot;,\&quot;response\&quot;:\&quot;getTaxationStrategyByCountry.html\&quot;}
    # @param country The country
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return.
    # @option opts [Integer] :records The maximum number of taxation-strategies to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def get_taxation_strategy_by_country_with_http_info(country, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.get_taxation_strategy_by_country ..."
      end
      # verify the required parameter 'country' is set
      if @api_client.config.client_side_validation && country.nil?
        fail ArgumentError, "Missing the required parameter 'country' when calling TaxationstrategiesApi.get_taxation_strategy_by_country"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['UK', 'USA', 'Canada', 'Mexico', 'Brazil', 'Argentina', 'China', 'France', 'Germany', 'Ireland'].include?(country)
        fail ArgumentError, "invalid value for 'country', must be one of UK, USA, Canada, Mexico, Brazil, Argentina, China, France, Germany, Ireland"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/taxation-strategies/country/{country}".sub('{' + 'country' + '}', country.to_s)

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
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#get_taxation_strategy_by_country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of taxation-strategies, specified by the currency parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by currency\",\"response\":\"getTaxationStrategyByProvince.html\"}
    # @param currency The currency
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return. (default to 0)
    # @option opts [Integer] :records The maximum number of taxation-strategies to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to false)
    # @return [TaxationStrategyPagedMetadata]
    def get_taxation_strategy_by_currency(currency, opts = {})
      data, _status_code, _headers = get_taxation_strategy_by_currency_with_http_info(currency, opts)
      return data
    end

    # Returns a collection of taxation-strategies, specified by the currency parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by currency\&quot;,\&quot;response\&quot;:\&quot;getTaxationStrategyByProvince.html\&quot;}
    # @param currency The currency
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return.
    # @option opts [Integer] :records The maximum number of taxation-strategies to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def get_taxation_strategy_by_currency_with_http_info(currency, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.get_taxation_strategy_by_currency ..."
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling TaxationstrategiesApi.get_taxation_strategy_by_currency"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/taxation-strategies/currency/{currency}".sub('{' + 'currency' + '}', currency.to_s)

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
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#get_taxation_strategy_by_currency\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of taxation-strategies, specified by the province parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by province\",\"response\":\"getTaxationStrategyByProvince.html\"}
    # @param province The province
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return. (default to 0)
    # @option opts [Integer] :records The maximum number of taxation-strategies to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to false)
    # @return [TaxationStrategyPagedMetadata]
    def get_taxation_strategy_by_province(province, opts = {})
      data, _status_code, _headers = get_taxation_strategy_by_province_with_http_info(province, opts)
      return data
    end

    # Returns a collection of taxation-strategies, specified by the province parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by province\&quot;,\&quot;response\&quot;:\&quot;getTaxationStrategyByProvince.html\&quot;}
    # @param province The province
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first taxation-strategy to return.
    # @option opts [Integer] :records The maximum number of taxation-strategies to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def get_taxation_strategy_by_province_with_http_info(province, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.get_taxation_strategy_by_province ..."
      end
      # verify the required parameter 'province' is set
      if @api_client.config.client_side_validation && province.nil?
        fail ArgumentError, "Missing the required parameter 'province' when calling TaxationstrategiesApi.get_taxation_strategy_by_province"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/taxation-strategies/province/{province}".sub('{' + 'province' + '}', province.to_s)

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
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#get_taxation_strategy_by_province\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single taxation-strategy, specified by the taxation-strategy-ID parameter.
    # {\"nickname\":\"Retrieve by version\",\"response\":\"getTaxationStrategyByVersionID.html\"}
    # @param version_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [TaxationStrategyPagedMetadata]
    def get_taxation_strategy_by_version_id(version_id, opts = {})
      data, _status_code, _headers = get_taxation_strategy_by_version_id_with_http_info(version_id, opts)
      return data
    end

    # Returns a single taxation-strategy, specified by the taxation-strategy-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by version\&quot;,\&quot;response\&quot;:\&quot;getTaxationStrategyByVersionID.html\&quot;}
    # @param version_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def get_taxation_strategy_by_version_id_with_http_info(version_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.get_taxation_strategy_by_version_id ..."
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling TaxationstrategiesApi.get_taxation_strategy_by_version_id"
      end
      # resource path
      local_var_path = "/taxation-strategies/version/{version-ID}".sub('{' + 'version-ID' + '}', version_id.to_s)

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
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#get_taxation_strategy_by_version_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retires the taxation-strategy specified by taxation-strategy-ID parameter. Only the version of the tax which has an unbounded (null) validTill can be removed. Removing a tax change will make the previous tax come into effect. For example if you have a Tax in January and 5% and a new tax at 7% from February onwards, you can remove the February tax. Remove the February tax will re-instate the January tax.
    # {\"nickname\":\"Remove a tax change\",\"response\":\"deleteSubscription.html\"}
    # @param version_id 
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [TaxationStrategyPagedMetadata]
    def retire_taxation_strategy(version_id, organizations, opts = {})
      data, _status_code, _headers = retire_taxation_strategy_with_http_info(version_id, organizations, opts)
      return data
    end

    # Retires the taxation-strategy specified by taxation-strategy-ID parameter. Only the version of the tax which has an unbounded (null) validTill can be removed. Removing a tax change will make the previous tax come into effect. For example if you have a Tax in January and 5% and a new tax at 7% from February onwards, you can remove the February tax. Remove the February tax will re-instate the January tax.
    # {\&quot;nickname\&quot;:\&quot;Remove a tax change\&quot;,\&quot;response\&quot;:\&quot;deleteSubscription.html\&quot;}
    # @param version_id 
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def retire_taxation_strategy_with_http_info(version_id, organizations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.retire_taxation_strategy ..."
      end
      # verify the required parameter 'version_id' is set
      if @api_client.config.client_side_validation && version_id.nil?
        fail ArgumentError, "Missing the required parameter 'version_id' when calling TaxationstrategiesApi.retire_taxation_strategy"
      end
      # verify the required parameter 'organizations' is set
      if @api_client.config.client_side_validation && organizations.nil?
        fail ArgumentError, "Missing the required parameter 'organizations' when calling TaxationstrategiesApi.retire_taxation_strategy"
      end
      # resource path
      local_var_path = "/taxation-strategies/version/{version-ID}".sub('{' + 'version-ID' + '}', version_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(organizations, :multi)

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
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#retire_taxation_strategy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a tax.
    # {\"nickname\":\"Update a tax\",\"request\":\"updateTaxationStrategyRequest.html\",\"response\":\"updateTaxationStrategyResponse.html\"}
    # @param taxation_strategy The taxation-strategy object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [TaxationStrategyPagedMetadata]
    def update_taxation_strategy(taxation_strategy, opts = {})
      data, _status_code, _headers = update_taxation_strategy_with_http_info(taxation_strategy, opts)
      return data
    end

    # Update a tax.
    # {\&quot;nickname\&quot;:\&quot;Update a tax\&quot;,\&quot;request\&quot;:\&quot;updateTaxationStrategyRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateTaxationStrategyResponse.html\&quot;}
    # @param taxation_strategy The taxation-strategy object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxationStrategyPagedMetadata, Fixnum, Hash)>] TaxationStrategyPagedMetadata data, response status code and response headers
    def update_taxation_strategy_with_http_info(taxation_strategy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxationstrategiesApi.update_taxation_strategy ..."
      end
      # verify the required parameter 'taxation_strategy' is set
      if @api_client.config.client_side_validation && taxation_strategy.nil?
        fail ArgumentError, "Missing the required parameter 'taxation_strategy' when calling TaxationstrategiesApi.update_taxation_strategy"
      end
      # resource path
      local_var_path = "/taxation-strategies"

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
      post_body = @api_client.object_to_http_body(taxation_strategy)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaxationStrategyPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxationstrategiesApi#update_taxation_strategy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
