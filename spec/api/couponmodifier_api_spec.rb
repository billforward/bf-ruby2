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

# Unit tests for Bfwd::CouponmodifierApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CouponmodifierApi' do
  before do
    # run before each test
    @instance = Bfwd::CouponmodifierApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CouponmodifierApi' do
    it 'should create an instact of CouponmodifierApi' do
      expect(@instance).to be_instance_of(Bfwd::CouponmodifierApi)
    end
  end

  # unit tests for create_coupon_modifier
  # Create a coupon-modifier.
  # {\&quot;nickname\&quot;:\&quot;Create a new modifier\&quot;,\&quot;request\&quot;:\&quot;createCouponModifierRequest.html\&quot;,\&quot;response\&quot;:\&quot;createCouponModifierResponse.html\&quot;}
  # @param coupon_instance The coupon-instance object to be created.
  # @param [Hash] opts the optional parameters
  # @return [CouponModifierBasePagedMetadata]
  describe 'create_coupon_modifier test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_coupon_modifier
  # Retire a coupon-modifier, specified by the coupon-modifier-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Delete a modifier\&quot;,\&quot;response\&quot;:\&quot;deleteCouponModifierByID.html\&quot;}
  # @param coupon_modifier_id ID of the coupon-modifier.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [CouponModifierBasePagedMetadata]
  describe 'delete_coupon_modifier test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_coupon_modifiers
  # Returns a collection of coupon-modifiers. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all modifiers\&quot;,\&quot;response\&quot;:\&quot;getCouponModifierAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @return [CouponModifierBasePagedMetadata]
  describe 'get_all_coupon_modifiers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_modifier_by_coupon_code
  # Returns a collection of coupon-modifiers, specified by the coupon-code parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by coupon code\&quot;,\&quot;response\&quot;:\&quot;getCouponCode.html\&quot;}
  # @param coupon_code The coupon-code.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @return [CouponModifierBasePagedMetadata]
  describe 'get_coupon_modifier_by_coupon_code test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_modifier_by_coupon_definition_id
  # Returns a collection of coupon-modifiers, specified by the coupon-definition-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by coupon definition\&quot;,\&quot;response\&quot;:\&quot;getCouponModifierByCouponDefinitionID.html\&quot;}
  # @param coupon_definition_id ID of the coupon-definition.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [CouponModifierBasePagedMetadata]
  describe 'get_coupon_modifier_by_coupon_definition_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_modifier_by_id
  # Returns a single coupon-modifier, specified by the coupon-modifier-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Get existing modifier\&quot;,\&quot;response\&quot;:\&quot;getCouponModifierByID.html\&quot;}
  # @param coupon_modifier_id ID of the coupon-modifier.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [CouponModifierBasePagedMetadata]
  describe 'get_coupon_modifier_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_coupon_modifier
  # Update a coupon-instance.
  # {\&quot;nickname\&quot;:\&quot;Update a modifier\&quot;,\&quot;request\&quot;:\&quot;updateCouponInstanceRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateCouponInstanceResponse.html\&quot;}
  # @param coupon_instance The coupon-instance object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [CouponModifierBasePagedMetadata]
  describe 'update_coupon_modifier test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
