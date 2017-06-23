=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Bfwd::SynchJobsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SynchJobsApi' do
  before do
    # run before each test
    @instance = Bfwd::SynchJobsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SynchJobsApi' do
    it 'should create an instance of SynchJobsApi' do
      expect(@instance).to be_instance_of(Bfwd::SynchJobsApi)
    end
  end

  # unit tests for create_sync_job
  # Create a synch job.
  # {\&quot;nickname\&quot;:\&quot;Create a new sync job\&quot;,\&quot;request\&quot;:\&quot;createSynchJobRequest.html\&quot;,\&quot;response\&quot;:\&quot;createSynchJobResponse.html\&quot;}
  # @param synch_job The data synch job object to be created.
  # @param [Hash] opts the optional parameters
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'create_sync_job test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_sync_jobs
  # Returns a collection of Users. By default 10 values are returned. Records are returned in natural order.
  # {\&quot;nickname\&quot;:\&quot;Get all synch jobs\&quot;,\&quot;response\&quot;:\&quot;getSynchJobsAll.html\&quot;}
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @option opts [Integer] :offset The offset from the first synch job to return.
  # @option opts [Integer] :records The maximum number of synch jobs to return.
  # @option opts [String] :order_by Specify a field used to order the result set.
  # @option opts [String] :order Ihe direction of any ordering, either ASC or DESC.
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'get_all_sync_jobs test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sync_job_by_id
  # Returns a single job, specified by the ID parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve an existing synch job\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByID.html\&quot;}
  # @param synch_job_id ID of the Sync Job.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization -IDs used to restrict the scope of API calls.
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'get_sync_job_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sync_job_by_scope
  # Returns a collection jobs, specified by the scope parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by scope\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByScope.html\&quot;}
  # @param scope The scope of the synch job.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'get_sync_job_by_scope test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sync_job_by_state
  # Returns a collection jobs, specified by the state parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by state\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByState.html\&quot;}
  # @param state The state of the synch job.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'get_sync_job_by_state test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sync_job_by_target
  # Returns a collection jobs, specified by the target parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by target\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByTarget.html\&quot;}
  # @param target The target of the synch job.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'get_sync_job_by_target test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sync_job_by_type
  # Returns a collection jobs, specified by the type parameter.
  # {\&quot;nickname\&quot;:\&quot;Retrieve by type\&quot;,\&quot;response\&quot;:\&quot;getSyncJobByType.html\&quot;}
  # @param type The type of the synch job.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :organizations A list of organization-IDs used to restrict the scope of API calls.
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'get_sync_job_by_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_sync_job
  # Update a synch job.
  # {\&quot;nickname\&quot;:\&quot;Update a synch job\&quot;,\&quot;request\&quot;:\&quot;updateSyncJobRequest.html\&quot;,\&quot;response\&quot;:\&quot;updateSyncJobResponse.html\&quot;}
  # @param synch_job The synch job object to be updated.
  # @param [Hash] opts the optional parameters
  # @return [DataSynchronizationJobPagedMetadata]
  describe 'update_sync_job test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
