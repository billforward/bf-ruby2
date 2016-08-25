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
  class PricingcomponenttiersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create
    # {\"nickname\":\"Create a new tier\",\"request\":\"createPricingComponentTierRequest.html\",\"response\":\"createPricingComponentTierResponse.html\"}
    # @param pricing_component_tier The pricing-component-tier object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [PricingComponentTierPagedMetadata]
    def create_pricing_component_tier(pricing_component_tier, opts = {})
      data, _status_code, _headers = create_pricing_component_tier_with_http_info(pricing_component_tier, opts)
      return data
    end

    # Create
    # {\&quot;nickname\&quot;:\&quot;Create a new tier\&quot;,\&quot;request\&quot;:\&quot;createPricingComponentTierRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPricingComponentTierResponse.html\&quot;}
    # @param pricing_component_tier The pricing-component-tier object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingComponentTierPagedMetadata, Fixnum, Hash)>] PricingComponentTierPagedMetadata data, response status code and response headers
    def create_pricing_component_tier_with_http_info(pricing_component_tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponenttiersApi.create_pricing_component_tier ..."
      end
      # verify the required parameter 'pricing_component_tier' is set
      fail ArgumentError, "Missing the required parameter 'pricing_component_tier' when calling PricingcomponenttiersApi.create_pricing_component_tier" if pricing_component_tier.nil?
      # resource path
      local_var_path = "/pricing-component-tiers".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(pricing_component_tier)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingComponentTierPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponenttiersApi#create_pricing_component_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-tier-tiers. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all tiers\",\"response\":\"getPricingComponentTiersAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [PricingComponentTierPagedMetadata]
    def get_all_pricing_component_tiers(opts = {})
      data, _status_code, _headers = get_all_pricing_component_tiers_with_http_info(opts)
      return data
    end

    # Returns a collection of pricing-component-tier-tiers. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all tiers\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentTiersAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return.
    # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(PricingComponentTierPagedMetadata, Fixnum, Hash)>] PricingComponentTierPagedMetadata data, response status code and response headers
    def get_all_pricing_component_tiers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponenttiersApi.get_all_pricing_component_tiers ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-tiers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'PricingComponentTierPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponenttiersApi#get_all_pricing_component_tiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-tier-tiers, specified by the pricing-component-tier-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve an existing tier\",\"response\":\"getPricingComponentTiersByID.html\"}
    # @param pricing_component_tier_id The string ID of the pricing-component-tier-tier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [PricingComponentTierPagedMetadata]
    def get_pricing_component_tier(pricing_component_tier_id, opts = {})
      data, _status_code, _headers = get_pricing_component_tier_with_http_info(pricing_component_tier_id, opts)
      return data
    end

    # Returns a collection of pricing-component-tier-tiers, specified by the pricing-component-tier-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing tier\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentTiersByID.html\&quot;}
    # @param pricing_component_tier_id The string ID of the pricing-component-tier-tier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return.
    # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(PricingComponentTierPagedMetadata, Fixnum, Hash)>] PricingComponentTierPagedMetadata data, response status code and response headers
    def get_pricing_component_tier_with_http_info(pricing_component_tier_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponenttiersApi.get_pricing_component_tier ..."
      end
      # verify the required parameter 'pricing_component_tier_id' is set
      fail ArgumentError, "Missing the required parameter 'pricing_component_tier_id' when calling PricingcomponenttiersApi.get_pricing_component_tier" if pricing_component_tier_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-tiers/{pricing-component-tier-ID}".sub('{format}','json').sub('{' + 'pricing-component-tier-ID' + '}', pricing_component_tier_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['text/plain']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'PricingComponentTierPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponenttiersApi#get_pricing_component_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-tier-tiers, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by rate-plan\",\"response\":\"getPricingComponentTiersByPRP.html\"}
    # @param product_rate_plan_id The string product-rate-plan-ID of the pricing-component-tier-tier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [PricingComponentTierPagedMetadata]
    def get_pricing_component_tier_by_product_rate_plan_id(product_rate_plan_id, opts = {})
      data, _status_code, _headers = get_pricing_component_tier_by_product_rate_plan_id_with_http_info(product_rate_plan_id, opts)
      return data
    end

    # Returns a collection of pricing-component-tier-tiers, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by rate-plan\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentTiersByPRP.html\&quot;}
    # @param product_rate_plan_id The string product-rate-plan-ID of the pricing-component-tier-tier.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-tier-tier to return.
    # @option opts [Integer] :records The maximum number of pricing-component-tier-tiers to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(PricingComponentTierPagedMetadata, Fixnum, Hash)>] PricingComponentTierPagedMetadata data, response status code and response headers
    def get_pricing_component_tier_by_product_rate_plan_id_with_http_info(product_rate_plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponenttiersApi.get_pricing_component_tier_by_product_rate_plan_id ..."
      end
      # verify the required parameter 'product_rate_plan_id' is set
      fail ArgumentError, "Missing the required parameter 'product_rate_plan_id' when calling PricingcomponenttiersApi.get_pricing_component_tier_by_product_rate_plan_id" if product_rate_plan_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-tiers/product-rate-plan/{product-rate-plan-ID}".sub('{format}','json').sub('{' + 'product-rate-plan-ID' + '}', product_rate_plan_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'records'] = opts[:'records'] if !opts[:'records'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['text/plain']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'PricingComponentTierPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponenttiersApi#get_pricing_component_tier_by_product_rate_plan_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update.
    # {\"nickname\":\"Update a tier\",\"request\":\"updatePricingComponentTierRequest.html\",\"response\":\"updatePricingComponentTierResponse.html\"}
    # @param pricing_component_tier The pricing-component-tier object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [PricingComponentTierPagedMetadata]
    def update_pricing_component_tier(pricing_component_tier, opts = {})
      data, _status_code, _headers = update_pricing_component_tier_with_http_info(pricing_component_tier, opts)
      return data
    end

    # Update.
    # {\&quot;nickname\&quot;:\&quot;Update a tier\&quot;,\&quot;request\&quot;:\&quot;updatePricingComponentTierRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePricingComponentTierResponse.html\&quot;}
    # @param pricing_component_tier The pricing-component-tier object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingComponentTierPagedMetadata, Fixnum, Hash)>] PricingComponentTierPagedMetadata data, response status code and response headers
    def update_pricing_component_tier_with_http_info(pricing_component_tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponenttiersApi.update_pricing_component_tier ..."
      end
      # verify the required parameter 'pricing_component_tier' is set
      fail ArgumentError, "Missing the required parameter 'pricing_component_tier' when calling PricingcomponenttiersApi.update_pricing_component_tier" if pricing_component_tier.nil?
      # resource path
      local_var_path = "/pricing-component-tiers".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(pricing_component_tier)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingComponentTierPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponenttiersApi#update_pricing_component_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
