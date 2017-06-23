=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bfwd::ProductrateplansApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductrateplansApi' do
  before do
    # run before each test
    @instance = Bfwd::ProductrateplansApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductrateplansApi' do
    it 'should create an instance of ProductrateplansApi' do
      expect(@instance).to be_instance_of(Bfwd::ProductrateplansApi)
    end
  end

  # unit tests for add_taxation_strategy_to_rate_plan
  # Adds or re-enables the specified taxation-strategy for the given product-rate-plan.
  # {\&quot;nickname\&quot;:\&quot;Add tax\&quot;,\&quot;response\&quot;:\&quot;addTaxationStrategy.html\&quot;,\&quot;request\&quot;:\&quot;addTaxationStrategy.request.html\&quot;}
  # @param product_rate_plan_id 
  # @param taxation_strategy The taxation-strategy
  # @param [Hash] opts the optional parameters
  # @return [TaxationStrategyPagedMetadata]
  describe 'add_taxation_strategy_to_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_rate_plan
  # Create a new rate-plan.
  # {\&quot;nickname\&quot;:\&quot;Create a new rate-plan\&quot;,\&quot;request\&quot;:\&quot;createPRPRequest.html\&quot;,\&quot;response\&quot;:\&quot;createPRPResponse.html\&quot;}
  # @param product_rate_plan The product-rate-plan object to be created.
  # @param [Hash] opts the optional parameters
  # @return [ProductRatePlanPagedMetadata]
  describe 'create_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_metadata_for_rate_plan
  # Remove any associated metadata.
  # {\&quot;nickname\&quot;:\&quot;Clear metadata from rate-plan\&quot;,\&quot;request\&quot; :\&quot;deleteRatePlanMetadataRequest.html\&quot;,\&quot;response\&quot;:\&quot;deleteRatePlanMetadataResponse.html\&quot;}
  # @param product_rate_plan_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DynamicMetadata]
  describe 'delete_metadata_for_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_rate_plans
  # Returns a collection of product-rate-plans. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all rate-plans\&quot;,\&quot;response\&quot;:\&quot;getPRPAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @option opts [String] :metadata 
  # @return [ProductRatePlanPagedMetadata]
  describe 'get_all_rate_plans test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_available_taxation_strategies_for_rate_plan
  # Returns all available taxes for the specified product-rate-plan. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;List taxes\&quot;,\&quot;response\&quot;:\&quot;getAvailableTaxationStrategies.html\&quot;}
  # @param product_rate_plan_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first subscription to return.
  # @option opts [Integer] :records The maximum number of subscriptions to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [TaxationStrategyPagedMetadata]
  describe 'get_available_taxation_strategies_for_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_metadata_for_rate_plan
  # Retrieve any associated metadata.
  # {\&quot;nickname\&quot;:\&quot;Retrieve metadata on rate-plan\&quot;,\&quot;request\&quot;:\&quot;getRatePlanMetadataRequest.html\&quot;,\&quot;response\&quot;:\&quot;getRatePlanMetadataResponse.html\&quot;}
  # @param product_rate_plan_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DynamicMetadata]
  describe 'get_metadata_for_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_product_rate_plan_by_id
  # Returns product-rate-plans, specified by the product-rate-plan id or name.
  # {\&quot;nickname\&quot;:\&quot;Retrieve an existing rate-plan\&quot;,\&quot;response\&quot;:\&quot;getPRPByID.html\&quot;}
  # @param product_rate_plan_id id or name of the product-rate-plan.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [ProductRatePlanPagedMetadata]
  describe 'get_product_rate_plan_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rate_plan_by_product
  # Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by product\&quot;,\&quot;response\&quot;:\&quot;getPRPByProductID.html\&quot;}
  # @param product_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [ProductRatePlanPagedMetadata]
  describe 'get_rate_plan_by_product test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rate_plan_by_product_and_rate_plan
  # Returns a collection of product-rate-plans, specified by the product-ID parameter. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by name\&quot;,\&quot;response\&quot;:\&quot;getPRPByNameAndProduct.html\&quot;}
  # @param product_id 
  # @param rate_plan_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first product-rate-plan to return.
  # @option opts [Integer] :records The maximum number of product-rate-plans to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [ProductRatePlanPagedMetadata]
  describe 'get_rate_plan_by_product_and_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_taxation_strategy_from_rate_plan
  # Removes the specified taxation-strategy for the given product-rate-plan.
  # {\&quot;nickname\&quot;:\&quot;Remove tax\&quot;,\&quot;response\&quot;:\&quot;removeTaxationStrategy.html\&quot;}
  # @param product_rate_plan_id 
  # @param taxation_strategy_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [TaxationStrategyPagedMetadata]
  describe 'remove_taxation_strategy_from_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retire_rate_plan
  # Retires the product-rate-plan specified product-rate-plan-ID.
  # {\&quot;nickname\&quot;:\&quot;Delete a rate-plan\&quot;,\&quot;response\&quot;:\&quot;deletePRP.html\&quot;}
  # @param product_rate_plan_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [ProductRatePlanPagedMetadata]
  describe 'retire_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_metadata_for_rate_plan
  # Remove any existing metadata keys and create the provided data.
  # {\&quot;nickname\&quot;:\&quot;Set metadata on rate-plan\&quot;,\&quot;request\&quot;:\&quot;setRatePlanMetadataRequest.html\&quot;,\&quot;response\&quot;:\&quot;setRatePlanMetadataResponse.html\&quot;}
  # @param metadata 
  # @param product_rate_plan_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DynamicMetadata]
  describe 'set_metadata_for_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_rate_plan
  # Update a rate-plan.
  # {\&quot;nickname\&quot;:\&quot;Update a rate-plan\&quot;,\&quot;request\&quot;:\&quot;updatePRPRequest.html\&quot;,\&quot;response\&quot;:\&quot;updatePRPResponse.html\&quot;}
  # @param product_rate_plan The product-rate-plan object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [ProductRatePlanPagedMetadata]
  describe 'update_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upsert_metadata_for_rate_plan
  # Update any existing metadata key-values and insert any new key-values, no keys will be removed.
  # {\&quot;nickname\&quot;:\&quot;Upsert metadata on rate-plan\&quot;,\&quot;request\&quot;:\&quot;upsertRatePlanMetadataRequest.html\&quot;,\&quot;response\&quot;:\&quot;upsertRatePlanMetadataResponse.html\&quot;}
  # @param metadata 
  # @param product_rate_plan_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DynamicMetadata]
  describe 'upsert_metadata_for_rate_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
