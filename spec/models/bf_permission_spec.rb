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
require 'date'

# Unit tests for BillForward::BFPermission
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BFPermission' do
  before do
    # run before each test
    @instance = BillForward::BFPermission.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BFPermission' do
    it 'should create an instact of BFPermission' do
      expect(@instance).to be_instance_of(BillForward::BFPermission)
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

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resource"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["All", "Account", "Address", "Amendment", "Analytics", "Audit", "BFAdmin", "BFJS", "Charge", "Client", "Configuration", "CouponBook", "CouponBookDefinition", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "Coupon", "Credit", "CybersourceToken", "Dunning", "Email", "FixedTerm", "Gateway", "Invoice", "Notification", "Organization", "Password", "PaymentMethod", "Payment", "Permission", "PricingComponent", "PricingComponentTier", "PricingComponentValueChange", "PricingComponentValue", "ProductRatePlan", "Product", "ProductResources", "Profile", "Quote", "Receipt", "Refund", "Salesforce", "Search", "Subscription", "Tax", "UnitOfMeasure", "Usage", "Username", "User", "UserResources", "Webhook"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.resource = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["All", "AddToInvoice", "AddToProductRatePlan", "AddToSubscription", "Advance", "Aggregate", "RemoveFromInvoice", "RemoveFromProductRatePlan", "RemoveFromSubscription", "Cancel", "Create", "Delete", "Edit", "Execute", "Freeze", "Import", "InvoiceCharges", "Issue", "Migrate", "Read", "Recalculate", "Reset", "Resume", "Revive", "Stop", "Tokenize", "Void"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.action = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "revoked"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "deleted"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
