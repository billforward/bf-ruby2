=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bfwd::PricingcalculatorApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PricingcalculatorApi' do
  before do
    # run before each test
    @instance = Bfwd::PricingcalculatorApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PricingcalculatorApi' do
    it 'should create an instance of PricingcalculatorApi' do
      expect(@instance).to be_instance_of(Bfwd::PricingcalculatorApi)
    end
  end

  # unit tests for get_amendment_cost
  # Calculates the price of a subscription&#39;s upgrading/downgrading to a new pricing component value.
  # { \&quot;nickname\&quot; : \&quot;Calculate upgrade price\&quot;, \&quot;request\&quot; : \&quot;AmendmentPriceRequest.html\&quot; ,\&quot;response\&quot; : \&quot;AmendmentPriceNTime.html\&quot; }
  # @param ammendment_price_request An amendment pricing request
  # @param [Hash] opts the optional parameters
  # @return [AmendmentPriceNTimePagedMetadata]
  describe 'get_amendment_cost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_coupon_instance_initialisation_cost
  # Calculates the price of a subscription to a rate plan, at specified values of pricing component values, and with the specified coupon applied.
  # { \&quot;nickname\&quot; : \&quot;Calculate price with a coupon\&quot;,\&quot;request\&quot; : \&quot;PriceRequestWithCoupon.html\&quot; ,\&quot;response\&quot; : \&quot;PriceCalculationWithCoupon.html\&quot; }
  # @param coupon_instance_initialisation_request A coupon instance initialisation request
  # @param [Hash] opts the optional parameters
  # @return [PriceCalculationPagedMetadata]
  describe 'get_coupon_instance_initialisation_cost test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_product_rate_plan_costs
  # Calculates the price of a subscription to a rate plan, at specified values of pricing component values.
  # { \&quot;nickname\&quot; : \&quot;Calculate price\&quot;, \&quot;request\&quot; : \&quot;PriceRequest.html\&quot; ,\&quot;response\&quot; : \&quot;PriceCalculation.html\&quot; }
  # @param price_request A price request
  # @param [Hash] opts the optional parameters
  # @return [PriceCalculationPagedMetadata]
  describe 'get_product_rate_plan_costs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
