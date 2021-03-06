=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class SynchJobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a synch job.
    # {\"nickname\":\"Create a new sync job\",\"request\":\"createSynchJobRequest.html\",\"response\":\"createSynchJobResponse.html\"}
    # @param synch_job The data synch job object to be created.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronizationJobPagedMetadata]
    def create_sync_job(synch_job, opts = {})
      data, _status_code, _headers = create_sync_job_with_http_info(synch_job, opts)
      return data
    end

    # Create a synch job.
    # {\&quot;nickname\&quot;:\&quot;Create a new sync job\&quot;,\&quot;request\&quot;:\&quot;createSynchJobRequest.html\&quot;,\&quot;response\&quot;:\&quot;createSynchJobResponse.html\&quot;}
    # @param synch_job The data synch job object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def create_sync_job_with_http_info(synch_job, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.create_sync_job ..."
      end
      # verify the required parameter 'synch_job' is set
      if @api_client.config.client_side_validation && synch_job.nil?
        fail ArgumentError, "Missing the required parameter 'synch_job' when calling SynchJobsApi.create_sync_job"
      end
      # resource path
      local_var_path = "/synchJobs"

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
      post_body = @api_client.object_to_http_body(synch_job)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#create_sync_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get all synch jobs\",\"response\":\"getSynchJobsAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first synch job to return. (default to 0)
    # @option opts [Integer] :records The maximum number of synch jobs to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [DataSynchronizationJobPagedMetadata]
    def get_all_sync_jobs(opts = {})
      data, _status_code, _headers = get_all_sync_jobs_with_http_info(opts)
      return data
    end

    # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get all synch jobs\&quot;,\&quot;response\&quot;:\&quot;getSynchJobsAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first synch job to return.
    # @option opts [Integer] :records The maximum number of synch jobs to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_all_sync_jobs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_all_sync_jobs ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/synchJobs"

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_all_sync_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single job, specified by the ID parameter.
    # {\"nickname\":\"Retrieve an existing synch job\",\"response\":\"getSyncJobByID.html\"}
    # @param synch_job_id ID of the Sync Job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_id(synch_job_id, opts = {})
      data, _status_code, _headers = get_sync_job_by_id_with_http_info(synch_job_id, opts)
      return data
    end

    # Returns a single job, specified by the ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing synch job\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByID.html\&quot;}
    # @param synch_job_id ID of the Sync Job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_id_with_http_info(synch_job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_id ..."
      end
      # verify the required parameter 'synch_job_id' is set
      if @api_client.config.client_side_validation && synch_job_id.nil?
        fail ArgumentError, "Missing the required parameter 'synch_job_id' when calling SynchJobsApi.get_sync_job_by_id"
      end
      # resource path
      local_var_path = "/synchJobs/{synchJob-ID}".sub('{' + 'synchJob-ID' + '}', synch_job_id.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the scope parameter.
    # {\"nickname\":\"Retrieve by scope\",\"response\":\"getSyncJobByScope.html\"}
    # @param scope The scope of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_scope(scope, opts = {})
      data, _status_code, _headers = get_sync_job_by_scope_with_http_info(scope, opts)
      return data
    end

    # Returns a collection jobs, specified by the scope parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by scope\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByScope.html\&quot;}
    # @param scope The scope of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_scope_with_http_info(scope, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_scope ..."
      end
      # verify the required parameter 'scope' is set
      if @api_client.config.client_side_validation && scope.nil?
        fail ArgumentError, "Missing the required parameter 'scope' when calling SynchJobsApi.get_sync_job_by_scope"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Manual', 'Scheduled'].include?(scope)
        fail ArgumentError, "invalid value for 'scope', must be one of Manual, Scheduled"
      end
      # resource path
      local_var_path = "/synchJobs/scope/{scope}".sub('{' + 'scope' + '}', scope.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_scope\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the state parameter.
    # {\"nickname\":\"Retrieve by state\",\"response\":\"getSyncJobByState.html\"}
    # @param state The state of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_state(state, opts = {})
      data, _status_code, _headers = get_sync_job_by_state_with_http_info(state, opts)
      return data
    end

    # Returns a collection jobs, specified by the state parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by state\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByState.html\&quot;}
    # @param state The state of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_state_with_http_info(state, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_state ..."
      end
      # verify the required parameter 'state' is set
      if @api_client.config.client_side_validation && state.nil?
        fail ArgumentError, "Missing the required parameter 'state' when calling SynchJobsApi.get_sync_job_by_state"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pending', 'Complete', 'Failed', 'Cancelled', 'Processing'].include?(state)
        fail ArgumentError, "invalid value for 'state', must be one of Pending, Complete, Failed, Cancelled, Processing"
      end
      # resource path
      local_var_path = "/synchJobs/state/{state}".sub('{' + 'state' + '}', state.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the target parameter.
    # {\"nickname\":\"Retrieve by target\",\"response\":\"getSyncJobByTarget.html\"}
    # @param target The target of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_target(target, opts = {})
      data, _status_code, _headers = get_sync_job_by_target_with_http_info(target, opts)
      return data
    end

    # Returns a collection jobs, specified by the target parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by target\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByTarget.html\&quot;}
    # @param target The target of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_target_with_http_info(target, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_target ..."
      end
      # verify the required parameter 'target' is set
      if @api_client.config.client_side_validation && target.nil?
        fail ArgumentError, "Missing the required parameter 'target' when calling SynchJobsApi.get_sync_job_by_target"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Salesforce'].include?(target)
        fail ArgumentError, "invalid value for 'target', must be one of Salesforce"
      end
      # resource path
      local_var_path = "/synchJobs/target/{target}".sub('{' + 'target' + '}', target.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_target\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection jobs, specified by the type parameter.
    # {\"nickname\":\"Retrieve by type\",\"response\":\"getSyncJobByType.html\"}
    # @param type The type of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [DataSynchronizationJobPagedMetadata]
    def get_sync_job_by_type(type, opts = {})
      data, _status_code, _headers = get_sync_job_by_type_with_http_info(type, opts)
      return data
    end

    # Returns a collection jobs, specified by the type parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by type\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByType.html\&quot;}
    # @param type The type of the synch job.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def get_sync_job_by_type_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.get_sync_job_by_type ..."
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling SynchJobsApi.get_sync_job_by_type"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Incremental', 'Full'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of Incremental, Full"
      end
      # resource path
      local_var_path = "/synchJobs/type/{type}".sub('{' + 'type' + '}', type.to_s)

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
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#get_sync_job_by_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a synch job.
    # {\"nickname\":\"Update a synch job\",\"request\":\"updateSyncJobRequest.html\",\"response\":\"updateSyncJobResponse.html\"}
    # @param synch_job The synch job object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [DataSynchronizationJobPagedMetadata]
    def update_sync_job(synch_job, opts = {})
      data, _status_code, _headers = update_sync_job_with_http_info(synch_job, opts)
      return data
    end

    # Update a synch job.
    # {\&quot;nickname\&quot;:\&quot;Update a synch job\&quot;,\&quot;request\&quot;:\&quot;updateSyncJobRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateSyncJobResponse.html\&quot;}
    # @param synch_job The synch job object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DataSynchronizationJobPagedMetadata, Fixnum, Hash)>] DataSynchronizationJobPagedMetadata data, response status code and response headers
    def update_sync_job_with_http_info(synch_job, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SynchJobsApi.update_sync_job ..."
      end
      # verify the required parameter 'synch_job' is set
      if @api_client.config.client_side_validation && synch_job.nil?
        fail ArgumentError, "Missing the required parameter 'synch_job' when calling SynchJobsApi.update_sync_job"
      end
      # resource path
      local_var_path = "/synchJobs"

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
      post_body = @api_client.object_to_http_body(synch_job)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DataSynchronizationJobPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SynchJobsApi#update_sync_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
