=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Bfwd::RecalculateChargeBatchRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RecalculateChargeBatchRequest' do
  before do
    # run before each test
    @instance = Bfwd::RecalculateChargeBatchRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecalculateChargeBatchRequest' do
    it 'should create an instance of RecalculateChargeBatchRequest' do
      expect(@instance).to be_instance_of(Bfwd::RecalculateChargeBatchRequest)
    end
  end
  describe 'test attribute "charges"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "organization_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "dry_run"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recalculate_invoices"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invoice_state"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Paid", "Unpaid", "Pending", "Voided"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.invoice_state = value }.not_to raise_error
       #end
    end
  end

end

