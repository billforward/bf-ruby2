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

# Unit tests for Bfwd::UsageApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsageApi' do
  before do
    # run before each test
    @instance = Bfwd::UsageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsageApi' do
    it 'should create an instact of UsageApi' do
      expect(@instance).to be_instance_of(Bfwd::UsageApi)
    end
  end

  # unit tests for create_usage_instance
  # Add usage
  # {\&quot;nickname\&quot;:\&quot;Add usage\&quot;,\&quot;request\&quot;:\&quot;createUsageRequest.html\&quot;,\&quot;response\&quot;:\&quot;createUsageResponse.html\&quot;}
  # @param usage An array of The &#39;Usage&#39; objects to be created.
  # @param [Hash] opts the optional parameters
  # @return [UsagePagedMetadata]
  describe 'create_usage_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_by_id
  # Retrieve by subscription and period
  # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription and period\&quot;,\&quot;response\&quot;:\&quot;getUsageForPeriod.html\&quot;}
  # @param subscription_id The subscriptionID of the usage.
  # @param period_id The periodID of the usage.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first amendment to return.
  # @option opts [Integer] :records The maximum number of amendments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @return [UsagePagedMetadata]
  describe 'get_usage_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_by_subscription_id
  # Retrieve by subscription
  # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription\&quot;,\&quot;response\&quot;:\&quot;getUsage.html\&quot;}
  # @param subscription_id The subscriptionID of the subscription whose Usage instances you wish to GET.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first amendment to return.
  # @option opts [Integer] :records The maximum number of amendments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @return [UsagePagedMetadata]
  describe 'get_usage_by_subscription_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_usage_by_subscription_id_uo_m_period_and_usage_type
  # Retrieve by subscription, period and type
  # {\&quot;nickname\&quot;:\&quot;Retrieve by subscription, period and type\&quot;,\&quot;response\&quot;:\&quot;getDetailedUsageForPeriod.html\&quot;}
  # @param subscription_id The subscriptionID of the usage.
  # @param uom The uom of the usage.
  # @param period_id The periodID of the usage.
  # @param usage_type The type of the usage.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first amendment to return.
  # @option opts [Integer] :records The maximum number of amendments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @return [UsagePagedMetadata]
  describe 'get_usage_by_subscription_id_uo_m_period_and_usage_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_usage_instance
  # Update usage
  # {\&quot;nickname\&quot;:\&quot;Update usage\&quot;,\&quot;request\&quot;:\&quot;updateUsageRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateUsageResponse.html\&quot;}
  # @param usage An array of The &#39;Usage&#39; objects to be updated.
  # @param [Hash] opts the optional parameters
  # @return [UsagePagedMetadata]
  describe 'update_usage_instance test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
