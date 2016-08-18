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
  class PermissionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new permission.
    # {\"nickname\":\"Create a new permission\",\"request\":\"createPermissionRequest.html\",\"response\":\"createPermissionResponse.html\"}
    # @param permission_request 
    # @param [Hash] opts the optional parameters
    # @return [BFPermissionPagedMetadata]
    def create_permission(permission_request, opts = {})
      data, _status_code, _headers = create_permission_with_http_info(permission_request, opts)
      return data
    end

    # Create a new permission.
    # {\&quot;nickname\&quot;:\&quot;Create a new permission\&quot;,\&quot;request\&quot;:\&quot;createPermissionRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPermissionResponse.html\&quot;}
    # @param permission_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BFPermissionPagedMetadata, Fixnum, Hash)>] BFPermissionPagedMetadata data, response status code and response headers
    def create_permission_with_http_info(permission_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PermissionsApi.create_permission ..."
      end
      # verify the required parameter 'permission_request' is set
      fail ArgumentError, "Missing the required parameter 'permission_request' when calling PermissionsApi.create_permission" if permission_request.nil?
      # resource path
      local_var_path = "/permissions".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(permission_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BFPermissionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#create_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a collection of all permissions. By default 10 values are returned. Records are returned in natural order.
    # {\"nickname\":\"Retrieve all permissions\",\"response\":\"getPermissionAll.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first subscription to return. (default to 0)
    # @option opts [Integer] :records The maximum number of subscriptions to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to created)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @option opts [BOOLEAN] :include_retired Whether retired subscriptions should be returned. (default to false)
    # @return [BFPermissionPagedMetadata]
    def get_all_permissions(opts = {})
      data, _status_code, _headers = get_all_permissions_with_http_info(opts)
      return data
    end

    # Retrieves a collection of all permissions. By default 10 values are returned. Records are returned in natural order.
    # {\&quot;nickname\&quot;:\&quot;Retrieve all permissions\&quot;,\&quot;response\&quot;:\&quot;getPermissionAll.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first subscription to return.
    # @option opts [Integer] :records The maximum number of subscriptions to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @option opts [BOOLEAN] :include_retired Whether retired subscriptions should be returned.
    # @return [Array<(BFPermissionPagedMetadata, Fixnum, Hash)>] BFPermissionPagedMetadata data, response status code and response headers
    def get_all_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PermissionsApi.get_all_permissions ..."
      end
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/permissions".sub('{format}','json')

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
        :return_type => 'BFPermissionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_all_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves all the available actions for the specified resource.
    # {\"nickname\":\"Retrieve available actions\",\"response\":\"getAvailableActions.html\"}
    # @param resource 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [PermissionActionEntityPagedMetadata]
    def get_available_actions_for_resource(resource, opts = {})
      data, _status_code, _headers = get_available_actions_for_resource_with_http_info(resource, opts)
      return data
    end

    # Retrieves all the available actions for the specified resource.
    # {\&quot;nickname\&quot;:\&quot;Retrieve available actions\&quot;,\&quot;response\&quot;:\&quot;getAvailableActions.html\&quot;}
    # @param resource 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(PermissionActionEntityPagedMetadata, Fixnum, Hash)>] PermissionActionEntityPagedMetadata data, response status code and response headers
    def get_available_actions_for_resource_with_http_info(resource, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PermissionsApi.get_available_actions_for_resource ..."
      end
      # verify the required parameter 'resource' is set
      fail ArgumentError, "Missing the required parameter 'resource' when calling PermissionsApi.get_available_actions_for_resource" if resource.nil?
      # verify enum value
      unless ['All', 'Account', 'Address', 'Amendment', 'Analytics', 'Audit', 'BFAdmin', 'BFJS', 'Charge', 'Client', 'Configuration', 'CouponBook', 'CouponBookDefinition', 'CouponDefinition', 'CouponInstance', 'CouponModifier', 'CouponRule', 'Coupon', 'Credit', 'CybersourceToken', 'Dunning', 'Email', 'FixedTerm', 'Gateway', 'Invoice', 'Notification', 'Organization', 'Password', 'PaymentMethod', 'Payment', 'Permission', 'PricingComponent', 'PricingComponentTier', 'PricingComponentValueChange', 'PricingComponentValue', 'ProductRatePlan', 'Product', 'ProductResources', 'Profile', 'Quote', 'Receipt', 'Refund', 'Salesforce', 'Search', 'Subscription', 'Tax', 'UnitOfMeasure', 'Usage', 'Username', 'User', 'UserResources', 'Webhook'].include?(resource)
        fail ArgumentError, "invalid value for 'resource', must be one of All, Account, Address, Amendment, Analytics, Audit, BFAdmin, BFJS, Charge, Client, Configuration, CouponBook, CouponBookDefinition, CouponDefinition, CouponInstance, CouponModifier, CouponRule, Coupon, Credit, CybersourceToken, Dunning, Email, FixedTerm, Gateway, Invoice, Notification, Organization, Password, PaymentMethod, Payment, Permission, PricingComponent, PricingComponentTier, PricingComponentValueChange, PricingComponentValue, ProductRatePlan, Product, ProductResources, Profile, Quote, Receipt, Refund, Salesforce, Search, Subscription, Tax, UnitOfMeasure, Usage, Username, User, UserResources, Webhook"
      end
      # resource path
      local_var_path = "/permissions/resources/{resource}".sub('{format}','json').sub('{' + 'resource' + '}', resource.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

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
        :return_type => 'PermissionActionEntityPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_available_actions_for_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves all available resource.
    # {\"nickname\":\"Retrieve available resources\",\"response\":\"getAvailableResources.html\"}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [PermissionResourceEntityPagedMetadata]
    def get_available_resources(opts = {})
      data, _status_code, _headers = get_available_resources_with_http_info(opts)
      return data
    end

    # Retrieves all available resource.
    # {\&quot;nickname\&quot;:\&quot;Retrieve available resources\&quot;,\&quot;response\&quot;:\&quot;getAvailableResources.html\&quot;}
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(PermissionResourceEntityPagedMetadata, Fixnum, Hash)>] PermissionResourceEntityPagedMetadata data, response status code and response headers
    def get_available_resources_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PermissionsApi.get_available_resources ..."
      end
      # resource path
      local_var_path = "/permissions/resources".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

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
        :return_type => 'PermissionResourceEntityPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_available_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a single permission, specified by the ID parameter.
    # {\"nickname\":\"Retrieve a permission\",\"response\":\"getPermissionByID.html\"}
    # @param permission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [BOOLEAN] :include_retired Whether retired subscriptions should be returned. (default to false)
    # @return [BFPermissionPagedMetadata]
    def get_permission_by_id(permission_id, opts = {})
      data, _status_code, _headers = get_permission_by_id_with_http_info(permission_id, opts)
      return data
    end

    # Retrieves a single permission, specified by the ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve a permission\&quot;,\&quot;response\&quot;:\&quot;getPermissionByID.html\&quot;}
    # @param permission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [BOOLEAN] :include_retired Whether retired subscriptions should be returned.
    # @return [Array<(BFPermissionPagedMetadata, Fixnum, Hash)>] BFPermissionPagedMetadata data, response status code and response headers
    def get_permission_by_id_with_http_info(permission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PermissionsApi.get_permission_by_id ..."
      end
      # verify the required parameter 'permission_id' is set
      fail ArgumentError, "Missing the required parameter 'permission_id' when calling PermissionsApi.get_permission_by_id" if permission_id.nil?
      # resource path
      local_var_path = "/permissions/{permission-ID}".sub('{format}','json').sub('{' + 'permission-ID' + '}', permission_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?
      query_params[:'include_retired'] = opts[:'include_retired'] if !opts[:'include_retired'].nil?

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
        :return_type => 'BFPermissionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_permission_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revokes a permission
    # {\"nickname\":\"Revoke permission\",\"response\":\"revokePermission.html\",\"request\":\"revokePErmissionRequest.html\"}
    # @param permission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [BFPermissionPagedMetadata]
    def revoke_permission(permission_id, opts = {})
      data, _status_code, _headers = revoke_permission_with_http_info(permission_id, opts)
      return data
    end

    # Revokes a permission
    # {\&quot;nickname\&quot;:\&quot;Revoke permission\&quot;,\&quot;response\&quot;:\&quot;revokePermission.html\&quot;,\&quot;request\&quot;:\&quot;revokePErmissionRequest.html\&quot;}
    # @param permission_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(BFPermissionPagedMetadata, Fixnum, Hash)>] BFPermissionPagedMetadata data, response status code and response headers
    def revoke_permission_with_http_info(permission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PermissionsApi.revoke_permission ..."
      end
      # verify the required parameter 'permission_id' is set
      fail ArgumentError, "Missing the required parameter 'permission_id' when calling PermissionsApi.revoke_permission" if permission_id.nil?
      # resource path
      local_var_path = "/permissions/{permission-ID}".sub('{format}','json').sub('{' + 'permission-ID' + '}', permission_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizations'] = @api_client.build_collection_param(opts[:'organizations'], :multi) if !opts[:'organizations'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json; charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json; charset=utf-8']
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
        :return_type => 'BFPermissionPagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#revoke_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
