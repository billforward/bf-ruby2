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

# Unit tests for Bfwd::ProductRatePlanMigrationAmendment
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductRatePlanMigrationAmendment' do
  before do
    # run before each test
    @instance = Bfwd::ProductRatePlanMigrationAmendment.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductRatePlanMigrationAmendment' do
    it 'should create an instance of ProductRatePlanMigrationAmendment' do
      expect(@instance).to be_instance_of(Bfwd::ProductRatePlanMigrationAmendment)
    end
  end
  describe 'test attribute "created"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "changed_by"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "updated"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["InvoiceOutstandingChargesAmendment", "IssueInvoiceAmendment", "PricingComponentValueAmendment", "InvoiceRecalculationAmendment", "CancellationAmendment", "InvoiceNextExecutionAttemptAmendment", "FixedTermExpiryAmendment", "EndTrialAmendment", "ProductRatePlanMigrationAmendment", "AmendmentDiscardAmendment", "UpdateComponentValueAmendment", "ServiceEndAmendment", "ResumeSubscriptionAmendment", "CreateSubscriptionChargeAmendment", "TimerAmendment"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "organization_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "subscription_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amendment_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["InvoiceNextExecutionAttempt", "Cancellation", "PricingComponentValue", "AmendmentDiscard", "Compound", "FixedTermExpiry", "InvoiceRecalculation", "EndTrial", "InvoiceOutstandingCharges", "IssueInvoice", "ProductRatePlanMigration", "UpdateComponentValue", "ServiceEnd", "ResumeSubscription", "CreateSubscriptionCharge", "Timer"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.amendment_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "actioning_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "actioned_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Pending", "Succeeded", "Failed", "Discarded"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.state = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "deleted"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "product_rate_plan_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invoicing_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Immediate", "Aggregated"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.invoicing_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "mappings"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "previous_subscription_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_subscription_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_subscription_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_subscription_description"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "pricing_behaviour"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["None", "Full", "Difference", "DifferenceProRated", "ProRated"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.pricing_behaviour = value }.not_to raise_error
       #end
    end
  end

end

