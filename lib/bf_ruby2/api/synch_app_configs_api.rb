=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class SynchAppConfigsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a synch app configuration.
    # {\"nickname\":\"Create a new synch app configuration\",\"request\":\"createSynchAppConfigurationRequest.html\",\"response\":\"createSynchAppConfigurationResponse.html\"}
    # @param synch_app_config The data synch app config object to be created.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronisationAppConfigurationPagedMetadata]
    def create_sync_app_config(synch_app_config, opts = {})
      data, _status_code, _headers = create_sync_app_config_with_http_info(synch_app_config, opts)
      return data
    end

    # Create a synch app configuration.
    # {\&quot;nickname\&quot;:\&quot;Create a new synch app configuration\&quot;,\&quot;request\&quot;:\&quot;createSynchAppConfigurationRequest.html\&quot;,\&quot;response\&quot;:\&quot;createSynchAppConfigurationResponse.html\&quot;}
    # @param synch_app_config The data synch app config object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronisationAppConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationAppConfigurationPagedMetadata data, response status code and response headers
    def create_sync_app_config_with_http_info(synch_app_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchAppConfigsApi.create_sync_app_config ..."
      end
      # verify the required parameter 'synch_app_config' is set
      if @api_client.config.client_side_validation && synch_app_config.nil?
        fail ArgumentError, "Missing the required parameter 'synch_app_config' when calling SynchAppConfigsApi.create_sync_app_config"
      end
      # resource path
      local_var_path = "/synchAppConfigs"

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
      post_body = @api_client.object_to_http_body(synch_app_config)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronisationAppConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchAppConfigsApi#create_sync_app_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single config, specified by the ID parameter.
    # { \"nickname\" : \"Retrieve an existing synch config\",\"response\" : \"getSynchAppConfigByID.html\"}
    # @param synch_app_configs_id ID of the Synch App Configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [DataSynchronisationAppConfigurationPagedMetadata]
    def get_sync_app_config(synch_app_configs_id, opts = {})
      data, _status_code, _headers = get_sync_app_config_with_http_info(synch_app_configs_id, opts)
      return data
    end

    # Returns a single config, specified by the ID parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve an existing synch config\&quot;,\&quot;response\&quot; : \&quot;getSynchAppConfigByID.html\&quot;}
    # @param synch_app_configs_id ID of the Synch App Configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronisationAppConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationAppConfigurationPagedMetadata data, response status code and response headers
    def get_sync_app_config_with_http_info(synch_app_configs_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchAppConfigsApi.get_sync_app_config ..."
      end
      # verify the required parameter 'synch_app_configs_id' is set
      if @api_client.config.client_side_validation && synch_app_configs_id.nil?
        fail ArgumentError, "Missing the required parameter 'synch_app_configs_id' when calling SynchAppConfigsApi.get_sync_app_config"
      end
      # resource path
      local_var_path = "/synchAppConfigs/{synchAppConfigs-ID}".sub('{' + 'synchAppConfigs-ID' + '}', synch_app_configs_id.to_s)

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
        :return_type => 'DataSynchronisationAppConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchAppConfigsApi#get_sync_app_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection configurations, specified by the platform parameter.
    # { \"nickname\" : \"Retrieve by platform\",\"response\" : \"getSynchAppConfigsByPlatform.html\"}
    # @param platform The type of the synch app configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronisationAppConfigurationPagedMetadata]
    def get_sync_app_config_by_platform(platform, opts = {})
      data, _status_code, _headers = get_sync_app_config_by_platform_with_http_info(platform, opts)
      return data
    end

    # Returns a collection configurations, specified by the platform parameter.
    # { \&quot;nickname\&quot; : \&quot;Retrieve by platform\&quot;,\&quot;response\&quot; : \&quot;getSynchAppConfigsByPlatform.html\&quot;}
    # @param platform The type of the synch app configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronisationAppConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationAppConfigurationPagedMetadata data, response status code and response headers
    def get_sync_app_config_by_platform_with_http_info(platform, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchAppConfigsApi.get_sync_app_config_by_platform ..."
      end
      # verify the required parameter 'platform' is set
      if @api_client.config.client_side_validation && platform.nil?
        fail ArgumentError, "Missing the required parameter 'platform' when calling SynchAppConfigsApi.get_sync_app_config_by_platform"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Salesforce'].include?(platform)
        fail ArgumentError, "invalid value for 'platform', must be one of Salesforce"
      end
      # resource path
      local_var_path = "/synchAppConfigs/platform/{platform}".sub('{' + 'platform' + '}', platform.to_s)

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
        :return_type => 'DataSynchronisationAppConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchAppConfigsApi#get_sync_app_config_by_platform\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a synch app configuration.
    # { \"nickname\" : \"Update a sync app configuration\", \"request\" : \"updateSyncAppConfigRequest.html\" ,\"response\" : \"updateSyncAppConfigResponse.html\" }
    # @param synch_app_config The synch app configuration object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronisationAppConfigurationPagedMetadata]
    def update_sync_app_config(synch_app_config, opts = {})
      data, _status_code, _headers = update_sync_app_config_with_http_info(synch_app_config, opts)
      return data
    end

    # Update a synch app configuration.
    # { \&quot;nickname\&quot; : \&quot;Update a sync app configuration\&quot;, \&quot;request\&quot; : \&quot;updateSyncAppConfigRequest.html\&quot; ,\&quot;response\&quot; : \&quot;updateSyncAppConfigResponse.html\&quot; }
    # @param synch_app_config The synch app configuration object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronisationAppConfigurationPagedMetadata, Fixnum, Hash)>] DataSynchronisationAppConfigurationPagedMetadata data, response status code and response headers
    def update_sync_app_config_with_http_info(synch_app_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchAppConfigsApi.update_sync_app_config ..."
      end
      # verify the required parameter 'synch_app_config' is set
      if @api_client.config.client_side_validation && synch_app_config.nil?
        fail ArgumentError, "Missing the required parameter 'synch_app_config' when calling SynchAppConfigsApi.update_sync_app_config"
      end
      # resource path
      local_var_path = "/synchAppConfigs"

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
      post_body = @api_client.object_to_http_body(synch_app_config)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronisationAppConfigurationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchAppConfigsApi#update_sync_app_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
