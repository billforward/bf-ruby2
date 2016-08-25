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

# Unit tests for Bfwd::PeriodsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PeriodsApi' do
  before do
    # run before each test
    @instance = Bfwd::PeriodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PeriodsApi' do
    it 'should create an instact of PeriodsApi' do
      expect(@instance).to be_instance_of(Bfwd::PeriodsApi)
    end
  end

  # unit tests for get_all_periods_for_subscription
  # Retrieve by subscription)
  # { \&quot;nickname\&quot; : \&quot;Retrieve by subscription\&quot;,\&quot;response\&quot; : \&quot;getPeriodsForSubscription.html\&quot;}
  # @param subscription_id The subscriptionID of the usage.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first amendment to return.
  # @option opts [Integer] :records The maximum number of amendments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @return [PeriodPagedMetadata]
  describe 'get_all_periods_for_subscription test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_latest_periods
  # Get all periods
  # { \&quot;nickname\&quot; : \&quot;Get all periods\&quot;,\&quot;response\&quot; : \&quot;getPeriods.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first amendment to return.
  # @option opts [Integer] :records The maximum number of amendments to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order The direction of any ordering, either ASC or DESC.
  # @return [PeriodPagedMetadata]
  describe 'get_latest_periods test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
