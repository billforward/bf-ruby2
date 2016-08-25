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

# Unit tests for Bfwd::OrganizationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrganizationsApi' do
  before do
    # run before each test
    @instance = Bfwd::OrganizationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationsApi' do
    it 'should create an instact of OrganizationsApi' do
      expect(@instance).to be_instance_of(Bfwd::OrganizationsApi)
    end
  end

  # unit tests for create_organization
  # Create an organization.
  # {\&quot;nickname\&quot;:\&quot;Create\&quot;,\&quot;request\&quot;:\&quot;createOrganizationRequest.html\&quot;,\&quot;response\&quot;:\&quot;createOrganizationResponse.html\&quot;}
  # @param organization The organization object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [OrganizationPagedMetadata]
  describe 'create_organization test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_my_organizations
  # Returns a collection of all my asociated organizations. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get Mine\&quot;,\&quot;response\&quot;:\&quot;getOrganizationAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first organization to return.
  # @option opts [Integer] :records The maximum number of organizations to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [OrganizationPagedMetadata]
  describe 'get_all_my_organizations test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_organizations
  # Returns a collection of all organizations. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get All\&quot;,\&quot;response\&quot;:\&quot;getOrganizationAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first organization to return.
  # @option opts [Integer] :records The maximum number of organizations to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired products should be returned.
  # @return [OrganizationPagedMetadata]
  describe 'get_all_organizations test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organization_by_customer_code
  # Returns a single organization, specified by the customer-code parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by Customer-Code\&quot;,\&quot;response\&quot;:\&quot;getOrganizationByCustomer.html\&quot;}
  # @param customer_code The unique customer code of the organization.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [OrganizationPagedMetadata]
  describe 'get_organization_by_customer_code test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organization_by_id
  # Returns a single Organization, specified by the organization-ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by id\&quot;,\&quot;response\&quot;:\&quot;getOrganizationByID.html\&quot;}
  # @param organization_id ID of the organization.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [OrganizationPagedMetadata]
  describe 'get_organization_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organization_by_name
  # Returns a single Organization, specified by the name parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by Name\&quot;,\&quot;response\&quot;:\&quot;getOrganizationByName.html\&quot;}
  # @param name The name of the Organization.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [OrganizationPagedMetadata]
  describe 'get_organization_by_name test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_organization
  # Update an organization.
  # {\&quot;nickname\&quot;:\&quot;Updated\&quot;,\&quot;request\&quot;:\&quot;updateOrganizationRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateOrganizationResponse.html\&quot;}
  # @param organization The organization object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [OrganizationPagedMetadata]
  describe 'update_organization test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
