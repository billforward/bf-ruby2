=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bfwd::EmailsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmailsApi' do
  before do
    # run before each test
    @instance = Bfwd::EmailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailsApi' do
    it 'should create an instance of EmailsApi' do
      expect(@instance).to be_instance_of(Bfwd::EmailsApi)
    end
  end

  # unit tests for get_email_by_id
  # Retrieves a single invoice, specified by the version-ID parameter.
  # { \&quot;nickname\&quot; : \&quot;Retrieve by version\&quot;,\&quot;response\&quot; : \&quot;getEmailByID.html\&quot;}
  # @param email_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [EmailPagedMetadata]
  describe 'get_email_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_html_by_id
  # Retrieves a single invoice, specified by the version-ID parameter.
  # { \&quot;nickname\&quot; : \&quot;Retrieve by version\&quot;,\&quot;response\&quot; : \&quot;getEmailByID.html\&quot;}
  # @param email_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [String]
  describe 'get_email_html_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_text_by_id
  # Retrieves a single invoice, specified by the version-ID parameter.
  # { \&quot;nickname\&quot; : \&quot;Retrieve by version\&quot;,\&quot;response\&quot; : \&quot;getEmailByID.html\&quot;}
  # @param email_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [String]
  describe 'get_email_text_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
