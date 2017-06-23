=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bfwd::ProfilesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProfilesApi' do
  before do
    # run before each test
    @instance = Bfwd::ProfilesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProfilesApi' do
    it 'should create an instance of ProfilesApi' do
      expect(@instance).to be_instance_of(Bfwd::ProfilesApi)
    end
  end

  # unit tests for get_all_profiles
  # Returns a collection of all profiles. By default 10 values are returned. Records are returned in natural order
  # {\&quot;nickname\&quot;:\&quot;Get all profiles\&quot;,\&quot;response\&quot;:\&quot;getProfileAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organizations used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first profile to return.
  # @option opts [Integer] :records The maximum number of profiles to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [ProfilePagedMetadata]
  describe 'get_all_profiles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_profile
  # Returns a single profile, specified by the ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve an existing profile\&quot;,\&quot;response\&quot;:\&quot;getProfileByID.html\&quot;}
  # @param profile_id ID of the Profile.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [ProfilePagedMetadata]
  describe 'get_profile test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_profile_by_account_id
  # Returns a collection of profiles, specified by the account-ID parameter. By default 10 values are returned. Records are returned in natural order
  # {\&quot;nickname\&quot;:\&quot;Retrieve by account\&quot;,\&quot;response\&quot;:\&quot;getProfileByAccountID.html\&quot;}
  # @param account_id The account-ID of the profile.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organizations used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first profile to return.
  # @option opts [Integer] :records The maximum number of profiles to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [ProfilePagedMetadata]
  describe 'get_profile_by_account_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_profile_by_email_address
  # Returns a single profile, specified by the email parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by e-mail\&quot;,\&quot;response\&quot;:\&quot;getProfileByEmail.html\&quot;}
  # @param email The email address of the profile.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organizations used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first profile to return.
  # @option opts [Integer] :records The maximum number of profiles to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @option opts [BOOLEAN] :include_retired Whether retired profiles should be returned.
  # @return [ProfilePagedMetadata]
  describe 'get_profile_by_email_address test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_profile
  # Update a profile
  # {\&quot;nickname\&quot;:\&quot;Update a profile\&quot;,\&quot;request\&quot;:\&quot;updateProfileRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateProfileResponse.html\&quot;}
  # @param request The profile object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [ProfilePagedMetadata]
  describe 'update_profile test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
