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

require 'spec_helper'
require 'json'

# Unit tests for BillForward::PaymentmethodsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentmethodsApi' do
  before do
    # run before each test
    @instance = BillForward::PaymentmethodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentmethodsApi' do
    it 'should create an instact of PaymentmethodsApi' do
      expect(@instance).to be_instance_of(BillForward::PaymentmethodsApi)
    end
  end

  # unit tests for create_payment_method
  # Create a payment-method.
  # {\&quot;nickname\&quot;:\&quot;Create a new payment method\&quot;,\&quot;request\&quot;:\&quot;createPaymentMethodRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPaymentMethodResponse.html\&quot;}
  # @param payment_method The payment-method object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethodPagedMetadata]
  describe 'create_payment_method test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_payment_method
  # Deletes the payment-method specified by the payment-method-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Delete payment method\&quot;,\&quot;response\&quot;:\&quot;deletePaymentMethod.html\&quot;}
  # @param payment_method_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [PaymentMethodPagedMetadata]
  describe 'delete_payment_method test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_payment_methods
  # Returns a collection of all payment-methods. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all payment methods\&quot;,\&quot;response\&quot;:\&quot;getPaymentMethodAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment-method to return.
  # @option opts [Integer] :records The maximum number of payment-methods to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PaymentMethodPagedMetadata]
  describe 'get_all_payment_methods test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_method_by_account_id
  # Returns a collection of payment-methods, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by account\&quot;,\&quot;response\&quot;:\&quot;getPaymentMethodByAccount.html\&quot;}
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment-method to return.
  # @option opts [Integer] :records The maximum number of payment-methods to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @option opts [BOOLEAN] :default_only Whether only the defualt payment method should be returned.
  # @return [PaymentMethodPagedMetadata]
  describe 'get_payment_method_by_account_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_method_by_id
  # Returns a single payment-method, specified by the payment-method-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Get existing payment method\&quot;,\&quot;response\&quot;:\&quot;getPaymentMethodByID.html\&quot;}
  # @param payment_method_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [PaymentMethodPagedMetadata]
  describe 'get_payment_method_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_method_by_link_id
  # Returns a single payment-method, specified by the linkID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription link\&quot;,\&quot;response\&quot;:\&quot;getPaymentMethodByLinkID.html\&quot;}
  # @param link_id The link-id of the payment-method.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [PaymentMethodPagedMetadata]
  describe 'get_payment_method_by_link_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_method_by_payment_gateway
  # Returns a collection of payment-methods, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by gateway\&quot;,\&quot;response\&quot;:\&quot;getPaymentMethodByGateway.html\&quot;}
  # @param gateway The payment-method gateway which generated the payment-method.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment-method to return.
  # @option opts [Integer] :records The maximum number of payment-methods to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PaymentMethodPagedMetadata]
  describe 'get_payment_method_by_payment_gateway test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_payment_method
  # Update a payment-method.
  # {\&quot;nickname\&quot;:\&quot;Update a payment-method\&quot;,\&quot;request\&quot;:\&quot;updatePaymentMethodRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePaymentMethodResponse.html\&quot;}
  # @param payment_method The payment-method object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PaymentMethodPagedMetadata]
  describe 'update_payment_method test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end