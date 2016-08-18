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
  class UsageperiodsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve by subscription and period
    # { \"nickname\" : \"Retrieve by subscription and period\",\"response\" : \"getUsagePeriodsForPeriod.html\"}
    # @param subscription_id The subscriptionID of the usage.
    # @param period_id The periodID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of amendments to return. (default to 8766)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to ASC)
    # @return [UsagePeriodPagedMetadata]
    def get_usage_period(subscription_id, period_id, opts = {})
      data, _status_code, _headers = get_usage_period_with_http_info(subscription_id, period_id, opts)
      return data
    end

    # Retrieve by subscription and period
    # { \&quot;nickname\&quot; : \&quot;Retrieve by subscription and period\&quot;,\&quot;response\&quot; : \&quot;getUsagePeriodsForPeriod.html\&quot;}
    # @param subscription_id The subscriptionID of the usage.
    # @param period_id The periodID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return.
    # @option opts [Integer] :records The maximum number of amendments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @return [Array<(UsagePeriodPagedMetadata, Fixnum, Hash)>] UsagePeriodPagedMetadata data, response status code and response headers
    def get_usage_period_with_http_info(subscription_id, period_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageperiodsApi.get_usage_period ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling UsageperiodsApi.get_usage_period" if subscription_id.nil?
      # verify the required parameter 'period_id' is set
      fail ArgumentError, "Missing the required parameter 'period_id' when calling UsageperiodsApi.get_usage_period" if period_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage-periods/{subscription-id}/{period-id}".sub('{format}','json').sub('{' + 'subscription-id' + '}', subscription_id.to_s).sub('{' + 'period-id' + '}', period_id.to_s)

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
        :return_type => 'UsagePeriodPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageperiodsApi#get_usage_period\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve by subscription
    # { \"nickname\" : \"Retrieve by subscription\",\"response\" : \"getUsagePeriods.html\"}
    # @param subscription_id The subscriptionID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of amendments to return. (default to 8766)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to ASC)
    # @return [UsagePeriodPagedMetadata]
    def get_usage_period_for_all(subscription_id, opts = {})
      data, _status_code, _headers = get_usage_period_for_all_with_http_info(subscription_id, opts)
      return data
    end

    # Retrieve by subscription
    # { \&quot;nickname\&quot; : \&quot;Retrieve by subscription\&quot;,\&quot;response\&quot; : \&quot;getUsagePeriods.html\&quot;}
    # @param subscription_id The subscriptionID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return.
    # @option opts [Integer] :records The maximum number of amendments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @return [Array<(UsagePeriodPagedMetadata, Fixnum, Hash)>] UsagePeriodPagedMetadata data, response status code and response headers
    def get_usage_period_for_all_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageperiodsApi.get_usage_period_for_all ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling UsageperiodsApi.get_usage_period_for_all" if subscription_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage-periods/{subscription-id}".sub('{format}','json').sub('{' + 'subscription-id' + '}', subscription_id.to_s)

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
        :return_type => 'UsagePeriodPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageperiodsApi#get_usage_period_for_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve by invoice)
    # { \"nickname\" : \"Retrieve by invoice\",\"response\" : \"getUsagePeriodForInvoice.html\"}
    # @param subscription_id The subscriptionID of the usage.
    # @param invoice_id The invoiceID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of amendments to return. (default to 8766)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order The direction of any ordering, either ASC or DESC. (default to ASC)
    # @return [UsagePeriodPagedMetadata]
    def get_usage_period_for_invoice(subscription_id, invoice_id, opts = {})
      data, _status_code, _headers = get_usage_period_for_invoice_with_http_info(subscription_id, invoice_id, opts)
      return data
    end

    # Retrieve by invoice)
    # { \&quot;nickname\&quot; : \&quot;Retrieve by invoice\&quot;,\&quot;response\&quot; : \&quot;getUsagePeriodForInvoice.html\&quot;}
    # @param subscription_id The subscriptionID of the usage.
    # @param invoice_id The invoiceID of the usage.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first amendment to return.
    # @option opts [Integer] :records The maximum number of amendments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order The direction of any ordering, either ASC or DESC.
    # @return [Array<(UsagePeriodPagedMetadata, Fixnum, Hash)>] UsagePeriodPagedMetadata data, response status code and response headers
    def get_usage_period_for_invoice_with_http_info(subscription_id, invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsageperiodsApi.get_usage_period_for_invoice ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling UsageperiodsApi.get_usage_period_for_invoice" if subscription_id.nil?
      # verify the required parameter 'invoice_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_id' when calling UsageperiodsApi.get_usage_period_for_invoice" if invoice_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/usage-periods/{subscription-id}/invoice/{invoice-id}".sub('{format}','json').sub('{' + 'subscription-id' + '}', subscription_id.to_s).sub('{' + 'invoice-id' + '}', invoice_id.to_s)

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
        :return_type => 'UsagePeriodPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageperiodsApi#get_usage_period_for_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end