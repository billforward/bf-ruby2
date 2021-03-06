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

# Unit tests for Bfwd::CancelSubscriptionRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CancelSubscriptionRequest' do
  before do
    # run before each test
    @instance = Bfwd::CancelSubscriptionRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CancelSubscriptionRequest' do
    it 'should create an instance of CancelSubscriptionRequest' do
      expect(@instance).to be_instance_of(Bfwd::CancelSubscriptionRequest)
    end
  end
  describe 'test attribute "subscription_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "source"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "service_end"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Immediate", "AtPeriodEnd"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.service_end = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "cancellation_credit"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Credit", "None"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.cancellation_credit = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "cancel_children"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cancel_empty_parent"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

