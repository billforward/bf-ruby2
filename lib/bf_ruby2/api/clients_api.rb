=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class ClientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a client.
    # {\"nickname\":\"Create\",\"request\":\"createClientRequest.html\",\"response\":\"createClientResponse.html\"}
    # @param client The client object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [ClientPagedMetadata]
    def create_client(client, opts = {})
      data, _status_code, _headers = create_client_with_http_info(client, opts)
      return data
    end

    # Create a client.
    # {\&quot;nickname\&quot;:\&quot;Create\&quot;,\&quot;request\&quot;:\&quot;createClientRequest.html\&quot;,\&quot;response\&quot;:\&quot;createClientResponse.html\&quot;}
    # @param client The client object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientPagedMetadata, Fixnum, Hash)>] ClientPagedMetadata data, response status code and response headers
    def create_client_with_http_info(client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ClientsApi.create_client ..."
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling ClientsApi.create_client"
      end
      # resource path
      local_var_path = "/clients"

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
      post_body = @api_client.object_to_http_body(client)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClientPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#create_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of clients.
    # {\"nickname\":\"Get All\",\"response\":\"getClientAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first client to return. (default to 0)
    # @option opts [Integer] :records The maximum number of clients to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [ClientPagedMetadata]
    def get_all_clients(opts = {})
      data, _status_code, _headers = get_all_clients_with_http_info(opts)
      return data
    end

    # Returns a collection of clients.
    # {\&quot;nickname\&quot;:\&quot;Get All\&quot;,\&quot;response\&quot;:\&quot;getClientAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first client to return.
    # @option opts [Integer] :records The maximum number of clients to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(ClientPagedMetadata, Fixnum, Hash)>] ClientPagedMetadata data, response status code and response headers
    def get_all_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ClientsApi.get_all_clients ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/clients"

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
        :return_type => 'ClientPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#get_all_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single client, specified by the client-ID parameter.
    # {\"nickname\":\"Retrieve by id\",\"response\":\"getClientByID.html\"}
    # @param client_id The string ID of the client.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [ClientPagedMetadata]
    def get_client_by_id(client_id, opts = {})
      data, _status_code, _headers = get_client_by_id_with_http_info(client_id, opts)
      return data
    end

    # Returns a single client, specified by the client-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by id\&quot;,\&quot;response\&quot;:\&quot;getClientByID.html\&quot;}
    # @param client_id The string ID of the client.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(ClientPagedMetadata, Fixnum, Hash)>] ClientPagedMetadata data, response status code and response headers
    def get_client_by_id_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ClientsApi.get_client_by_id ..."
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling ClientsApi.get_client_by_id"
      end
      # resource path
      local_var_path = "/clients/{client-ID}".sub('{' + 'client-ID' + '}', client_id.to_s)

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
        :return_type => 'ClientPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#get_client_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a client.
    # {\"nickname\":\"Update\",\"request\":\"updateClientRequest.html\",\"response\":\"updateClientResponse.html\"}
    # @param client The client object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [ClientPagedMetadata]
    def update_client(client, opts = {})
      data, _status_code, _headers = update_client_with_http_info(client, opts)
      return data
    end

    # Update a client.
    # {\&quot;nickname\&quot;:\&quot;Update\&quot;,\&quot;request\&quot;:\&quot;updateClientRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateClientResponse.html\&quot;}
    # @param client The client object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientPagedMetadata, Fixnum, Hash)>] ClientPagedMetadata data, response status code and response headers
    def update_client_with_http_info(client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ClientsApi.update_client ..."
      end
      # verify the required parameter 'client' is set
      if @api_client.config.client_side_validation && client.nil?
        fail ArgumentError, "Missing the required parameter 'client' when calling ClientsApi.update_client"
      end
      # resource path
      local_var_path = "/clients"

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
      post_body = @api_client.object_to_http_body(client)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClientPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientsApi#update_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
