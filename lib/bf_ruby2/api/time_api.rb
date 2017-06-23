=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module Bfwd
  class TimeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # {\"nickname\":\"\",\"request\":\"advanceSubscriptionRequest.html\",\"response\":\"advanceSubscription.html\"}
    # @param request The request
    # @param [Hash] opts the optional parameters
    # @return [TimeResponsePagedMetadata]
    def get_time_swagger(request, opts = {})
      data, _status_code, _headers = get_time_swagger_with_http_info(request, opts)
      return data
    end

    # 
    # {\&quot;nickname\&quot;:\&quot;\&quot;,\&quot;request\&quot;:\&quot;advanceSubscriptionRequest.html\&quot;,\&quot;response\&quot;:\&quot;advanceSubscription.html\&quot;}
    # @param request The request
    # @param [Hash] opts the optional parameters
    # @return [Array<(TimeResponsePagedMetadata, Fixnum, Hash)>] TimeResponsePagedMetadata data, response status code and response headers
    def get_time_swagger_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TimeApi.get_time_swagger ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling TimeApi.get_time_swagger"
      end
      # resource path
      local_var_path = "/time/swagger-end-point"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/plain'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeResponsePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeApi#get_time_swagger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
