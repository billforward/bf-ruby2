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

module BillForward
  class PricingcomponentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a pricing-component.
    # {\"nickname\":\"Create a new pricing-component\",\"request\":\"createPricingComponentRequest.html\",\"response\":\"createPricingComponentResponse.html\"}
    # @param pricing_component The pricing-component object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [PricingComponentPagedMetadata]
    def create_pricing_component(pricing_component, opts = {})
      data, _status_code, _headers = create_pricing_component_with_http_info(pricing_component, opts)
      return data
    end

    # Create a pricing-component.
    # {\&quot;nickname\&quot;:\&quot;Create a new pricing-component\&quot;,\&quot;request\&quot;:\&quot;createPricingComponentRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPricingComponentResponse.html\&quot;}
    # @param pricing_component The pricing-component object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingComponentPagedMetadata, Fixnum, Hash)>] PricingComponentPagedMetadata data, response status code and response headers
    def create_pricing_component_with_http_info(pricing_component, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentsApi.create_pricing_component ..."
      end
      # verify the required parameter 'pricing_component' is set
      fail ArgumentError, "Missing the required parameter 'pricing_component' when calling PricingcomponentsApi.create_pricing_component" if pricing_component.nil?
      # resource path
      local_var_path = "/pricing-components".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/xml', 'application/xml', 'application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(pricing_component)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingComponentPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentsApi#create_pricing_component\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-components. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all pricing-components\",\"response\":\"getPricingComponentsAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-components to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [PricingComponentPagedMetadata]
    def get_all_pricing_components(opts = {})
      data, _status_code, _headers = get_all_pricing_components_with_http_info(opts)
      return data
    end

    # Returns a collection of pricing-components. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all pricing-components\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentsAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return.
    # @option opts [Integer] :records The maximum number of pricing-components to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(PricingComponentPagedMetadata, Fixnum, Hash)>] PricingComponentPagedMetadata data, response status code and response headers
    def get_all_pricing_components_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentsApi.get_all_pricing_components ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-components".sub('{format}','json')

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
      local_header_accept = ['application/json']
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
        :return_type => 'PricingComponentPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentsApi#get_all_pricing_components\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-components, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve an existing pricing-component\",\"response\":\"getPricingComponentsByID.html\"}
    # @param pricing_component_id The string ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-components to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [PricingComponentPagedMetadata]
    def get_pricing_component(pricing_component_id, opts = {})
      data, _status_code, _headers = get_pricing_component_with_http_info(pricing_component_id, opts)
      return data
    end

    # Returns a collection of pricing-components, specified by the pricing-component-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing pricing-component\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentsByID.html\&quot;}
    # @param pricing_component_id The string ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return.
    # @option opts [Integer] :records The maximum number of pricing-components to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(PricingComponentPagedMetadata, Fixnum, Hash)>] PricingComponentPagedMetadata data, response status code and response headers
    def get_pricing_component_with_http_info(pricing_component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentsApi.get_pricing_component ..."
      end
      # verify the required parameter 'pricing_component_id' is set
      fail ArgumentError, "Missing the required parameter 'pricing_component_id' when calling PricingcomponentsApi.get_pricing_component" if pricing_component_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-components/{pricing-component-ID}".sub('{format}','json').sub('{' + 'pricing-component-ID' + '}', pricing_component_id.to_s)

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
      local_header_accept = ['application/json']
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
        :return_type => 'PricingComponentPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentsApi#get_pricing_component\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-components, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by rate-plan\",\"response\":\"getPricingComponentsByPRP.html\"}
    # @param product_rate_plan_id The string product-rate-plan-ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-components to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [PricingComponentPagedMetadata]
    def get_pricing_component_by_product_rate_plan_id(product_rate_plan_id, opts = {})
      data, _status_code, _headers = get_pricing_component_by_product_rate_plan_id_with_http_info(product_rate_plan_id, opts)
      return data
    end

    # Returns a collection of pricing-components, specified by the product-rate-plan-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by rate-plan\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentsByPRP.html\&quot;}
    # @param product_rate_plan_id The string product-rate-plan-ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component to return.
    # @option opts [Integer] :records The maximum number of pricing-components to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(PricingComponentPagedMetadata, Fixnum, Hash)>] PricingComponentPagedMetadata data, response status code and response headers
    def get_pricing_component_by_product_rate_plan_id_with_http_info(product_rate_plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentsApi.get_pricing_component_by_product_rate_plan_id ..."
      end
      # verify the required parameter 'product_rate_plan_id' is set
      fail ArgumentError, "Missing the required parameter 'product_rate_plan_id' when calling PricingcomponentsApi.get_pricing_component_by_product_rate_plan_id" if product_rate_plan_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-components/product-rate-plan/{product-rate-plan-ID}".sub('{format}','json').sub('{' + 'product-rate-plan-ID' + '}', product_rate_plan_id.to_s)

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
      local_header_accept = ['application/json']
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
        :return_type => 'PricingComponentPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentsApi#get_pricing_component_by_product_rate_plan_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retires the pricing-component specified by the pricing-component-ID parameter.
    # {\"nickname\":\"Delete a pricing-component\"}
    # @param pricing_component_id The string ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization IDs used to restrict the scope of API calls.
    # @return [PricingComponentPagedMetadata]
    def retire_pricing_component(pricing_component_id, opts = {})
      data, _status_code, _headers = retire_pricing_component_with_http_info(pricing_component_id, opts)
      return data
    end

    # Retires the pricing-component specified by the pricing-component-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Delete a pricing-component\&quot;}
    # @param pricing_component_id The string ID of the pricing-component.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization IDs used to restrict the scope of API calls.
    # @return [Array<(PricingComponentPagedMetadata, Fixnum, Hash)>] PricingComponentPagedMetadata data, response status code and response headers
    def retire_pricing_component_with_http_info(pricing_component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentsApi.retire_pricing_component ..."
      end
      # verify the required parameter 'pricing_component_id' is set
      fail ArgumentError, "Missing the required parameter 'pricing_component_id' when calling PricingcomponentsApi.retire_pricing_component" if pricing_component_id.nil?
      # resource path
      local_var_path = "/pricing-components/{pricing-component-ID}".sub('{format}','json').sub('{' + 'pricing-component-ID' + '}', pricing_component_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['text/plain']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'PricingComponentPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentsApi#retire_pricing_component\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a pricing-component.
    # {\"nickname\":\"Update a pricing-component\",\"request\":\"updatePricingComponentRequest.html\",\"response\":\"updatePricingComponentResponse.html\"}
    # @param pricing_component The pricing-component object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [PricingComponentPagedMetadata]
    def update_pricing_component(pricing_component, opts = {})
      data, _status_code, _headers = update_pricing_component_with_http_info(pricing_component, opts)
      return data
    end

    # Update a pricing-component.
    # {\&quot;nickname\&quot;:\&quot;Update a pricing-component\&quot;,\&quot;request\&quot;:\&quot;updatePricingComponentRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePricingComponentResponse.html\&quot;}
    # @param pricing_component The pricing-component object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingComponentPagedMetadata, Fixnum, Hash)>] PricingComponentPagedMetadata data, response status code and response headers
    def update_pricing_component_with_http_info(pricing_component, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentsApi.update_pricing_component ..."
      end
      # verify the required parameter 'pricing_component' is set
      fail ArgumentError, "Missing the required parameter 'pricing_component' when calling PricingcomponentsApi.update_pricing_component" if pricing_component.nil?
      # resource path
      local_var_path = "/pricing-components".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/xml', 'application/xml', 'application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(pricing_component)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingComponentPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentsApi#update_pricing_component\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end