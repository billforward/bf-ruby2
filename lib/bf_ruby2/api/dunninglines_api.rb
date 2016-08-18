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
  class DunninglinesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a dunning-line.
    # {\"nickname\":\"Create a new dunning line\",\"request\":\"createDunningLineRequest.html\",\"response\":\"createDunningLineResponse.html\"}
    # @param dunning_line The Dunning-Line object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [DunningLinePagedMetadata]
    def create_dunning_line(dunning_line, opts = {})
      data, _status_code, _headers = create_dunning_line_with_http_info(dunning_line, opts)
      return data
    end

    # Create a dunning-line.
    # {\&quot;nickname\&quot;:\&quot;Create a new dunning line\&quot;,\&quot;request\&quot;:\&quot;createDunningLineRequest.html\&quot;,\&quot;response\&quot;:\&quot;createDunningLineResponse.html\&quot;}
    # @param dunning_line The Dunning-Line object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DunningLinePagedMetadata, Fixnum, Hash)>] DunningLinePagedMetadata data, response status code and response headers
    def create_dunning_line_with_http_info(dunning_line, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DunninglinesApi.create_dunning_line ..."
      end
      # verify the required parameter 'dunning_line' is set
      fail ArgumentError, "Missing the required parameter 'dunning_line' when calling DunninglinesApi.create_dunning_line" if dunning_line.nil?
      # resource path
      local_var_path = "/dunning-lines".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(dunning_line)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DunningLinePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DunninglinesApi#create_dunning_line\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of all dunning-lines. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all dunning lines\",\"response\":\"getDunningLineByID.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first invoice to return. (default to 0)
    # @option opts [Integer] :records The maximum number of invoices to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [DunningLinePagedMetadata]
    def get_all_dunning_lines(opts = {})
      data, _status_code, _headers = get_all_dunning_lines_with_http_info(opts)
      return data
    end

    # Returns a collection of all dunning-lines. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all dunning lines\&quot;,\&quot;response\&quot;:\&quot;getDunningLineByID.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first invoice to return.
    # @option opts [Integer] :records The maximum number of invoices to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(DunningLinePagedMetadata, Fixnum, Hash)>] DunningLinePagedMetadata data, response status code and response headers
    def get_all_dunning_lines_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DunninglinesApi.get_all_dunning_lines ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/dunning-lines".sub('{format}','json')

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
        :return_type => 'DunningLinePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DunninglinesApi#get_all_dunning_lines\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of dunning-lines specified by the index parameter. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve by attempt\",\"response\":\"getDunningLineByID.html\"}
    # @param index The attempt index of the dunning-line.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first invoice to return. (default to 0)
    # @option opts [Integer] :records The maximum number of invoices to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [DunningLinePagedMetadata]
    def get_dunning_line_by_attempt_index(index, opts = {})
      data, _status_code, _headers = get_dunning_line_by_attempt_index_with_http_info(index, opts)
      return data
    end

    # Returns a collection of dunning-lines specified by the index parameter. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by attempt\&quot;,\&quot;response\&quot;:\&quot;getDunningLineByID.html\&quot;}
    # @param index The attempt index of the dunning-line.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first invoice to return.
    # @option opts [Integer] :records The maximum number of invoices to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(DunningLinePagedMetadata, Fixnum, Hash)>] DunningLinePagedMetadata data, response status code and response headers
    def get_dunning_line_by_attempt_index_with_http_info(index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DunninglinesApi.get_dunning_line_by_attempt_index ..."
      end
      # verify the required parameter 'index' is set
      fail ArgumentError, "Missing the required parameter 'index' when calling DunninglinesApi.get_dunning_line_by_attempt_index" if index.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/dunning-lines/attempt-index/{index}".sub('{format}','json').sub('{' + 'index' + '}', index.to_s)

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
        :return_type => 'DunningLinePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DunninglinesApi#get_dunning_line_by_attempt_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single dunning-line, specified by the dunning-line-ID parameter.
    # {\"nickname\":\"Retrieve an existing dunning line\",\"response\":\"getDunningLineByID.html\"}
    # @param dunning_line_id ID of the dunning-line.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DunningLinePagedMetadata]
    def get_dunning_line_by_id(dunning_line_id, opts = {})
      data, _status_code, _headers = get_dunning_line_by_id_with_http_info(dunning_line_id, opts)
      return data
    end

    # Returns a single dunning-line, specified by the dunning-line-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing dunning line\&quot;,\&quot;response\&quot;:\&quot;getDunningLineByID.html\&quot;}
    # @param dunning_line_id ID of the dunning-line.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DunningLinePagedMetadata, Fixnum, Hash)>] DunningLinePagedMetadata data, response status code and response headers
    def get_dunning_line_by_id_with_http_info(dunning_line_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DunninglinesApi.get_dunning_line_by_id ..."
      end
      # verify the required parameter 'dunning_line_id' is set
      fail ArgumentError, "Missing the required parameter 'dunning_line_id' when calling DunninglinesApi.get_dunning_line_by_id" if dunning_line_id.nil?
      # resource path
      local_var_path = "/dunning-lines/{dunning-line-ID}".sub('{format}','json').sub('{' + 'dunning-line-ID' + '}', dunning_line_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json; charset=utf-8', 'text/xml']
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
        :return_type => 'DunningLinePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DunninglinesApi#get_dunning_line_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retires the specified dunning-line.
    # {\"nickname\":\"Delete a dunning line\",\"response\":\"deleteDunningLine.html\"}
    # @param dunning_line_id ID of the dunning-line.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [DunningLinePagedMetadata]
    def retire_dunning_line(dunning_line_id, organizations, opts = {})
      data, _status_code, _headers = retire_dunning_line_with_http_info(dunning_line_id, organizations, opts)
      return data
    end

    # Retires the specified dunning-line.
    # {\&quot;nickname\&quot;:\&quot;Delete a dunning line\&quot;,\&quot;response\&quot;:\&quot;deleteDunningLine.html\&quot;}
    # @param dunning_line_id ID of the dunning-line.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DunningLinePagedMetadata, Fixnum, Hash)>] DunningLinePagedMetadata data, response status code and response headers
    def retire_dunning_line_with_http_info(dunning_line_id, organizations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DunninglinesApi.retire_dunning_line ..."
      end
      # verify the required parameter 'dunning_line_id' is set
      fail ArgumentError, "Missing the required parameter 'dunning_line_id' when calling DunninglinesApi.retire_dunning_line" if dunning_line_id.nil?
      # verify the required parameter 'organizations' is set
      fail ArgumentError, "Missing the required parameter 'organizations' when calling DunninglinesApi.retire_dunning_line" if organizations.nil?
      # resource path
      local_var_path = "/dunning-lines/{dunning-line-ID}".sub('{format}','json').sub('{' + 'dunning-line-ID' + '}', dunning_line_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(organizations, :multi)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DunningLinePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DunninglinesApi#retire_dunning_line\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a dunning-line.
    # {\"nickname\":\"Update a dunning line\",\"request\":\"updateDunningLineRequest.html\",\"response\":\"updateDunningLineResponse.html\"}
    # @param dunning_line The Dunning-Line object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [DunningLinePagedMetadata]
    def update_dunning_line(dunning_line, opts = {})
      data, _status_code, _headers = update_dunning_line_with_http_info(dunning_line, opts)
      return data
    end

    # Update a dunning-line.
    # {\&quot;nickname\&quot;:\&quot;Update a dunning line\&quot;,\&quot;request\&quot;:\&quot;updateDunningLineRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateDunningLineResponse.html\&quot;}
    # @param dunning_line The Dunning-Line object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DunningLinePagedMetadata, Fixnum, Hash)>] DunningLinePagedMetadata data, response status code and response headers
    def update_dunning_line_with_http_info(dunning_line, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DunninglinesApi.update_dunning_line ..."
      end
      # verify the required parameter 'dunning_line' is set
      fail ArgumentError, "Missing the required parameter 'dunning_line' when calling DunninglinesApi.update_dunning_line" if dunning_line.nil?
      # resource path
      local_var_path = "/dunning-lines".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(dunning_line)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DunningLinePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DunninglinesApi#update_dunning_line\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
