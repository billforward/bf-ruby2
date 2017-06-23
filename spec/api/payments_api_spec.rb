=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bfwd::PaymentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsApi' do
  before do
    # run before each test
    @instance = Bfwd::PaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsApi' do
    it 'should create an instance of PaymentsApi' do
      expect(@instance).to be_instance_of(Bfwd::PaymentsApi)
    end
  end

  # unit tests for create_payment
  # Create a payment.
  # {\&quot;nickname\&quot;:\&quot;Create a new payment\&quot;,\&quot;request\&quot;:\&quot;createPaymentRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPaymentResponse.html\&quot;}
  # @param payment The payment object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PaymentPagedMetadata]
  describe 'create_payment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_payments
  # Returns a collection of all payments. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all payments\&quot;,\&quot;response\&quot;:\&quot;getPaymentAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment to return.
  # @option opts [Integer] :records The maximum number of payments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PaymentPagedMetadata]
  describe 'get_all_payments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_as_csv
  # Retrieves payments in CSV format.
  # { \&quot;nickname\&quot;:\&quot;Payments CSV\&quot;,\&quot;response\&quot;:\&quot;payments.csv\&quot;}
  # @param received_start The UTC DateTime specifying the start of the interval within which payments were received.
  # @param received_end The UTC DateTime specifying the end of the interval within which payments were received.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment to return.
  # @option opts [Integer] :records The maximum number of payments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @return [PaymentPagedMetadata]
  describe 'get_payment_as_csv test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_by_id
  # Returns a single payment, specified by the payment-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve an existing payment\&quot;,\&quot;response\&quot;:\&quot;getPaymentByID.html\&quot;}
  # @param payment_id The unique string-ID of the payment.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [PaymentPagedMetadata]
  describe 'get_payment_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_by_invoice_id
  # Returns a collection of payments, specified by the invoice-ID parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get for invoice\&quot;,\&quot;response\&quot;:\&quot;getPaymentByInvoice.html\&quot;}
  # @param invoice_id The string ID of the account
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment to return.
  # @option opts [Integer] :records The maximum number of payments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PaymentPagedMetadata]
  describe 'get_payment_by_invoice_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_by_payment_gateway
  # Returns a collection of payments, specified by the gateway parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by gateway\&quot;,\&quot;response\&quot;:\&quot;getPaymentByGateway.html\&quot;}
  # @param gateway The payment gateway which generated the payment.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment to return.
  # @option opts [Integer] :records The maximum number of payments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PaymentPagedMetadata]
  describe 'get_payment_by_payment_gateway test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_by_payment_method_id
  # Returns a collection of payments, specified by the payment-method-ID parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by payment method\&quot;,\&quot;response\&quot;:\&quot;getPaymentByPaymentMethod.html\&quot;}
  # @param payment_method_id ID of the PaymentMethod
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first payment to return.
  # @option opts [Integer] :records The maximum number of payments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PaymentPagedMetadata]
  describe 'get_payment_by_payment_method_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_payment
  # Update a payment.
  # {\&quot;nickname\&quot;:\&quot;Update a payment\&quot;,\&quot;request\&quot;:\&quot;updatePaymentRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePaymentResponse.html\&quot;}
  # @param payment The payment object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PaymentPagedMetadata]
  describe 'update_payment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
