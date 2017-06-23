=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an organization.
    # {\"nickname\":\"Create\",\"request\":\"createOrganizationRequest.html\",\"response\":\"createOrganizationResponse.html\"}
    # @param organization The organization object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [OrganizationPagedMetadata]
    def create_organization(organization, opts = {})
      data, _status_code, _headers = create_organization_with_http_info(organization, opts)
      return data
    end

    # Create an organization.
    # {\&quot;nickname\&quot;:\&quot;Create\&quot;,\&quot;request\&quot;:\&quot;createOrganizationRequest.html\&quot;,\&quot;response\&quot;:\&quot;createOrganizationResponse.html\&quot;}
    # @param organization The organization object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationPagedMetadata, Fixnum, Hash)>] OrganizationPagedMetadata data, response status code and response headers
    def create_organization_with_http_info(organization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.create_organization ..."
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling OrganizationsApi.create_organization"
      end
      # resource path
      local_var_path = "/organizations"

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
      post_body = @api_client.object_to_http_body(organization)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrganizationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#create_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of all my asociated organizations. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get Mine\",\"response\":\"getOrganizationAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first organization to return. (default to 0)
    # @option opts [Integer] :records The maximum number of organizations to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [OrganizationPagedMetadata]
    def get_all_my_organizations(opts = {})
      data, _status_code, _headers = get_all_my_organizations_with_http_info(opts)
      return data
    end

    # Returns a collection of all my asociated organizations. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get Mine\&quot;,\&quot;response\&quot;:\&quot;getOrganizationAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first organization to return.
    # @option opts [Integer] :records The maximum number of organizations to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(OrganizationPagedMetadata, Fixnum, Hash)>] OrganizationPagedMetadata data, response status code and response headers
    def get_all_my_organizations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.get_all_my_organizations ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/organizations/mine"

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
        :return_type => 'OrganizationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_all_my_organizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a collection of all organizations. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Get All\",\"response\":\"getOrganizationAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first organization to return. (default to 0)
    # @option opts [Integer] :records The maximum number of organizations to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned. (default to true)
    # @return [OrganizationPagedMetadata]
    def get_all_organizations(opts = {})
      data, _status_code, _headers = get_all_organizations_with_http_info(opts)
      return data
    end

    # Returns a collection of all organizations. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Get All\&quot;,\&quot;response\&quot;:\&quot;getOrganizationAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first organization to return.
    # @option opts [Integer] :records The maximum number of organizations to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
    # @return [Array<(OrganizationPagedMetadata, Fixnum, Hash)>] OrganizationPagedMetadata data, response status code and response headers
    def get_all_organizations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.get_all_organizations ..."
      end
      if @api_client.config.client_side_validation && opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/organizations"

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
        :return_type => 'OrganizationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_all_organizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single organization, specified by the customer-code parameter.
    # {\"nickname\":\"Retrieve by Customer-Code\",\"response\":\"getOrganizationByCustomer.html\"}
    # @param customer_code The unique customer code of the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [OrganizationPagedMetadata]
    def get_organization_by_customer_code(customer_code, opts = {})
      data, _status_code, _headers = get_organization_by_customer_code_with_http_info(customer_code, opts)
      return data
    end

    # Returns a single organization, specified by the customer-code parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by Customer-Code\&quot;,\&quot;response\&quot;:\&quot;getOrganizationByCustomer.html\&quot;}
    # @param customer_code The unique customer code of the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(OrganizationPagedMetadata, Fixnum, Hash)>] OrganizationPagedMetadata data, response status code and response headers
    def get_organization_by_customer_code_with_http_info(customer_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.get_organization_by_customer_code ..."
      end
      # verify the required parameter 'customer_code' is set
      if @api_client.config.client_side_validation && customer_code.nil?
        fail ArgumentError, "Missing the required parameter 'customer_code' when calling OrganizationsApi.get_organization_by_customer_code"
      end
      # resource path
      local_var_path = "/organizations/customer-code/{customer-code}".sub('{' + 'customer-code' + '}', customer_code.to_s)

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
        :return_type => 'OrganizationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_organization_by_customer_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single Organization, specified by the organization-ID parameter.
    # {\"nickname\":\"Retrieve by id\",\"response\":\"getOrganizationByID.html\"}
    # @param organization_id ID of the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [OrganizationPagedMetadata]
    def get_organization_by_id(organization_id, opts = {})
      data, _status_code, _headers = get_organization_by_id_with_http_info(organization_id, opts)
      return data
    end

    # Returns a single Organization, specified by the organization-ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by id\&quot;,\&quot;response\&quot;:\&quot;getOrganizationByID.html\&quot;}
    # @param organization_id ID of the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(OrganizationPagedMetadata, Fixnum, Hash)>] OrganizationPagedMetadata data, response status code and response headers
    def get_organization_by_id_with_http_info(organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.get_organization_by_id ..."
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.get_organization_by_id"
      end
      # resource path
      local_var_path = "/organizations/{organization-ID}".sub('{' + 'organization-ID' + '}', organization_id.to_s)

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
        :return_type => 'OrganizationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_organization_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single Organization, specified by the name parameter.
    # {\"nickname\":\"Retrieve by Name\",\"response\":\"getOrganizationByName.html\"}
    # @param name The name of the Organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [OrganizationPagedMetadata]
    def get_organization_by_name(name, opts = {})
      data, _status_code, _headers = get_organization_by_name_with_http_info(name, opts)
      return data
    end

    # Returns a single Organization, specified by the name parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by Name\&quot;,\&quot;response\&quot;:\&quot;getOrganizationByName.html\&quot;}
    # @param name The name of the Organization.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(OrganizationPagedMetadata, Fixnum, Hash)>] OrganizationPagedMetadata data, response status code and response headers
    def get_organization_by_name_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.get_organization_by_name ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling OrganizationsApi.get_organization_by_name"
      end
      # resource path
      local_var_path = "/organizations/name/{name}".sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'OrganizationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#get_organization_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an organization.
    # {\"nickname\":\"Updated\",\"request\":\"updateOrganizationRequest.html\",\"response\":\"updateOrganizationResponse.html\"}
    # @param organization The organization object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [OrganizationPagedMetadata]
    def update_organization(organization, opts = {})
      data, _status_code, _headers = update_organization_with_http_info(organization, opts)
      return data
    end

    # Update an organization.
    # {\&quot;nickname\&quot;:\&quot;Updated\&quot;,\&quot;request\&quot;:\&quot;updateOrganizationRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateOrganizationResponse.html\&quot;}
    # @param organization The organization object to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationPagedMetadata, Fixnum, Hash)>] OrganizationPagedMetadata data, response status code and response headers
    def update_organization_with_http_info(organization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.update_organization ..."
      end
      # verify the required parameter 'organization' is set
      if @api_client.config.client_side_validation && organization.nil?
        fail ArgumentError, "Missing the required parameter 'organization' when calling OrganizationsApi.update_organization"
      end
      # resource path
      local_var_path = "/organizations"

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
      post_body = @api_client.object_to_http_body(organization)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrganizationPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#update_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
