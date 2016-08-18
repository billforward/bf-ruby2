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

# Unit tests for BillForward::PricingcomponentvaluesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PricingcomponentvaluesApi' do
  before do
    # run before each test
    @instance = BillForward::PricingcomponentvaluesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PricingcomponentvaluesApi' do
    it 'should create an instact of PricingcomponentvaluesApi' do
      expect(@instance).to be_instance_of(BillForward::PricingcomponentvaluesApi)
    end
  end

  # unit tests for create_pricing_component_value
  # Create a pricing-component-value.
  # {\&quot;nickname\&quot;:\&quot;Create a new value\&quot;,\&quot;request\&quot;:\&quot;createPricingComponentValueRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPricingComponentValueResponse.html\&quot;}
  # @param pricing_component_value The pricing-component-value object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PricingComponentValuePagedMetadata]
  describe 'create_pricing_component_value test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_pricing_component_values
  # Returns a collection of pricing-component-values.By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all values\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first pricing-component-value to return.
  # @option opts [Integer] :records The maximum number of pricing-component-values to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PricingComponentValuePagedMetadata]
  describe 'get_all_pricing_component_values test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_pricing_component_value
  # Returns a collection of pricing-component-values, specified by the pricing-component-ID parameter.By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get existing values\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueByID.html\&quot;}
  # @param pricing_component_id The string ID of the pricing-component-value.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first pricing-component-value to return.
  # @option opts [Integer] :records The maximum number of pricing-component-values to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PricingComponentValuePagedMetadata]
  describe 'get_pricing_component_value test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_pricing_component_value_by_subscription_id
  # Returns a collection of pricing-component-values, specified by the subscription-ID parameter.By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription\&quot;,\&quot;response\&quot;:\&quot;getPricingComponentValueBySubscriptionID.html\&quot;}
  # @param subscription_id The string subscription-ID of the pricing-component-value.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first pricing-component-value to return.
  # @option opts [Integer] :records The maximum number of pricing-component-values to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [PricingComponentValuePagedMetadata]
  describe 'get_pricing_component_value_by_subscription_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_pricing_component_value
  # Update a pricing-component-value.
  # {\&quot;nickname\&quot;:\&quot;Update a value\&quot;,\&quot;request\&quot;:\&quot;updatePricingComponentValueRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePricingComponentValueResponse.html\&quot;}
  # @param pricing_component_value The pricing-component-value object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [PricingComponentValuePagedMetadata]
  describe 'update_pricing_component_value test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end