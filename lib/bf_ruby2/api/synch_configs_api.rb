=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class SynchConfigsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a synch configuration.
    # {\"nickname\":\"Create a new synch configuration\",\"request\":\"createSynchConfigRequest.html\",\"response\":\"createSynchConfigResponse.html\"}
    # @param synch_config The data synch config object to be created.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronisationConfigurationPagedMetadata]
    def create_sync_config(synch_config, opts = {})
      data, _status_code, _headers = create_sync_config_with_http_info(synch_config, opts)
      return data
    end

    # Create a synch configuration.
    # {\&quot;nickname\&quot;:\&quot;Create a new synch configuration\&quot;,\&quot;request\&quot;:\&quot;createSynchConfigRequest.html\&quot;,\&quot;response\&quot;:\&quot;createSynchConfigResponse.html\&quot;}
    # @param synch_config The data synch config object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronisationConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationConfigurationPagedMetadata data, response status code and response headers
    def create_sync_config_with_http_info(synch_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchConfigsApi.create_sync_config ..."
      end
      # verify the required parameter 'synch_config' is set
      if @api_client.config.client_side_validation && synch_config.nil?
        fail ArgumentError, "Missing the required parameter 'synch_config' when calling SynchConfigsApi.create_sync_config"
      end
      # resource path
      local_var_path = "/synchConfigs"

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
      post_body = @api_client.object_to_http_body(synch_config)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronisationConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchConfigsApi#create_sync_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # { \"nickname\" : \"Get all synch configs\",\"response\" : \"getSynchConfigsAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first synch configuration to return. (default to 0)
    # @option opts [Integer] :records The maximum number of configs to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [DataSynchronisationConfigurationPagedMetadata]
    def get_all_sync_configs(opts = {})
      data, _status_code, _headers = get_all_sync_configs_with_http_info(opts)
      return data
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # { \&quot;nickname\&quot; : \&quot;Get all synch configs\&quot;,\&quot;response\&quot; : \&quot;getSynchConfigsAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first synch configuration to return.
    # @option opts [Integer] :records The maximum number of configs to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(DataSynchronisationConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationConfigurationPagedMetadata data, response status code and response headers
    def get_all_sync_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchConfigsApi.get_all_sync_configs ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/synchConfigs"

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
        :return_type => 'DataSynchronisationConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchConfigsApi#get_all_sync_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single config, specified by the ID parameter.
    # { \"nickname\" : \"Retrieve an existing synch config\",\"response\" : \"getSynchConfigByID.html\"}
    # @param synch_configs_id ID of the Synch Configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [DataSynchronisationConfigurationPagedMetadata]
    def get_sync_config(synch_configs_id, opts = {})
      data, _status_code, _headers = get_sync_config_with_http_info(synch_configs_id, opts)
      return data
    end

    # Returns a single config, specified by the ID parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve an existing synch config\&quot;,\&quot;response\&quot; : \&quot;getSynchConfigByID.html\&quot;}
    # @param synch_configs_id ID of the Synch Configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronisationConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationConfigurationPagedMetadata data, response status code and response headers
    def get_sync_config_with_http_info(synch_configs_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchConfigsApi.get_sync_config ..."
      end
      # verify the required parameter 'synch_configs_id' is set
      if @api_client.config.client_side_validation && synch_configs_id.nil?
        fail ArgumentError, "Missing the required parameter 'synch_configs_id' when calling SynchConfigsApi.get_sync_config"
      end
      # resource path
      local_var_path = "/synchConfigs/{synchConfigs-ID}".sub('{' + 'synchConfigs-ID' + '}', synch_configs_id.to_s)

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
        :return_type => 'DataSynchronisationConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchConfigsApi#get_sync_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection configurations, specified by the platform parameter.
    # { \"nickname\" : \"Retrieve by platform\",\"response\" : \"getSynchConfigsByPlatform.html\"}
    # @param platform The type of the synch configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronisationConfigurationPagedMetadata]
    def get_sync_config_by_platform(platform, opts = {})
      data, _status_code, _headers = get_sync_config_by_platform_with_http_info(platform, opts)
      return data
    end

    # Returns a collection configurations, specified by the platform parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve by platform\&quot;,\&quot;response\&quot; : \&quot;getSynchConfigsByPlatform.html\&quot;}
    # @param platform The type of the synch configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronisationConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationConfigurationPagedMetadata data, response status code and response headers
    def get_sync_config_by_platform_with_http_info(platform, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchConfigsApi.get_sync_config_by_platform ..."
      end
      # verify the required parameter 'platform' is set
      if @api_client.config.client_side_validation && platform.nil?
        fail ArgumentError, "Missing the required parameter 'platform' when calling SynchConfigsApi.get_sync_config_by_platform"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Salesforce'].include?(platform)
        fail ArgumentError, "invalid value for 'platform', must be one of Salesforce"
      end
      # resource path
      local_var_path = "/synchConfigs/platform/{platform}".sub('{' + 'platform' + '}', platform.to_s)

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
        :return_type => 'DataSynchronisationConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchConfigsApi#get_sync_config_by_platform\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection configurations, specified by the username parameter.
    # { \"nickname\" : \"Retrieve by username\",\"response\" : \"getSynchConfigByUsername.html\"}
    # @param username The username in the synch configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronisationConfigurationPagedMetadata]
    def get_sync_config_by_username(username, opts = {})
      data, _status_code, _headers = get_sync_config_by_username_with_http_info(username, opts)
      return data
    end

    # Returns a collection configurations, specified by the username parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve by username\&quot;,\&quot;response\&quot; : \&quot;getSynchConfigByUsername.html\&quot;}
    # @param username The username in the synch configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronisationConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationConfigurationPagedMetadata data, response status code and response headers
    def get_sync_config_by_username_with_http_info(username, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchConfigsApi.get_sync_config_by_username ..."
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling SynchConfigsApi.get_sync_config_by_username"
      end
      # resource path
      local_var_path = "/synchConfigs/username/{username}".sub('{' + 'username' + '}', username.to_s)

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
        :return_type => 'DataSynchronisationConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchConfigsApi#get_sync_config_by_username\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a synch configuration.
    # { \"nickname\" : \"Update a synch config\", \"request\" : \"updateSyncConfigRequest.html\" ,\"response\" : \"updateSyncConfigResponse.html\" }
    # @param synch_config The synch configuration object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronisationConfigurationPagedMetadata]
    def update_sync_config(synch_config, opts = {})
      data, _status_code, _headers = update_sync_config_with_http_info(synch_config, opts)
      return data
    end

    # Update a synch configuration.
    # { \&quot;nickname\&quot; : \&quot;Update a synch config\&quot;, \&quot;request\&quot; : \&quot;updateSyncConfigRequest.html\&quot; ,\&quot;response\&quot; : \&quot;updateSyncConfigResponse.html\&quot; }
    # @param synch_config The synch configuration object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronisationConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationConfigurationPagedMetadata data, response status code and response headers
    def update_sync_config_with_http_info(synch_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchConfigsApi.update_sync_config ..."
      end
      # verify the required parameter 'synch_config' is set
      if @api_client.config.client_side_validation && synch_config.nil?
        fail ArgumentError, "Missing the required parameter 'synch_config' when calling SynchConfigsApi.update_sync_config"
      end
      # resource path
      local_var_path = "/synchConfigs"

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
      post_body = @api_client.object_to_http_body(synch_config)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronisationConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchConfigsApi#update_sync_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
