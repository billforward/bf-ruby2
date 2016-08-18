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
  class QuotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns a quote.
    # {\"nickname\":\"Returns a quote\",\"request\":\"PriceRequest.html\",\"response\":\"PriceCalculation.html\"}
    # @param quote_request A quote request
    # @param [Hash] opts the optional parameters
    # @return [APIQuotePagedMetadata]
    def quote(quote_request, opts = {})
      data, _status_code, _headers = quote_with_http_info(quote_request, opts)
      return data
    end

    # Returns a quote.
    # {\&quot;nickname\&quot;:\&quot;Returns a quote\&quot;,\&quot;request\&quot;:\&quot;PriceRequest.html\&quot;,\&quot;response\&quot;:\&quot;PriceCalculation.html\&quot;}
    # @param quote_request A quote request
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIQuotePagedMetadata, Fixnum, Hash)>] APIQuotePagedMetadata data, response status code and response headers
    def quote_with_http_info(quote_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: QuotesApi.quote ..."
      end
      # verify the required parameter 'quote_request' is set
      fail ArgumentError, "Missing the required parameter 'quote_request' when calling QuotesApi.quote" if quote_request.nil?
      # resource path
      local_var_path = "/quotes".sub('{format}','json')

      # query parameters
      query_params = {}

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
      post_body = @api_client.object_to_http_body(quote_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIQuotePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuotesApi#quote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
