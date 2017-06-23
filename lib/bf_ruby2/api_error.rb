=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'json'

module Bfwd
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body, :parsed

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end

        parsed = JSON.parse(arg[:response_body]) rescue {'errorMessage': arg.response_body}
      else
        super arg
        parsed = {'errorMessage': 'Failed to parse error response from API; was not JSON-formatted.'}
      end
      @parsed = parsed
    end
  end
end
