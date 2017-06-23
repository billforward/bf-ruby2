=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bfwd::ReceiptsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReceiptsApi' do
  before do
    # run before each test
    @instance = Bfwd::ReceiptsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReceiptsApi' do
    it 'should create an instance of ReceiptsApi' do
      expect(@instance).to be_instance_of(Bfwd::ReceiptsApi)
    end
  end

  # unit tests for create_receipt
  # Create a receipt.
  # {\&quot;nickname\&quot;:\&quot;Create a new receipt\&quot;,\&quot;request\&quot;:\&quot;createReceiptRequest.html\&quot;,\&quot;response\&quot;:\&quot;createReceiptResponse.html\&quot;}
  # @param receipt The receipt object to be created.
  # @param [Hash] opts the optional parameters
  # @return [ReceiptPagedMetadata]
  describe 'create_receipt test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_receipts
  # Returns a collection of all receipts. By default 10 values are returned. receipts are returned in natural order
  # {\&quot;nickname\&quot;:\&quot;Get all receipts\&quot;,\&quot;response\&quot;:\&quot;getreceiptsAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first receipt to return.
  # @option opts [Integer] :records The maximum number of receipts to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [Array<String>] :account_id 
  # @option opts [Array<String>] :invoice_id 
  # @option opts [Array<String>] :payment_method_id 
  # @option opts [String] :type 
  # @option opts [String] :gateway 
  # @option opts [String] :decision 
  # @return [ReceiptPagedMetadata]
  describe 'get_all_receipts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipt_by_id
  # Returns a single receipt, specified by the ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve an existing receipt\&quot;,\&quot;response\&quot;:\&quot;getreceiptByID.html\&quot;}
  # @param receipt_id ID of the receipt.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [ReceiptPagedMetadata]
  describe 'get_receipt_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipts_by_invoice
  # Returns a receipt for the receipt payment.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by invoice\&quot;,\&quot;response\&quot;:\&quot;getreceiptsByInvoice.html\&quot;}
  # @param invoice_id ID of the Invoice.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first receipt to return.
  # @option opts [Integer] :records The maximum number of receipts to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [ReceiptPagedMetadata]
  describe 'get_receipts_by_invoice test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipts_by_payment
  # Returns a collection of receipts for the payment.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by payment\&quot;,\&quot;response\&quot;:\&quot;getreceiptsByPayment.html\&quot;}
  # @param payment_id ID of the payment.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first receipt to return.
  # @option opts [Integer] :records The maximum number of receipts to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [ReceiptPagedMetadata]
  describe 'get_receipts_by_payment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipts_for_debit_payments_as_csv
  # Retrieves debit payments in CSV format.
  # { \&quot;nickname\&quot;:\&quot;Debit payments CSV\&quot;,\&quot;response\&quot;:\&quot;Debit payments.csv\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [String] :received_start The UTC DateTime specifying the start of the interval within which payments were received.
  # @option opts [String] :received_end The UTC DateTime specifying the end of the interval within which payments were received.
  # @option opts [Integer] :offset The offset from the first payment to return.
  # @option opts [Integer] :records The maximum number of payments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @option opts [Array<String>] :gateway A list of payment gateways to include in the account.  If none are specified, all gateways will be included.
  # @return [ReceiptPagedMetadata]
  describe 'get_receipts_for_debit_payments_as_csv test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipts_for_refund_payments_as_csv
  # Retrieves refunded payments in CSV format.
  # { \&quot;nickname\&quot;:\&quot;Refunded payments CSV\&quot;,\&quot;response\&quot;:\&quot;Refunded payments.csv\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [String] :completed_start The UTC DateTime specifying the start of the interval within which payments were received.
  # @option opts [String] :completed_end The UTC DateTime specifying the end of the interval within which payments were received.
  # @option opts [Integer] :offset The offset from the first payment to return.
  # @option opts [Integer] :records The maximum number of payments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @return [ReceiptPagedMetadata]
  describe 'get_receipts_for_refund_payments_as_csv test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
