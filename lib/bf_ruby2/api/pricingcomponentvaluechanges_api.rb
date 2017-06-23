=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class PricingcomponentvaluechangesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a pricing-component-value-change.
    # {\"nickname\":\"Create\",\"request\":\"createPricingComponentValueChangeRequest.html\",\"response\":\"createPricingComponentValueChangeResponse.html\"}
    # @param pricing_component_value_change The pricing-component-value-change object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [PricingComponentValueChangePagedMetadata]
    def create_pricing_component_value_change(pricing_component_value_change, opts = {})
      data, _status_code, _headers = create_pricing_component_value_change_with_http_info(pricing_component_value_change, opts)
      return data
    end

    # Create a pricing-component-value-change.
    # {\&quot;nickname\&quot;:\&quot;Create\&quot;,\&quot;request\&quot;:\&quot;createPricingComponentValueChangeRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPricingComponentValueChangeResponse.html\&quot;}
    # @param pricing_component_value_change The pricing-component-value-change object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PricingComponentValueChangePagedMetadata, Fixnum, Hash)>] PricingComponentValueChangePagedMetadata data, response status code and response headers
    def create_pricing_component_value_change_with_http_info(pricing_component_value_change, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluechangesApi.create_pricing_component_value_change ..."
      end
      # verify the required parameter 'pricing_component_value_change' is set
      if @api_client.config.client_side_validation && pricing_component_value_change.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_component_value_change' when calling PricingcomponentvaluechangesApi.create_pricing_component_value_change"
      end
      # resource path
      local_var_path = "/pricing-component-value-changes"

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
      post_body = @api_client.object_to_http_body(pricing_component_value_change)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PricingComponentValueChangePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluechangesApi#create_pricing_component_value_change\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-value-changes. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get All\",\"response\":\"getPricingComponentValueChangeAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [PricingComponentValueChangePagedMetadata]
    def get_all_pricing_component_value_changes(opts = {})
      data, _status_code, _headers = get_all_pricing_component_value_changes_with_http_info(opts)
      return data
    end

    # Returns a collection of pricing-component-value-changes. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get All\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueChangeAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return.
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(PricingComponentValueChangePagedMetadata, Fixnum, Hash)>] PricingComponentValueChangePagedMetadata data, response status code and response headers
    def get_all_pricing_component_value_changes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluechangesApi.get_all_pricing_component_value_changes ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-value-changes"

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
        :return_type => 'PricingComponentValueChangePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluechangesApi#get_all_pricing_component_value_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single pricing-component-value-changes, specified by the ID parameter.
    # {\"nickname\":\"Retrieve by id\",\"response\":\"getPricingComponentValueChangeByID.html\"}
    # @param id The string ID of the pricing-component-value-change.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [PricingComponentValueChangePagedMetadata]
    def get_pricing_component_value_change(id, opts = {})
      data, _status_code, _headers = get_pricing_component_value_change_with_http_info(id, opts)
      return data
    end

    # Returns a single pricing-component-value-changes, specified by the ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by id\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueChangeByID.html\&quot;}
    # @param id The string ID of the pricing-component-value-change.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(PricingComponentValueChangePagedMetadata, Fixnum, Hash)>] PricingComponentValueChangePagedMetadata data, response status code and response headers
    def get_pricing_component_value_change_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluechangesApi.get_pricing_component_value_change ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PricingcomponentvaluechangesApi.get_pricing_component_value_change"
      end
      # resource path
      local_var_path = "/pricing-component-value-changes/{ID}".sub('{' + 'ID' + '}', id.to_s)

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
        :return_type => 'PricingComponentValueChangePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluechangesApi#get_pricing_component_value_change\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-value-changes, specified by the pricing-component-value-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by Component-ID\",\"response\":\"getPricingComponentValueChangeByID.html\"}
    # @param pricing_component_id The string ID of the pricing-component-value.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [PricingComponentValueChangePagedMetadata]
    def get_pricing_component_value_change_by_component_id(pricing_component_id, opts = {})
      data, _status_code, _headers = get_pricing_component_value_change_by_component_id_with_http_info(pricing_component_id, opts)
      return data
    end

    # Returns a collection of pricing-component-value-changes, specified by the pricing-component-value-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by Component-ID\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueChangeByID.html\&quot;}
    # @param pricing_component_id The string ID of the pricing-component-value.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return.
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(PricingComponentValueChangePagedMetadata, Fixnum, Hash)>] PricingComponentValueChangePagedMetadata data, response status code and response headers
    def get_pricing_component_value_change_by_component_id_with_http_info(pricing_component_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluechangesApi.get_pricing_component_value_change_by_component_id ..."
      end
      # verify the required parameter 'pricing_component_id' is set
      if @api_client.config.client_side_validation && pricing_component_id.nil?
        fail ArgumentError, "Missing the required parameter 'pricing_component_id' when calling PricingcomponentvaluechangesApi.get_pricing_component_value_change_by_component_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-value-changes/component-ID/{pricing-component-ID}".sub('{' + 'pricing-component-ID' + '}', pricing_component_id.to_s)

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
        :return_type => 'PricingComponentValueChangePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluechangesApi#get_pricing_component_value_change_by_component_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-value-changes, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by Invoice-ID\",\"response\":\"getPricingComponentValueChangeByInvoiceID.html\"}
    # @param invoice_id The string invoice-ID of the pricing-component-value-change.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [PricingComponentValueChangePagedMetadata]
    def get_pricing_component_value_change_by_invoice_id(invoice_id, opts = {})
      data, _status_code, _headers = get_pricing_component_value_change_by_invoice_id_with_http_info(invoice_id, opts)
      return data
    end

    # Returns a collection of pricing-component-value-changes, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by Invoice-ID\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueChangeByInvoiceID.html\&quot;}
    # @param invoice_id The string invoice-ID of the pricing-component-value-change.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return.
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(PricingComponentValueChangePagedMetadata, Fixnum, Hash)>] PricingComponentValueChangePagedMetadata data, response status code and response headers
    def get_pricing_component_value_change_by_invoice_id_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluechangesApi.get_pricing_component_value_change_by_invoice_id ..."
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling PricingcomponentvaluechangesApi.get_pricing_component_value_change_by_invoice_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-value-changes/invoice/{invoice-ID}".sub('{' + 'invoice-ID' + '}', invoice_id.to_s)

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
        :return_type => 'PricingComponentValueChangePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluechangesApi#get_pricing_component_value_change_by_invoice_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of pricing-component-value-changes, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by Subscription-ID\",\"response\":\"getPricingComponentValueChangeBySubscriptionID.html\"}
    # @param subscription_id ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return. (default to 0)
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [PricingComponentValueChangePagedMetadata]
    def get_pricing_component_value_change_by_subscription_id(subscription_id, opts = {})
      data, _status_code, _headers = get_pricing_component_value_change_by_subscription_id_with_http_info(subscription_id, opts)
      return data
    end

    # Returns a collection of pricing-component-value-changes, specified by the subscription-ID parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by Subscription-ID\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueChangeBySubscriptionID.html\&quot;}
    # @param subscription_id ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first pricing-component-value-change to return.
    # @option opts [Integer] :records The maximum number of pricing-component-value-changes to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(PricingComponentValueChangePagedMetadata, Fixnum, Hash)>] PricingComponentValueChangePagedMetadata data, response status code and response headers
    def get_pricing_component_value_change_by_subscription_id_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PricingcomponentvaluechangesApi.get_pricing_component_value_change_by_subscription_id ..."
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling PricingcomponentvaluechangesApi.get_pricing_component_value_change_by_subscription_id"
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/pricing-component-value-changes/subscription/{subscription-ID}".sub('{' + 'subscription-ID' + '}', subscription_id.to_s)

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
        :return_type => 'PricingComponentValueChangePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PricingcomponentvaluechangesApi#get_pricing_component_value_change_by_subscription_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
