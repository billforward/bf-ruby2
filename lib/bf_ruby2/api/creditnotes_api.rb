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

module Bfwd
  class CreditnotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a credit note.
    # {\"nickname\":\"Create a new credit note\",\"request\":\"createCreditNoteRequest.html\",\"response\":\"createCreditNoteResponse.html\"}
    # @param credit_note The credit note object to be created.
    # @param [Hash] opts the optional parameters
    # @return [CreditNotePagedMetadata]
    def create_credit_note(credit_note, opts = {})
      data, _status_code, _headers = create_credit_note_with_http_info(credit_note, opts)
      return data
    end

    # Create a credit note.
    # {\&quot;nickname\&quot;:\&quot;Create a new credit note\&quot;,\&quot;request\&quot;:\&quot;createCreditNoteRequest.html\&quot;,\&quot;response\&quot;:\&quot;createCreditNoteResponse.html\&quot;}
    # @param credit_note The credit note object to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNotePagedMetadata, Fixnum, Hash)>] CreditNotePagedMetadata data, response status code and response headers
    def create_credit_note_with_http_info(credit_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CreditnotesApi.create_credit_note ..."
      end
      # verify the required parameter 'credit_note' is set
      fail ArgumentError, "Missing the required parameter 'credit_note' when calling CreditnotesApi.create_credit_note" if credit_note.nil?
      # resource path
      local_var_path = "/credit-notes".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(credit_note)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreditNotePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditnotesApi#create_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single credit-note, specified by the ID parameter.
    # {\"nickname\":\"Retrieve an existing credit note\",\"response\":\"getCreditNoteByID.html\"}
    # @param credit_note_id ID of the credit-note.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [CreditNotePagedMetadata]
    def get_credit_note_by_id(credit_note_id, opts = {})
      data, _status_code, _headers = get_credit_note_by_id_with_http_info(credit_note_id, opts)
      return data
    end

    # Returns a single credit-note, specified by the ID parameter.
    # {\&quot;nickname\&quot;:\&quot;Retrieve an existing credit note\&quot;,\&quot;response\&quot;:\&quot;getCreditNoteByID.html\&quot;}
    # @param credit_note_id ID of the credit-note.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @return [Array<(CreditNotePagedMetadata, Fixnum, Hash)>] CreditNotePagedMetadata data, response status code and response headers
    def get_credit_note_by_id_with_http_info(credit_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CreditnotesApi.get_credit_note_by_id ..."
      end
      # verify the required parameter 'credit_note_id' is set
      fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditnotesApi.get_credit_note_by_id" if credit_note_id.nil?
      # resource path
      local_var_path = "/credit-notes/{credit-note-ID}".sub('{format}','json').sub('{' + 'credit-note-ID' + '}', credit_note_id.to_s)

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
        :return_type => 'CreditNotePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditnotesApi#get_credit_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns credit notes for an account.
    # {\"nickname\":\"Retrieve by account\",\"response\":\"getCreditNotesByAccount.html\"}
    # @param account_id ID of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first payment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of payments to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to id)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [CreditNotePagedMetadata]
    def get_credit_note_for_account(account_id, opts = {})
      data, _status_code, _headers = get_credit_note_for_account_with_http_info(account_id, opts)
      return data
    end

    # Returns credit notes for an account.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by account\&quot;,\&quot;response\&quot;:\&quot;getCreditNotesByAccount.html\&quot;}
    # @param account_id ID of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first payment to return.
    # @option opts [Integer] :records The maximum number of payments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(CreditNotePagedMetadata, Fixnum, Hash)>] CreditNotePagedMetadata data, response status code and response headers
    def get_credit_note_for_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CreditnotesApi.get_credit_note_for_account ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling CreditnotesApi.get_credit_note_for_account" if account_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/credit-notes/account/{account-ID}".sub('{format}','json').sub('{' + 'account-ID' + '}', account_id.to_s)

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
        :return_type => 'CreditNotePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditnotesApi#get_credit_note_for_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns credit notes for an invoice.
    # {\"nickname\":\"Retrieve by invoice\",\"response\":\"getCreditNotesByInvoice.html\"}
    # @param invoice_id ID of the Invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first payment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of payments to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to id)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [CreditNotePagedMetadata]
    def get_credit_note_for_invoice(invoice_id, opts = {})
      data, _status_code, _headers = get_credit_note_for_invoice_with_http_info(invoice_id, opts)
      return data
    end

    # Returns credit notes for an invoice.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by invoice\&quot;,\&quot;response\&quot;:\&quot;getCreditNotesByInvoice.html\&quot;}
    # @param invoice_id ID of the Invoice.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first payment to return.
    # @option opts [Integer] :records The maximum number of payments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(CreditNotePagedMetadata, Fixnum, Hash)>] CreditNotePagedMetadata data, response status code and response headers
    def get_credit_note_for_invoice_with_http_info(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CreditnotesApi.get_credit_note_for_invoice ..."
      end
      # verify the required parameter 'invoice_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_id' when calling CreditnotesApi.get_credit_note_for_invoice" if invoice_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/credit-notes/invoice/{invoice-ID}".sub('{format}','json').sub('{' + 'invoice-ID' + '}', invoice_id.to_s)

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
        :return_type => 'CreditNotePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditnotesApi#get_credit_note_for_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns credit notes for an subscription.
    # {\"nickname\":\"Retrieve by subscription\",\"response\":\"getCreditNotesSubscription.html\"}
    # @param subscription_id ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first payment to return. (default to 0)
    # @option opts [Integer] :records The maximum number of payments to return. (default to 10)
    # @option opts [String] :order_by Specify a field used to order the result set. (default to id)
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC. (default to DESC)
    # @return [CreditNotePagedMetadata]
    def get_credit_note_for_subscription(subscription_id, opts = {})
      data, _status_code, _headers = get_credit_note_for_subscription_with_http_info(subscription_id, opts)
      return data
    end

    # Returns credit notes for an subscription.
    # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription\&quot;,\&quot;response\&quot;:\&quot;getCreditNotesSubscription.html\&quot;}
    # @param subscription_id ID of the subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
    # @option opts [Integer] :offset The offset from the first payment to return.
    # @option opts [Integer] :records The maximum number of payments to return.
    # @option opts [String] :order_by Specify a field used to order the result set.
    # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
    # @return [Array<(CreditNotePagedMetadata, Fixnum, Hash)>] CreditNotePagedMetadata data, response status code and response headers
    def get_credit_note_for_subscription_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CreditnotesApi.get_credit_note_for_subscription ..."
      end
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling CreditnotesApi.get_credit_note_for_subscription" if subscription_id.nil?
      if opts[:'order'] && !['ASC', 'DESC'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = "/credit-notes/subscription/{subscription-ID}".sub('{format}','json').sub('{' + 'subscription-ID' + '}', subscription_id.to_s)

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
        :return_type => 'CreditNotePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditnotesApi#get_credit_note_for_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes any remaining value from credit note
    # {\"nickname\":\"Removes remaining value from credit note\",\"response\":\"deleteCreditNote.html\"}
    # @param credit_note_id ID of the credit-note.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [CreditNotePagedMetadata]
    def retire_credit_note(credit_note_id, organizations, opts = {})
      data, _status_code, _headers = retire_credit_note_with_http_info(credit_note_id, organizations, opts)
      return data
    end

    # Removes any remaining value from credit note
    # {\&quot;nickname\&quot;:\&quot;Removes remaining value from credit note\&quot;,\&quot;response\&quot;:\&quot;deleteCreditNote.html\&quot;}
    # @param credit_note_id ID of the credit-note.
    # @param organizations A list of organization-IDs used to restrict the scope of API calls.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditNotePagedMetadata, Fixnum, Hash)>] CreditNotePagedMetadata data, response status code and response headers
    def retire_credit_note_with_http_info(credit_note_id, organizations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CreditnotesApi.retire_credit_note ..."
      end
      # verify the required parameter 'credit_note_id' is set
      fail ArgumentError, "Missing the required parameter 'credit_note_id' when calling CreditnotesApi.retire_credit_note" if credit_note_id.nil?
      # verify the required parameter 'organizations' is set
      fail ArgumentError, "Missing the required parameter 'organizations' when calling CreditnotesApi.retire_credit_note" if organizations.nil?
      # resource path
      local_var_path = "/credit-notes/{credit-note-ID}".sub('{format}','json').sub('{' + 'credit-note-ID' + '}', credit_note_id.to_s)

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
        :return_type => 'CreditNotePagedMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditnotesApi#retire_credit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
