=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Bfwd::DynamicMetadata
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DynamicMetadata' do
  before do
    # run before each test
    @instance = Bfwd::DynamicMetadata.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DynamicMetadata' do
    it 'should create an instance of DynamicMetadata' do
      expect(@instance).to be_instance_of(Bfwd::DynamicMetadata)
    end
  end
end

