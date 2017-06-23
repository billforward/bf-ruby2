=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module Bfwd
  # Configuration used for synchronising BillForward data with some third-party platform's dataset.
  class DataSynchronisationConfiguration
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # ID of the Synchronization Configuration.
    attr_accessor :id

    # Organization associated with Synchronization Configuration.
    attr_accessor :organization_id

    # This is the username for the platform.
    attr_accessor :username

    # This is the token for the platform.
    attr_accessor :access_token

    # This is the refresh token for the platform.
    attr_accessor :refresh_token

    # This is the instance url for client's salesforce instance.
    attr_accessor :instance_url

    # This is the platform of the job.
    attr_accessor :platform

    # This is maximum of the retry attempts when a synch is failed.
    attr_accessor :max_failed_retry

    # This is interval between each sync.
    attr_accessor :synch_interval

    # Is the sync job deleted.
    attr_accessor :deleted

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'id' => :'id',
        :'organization_id' => :'organizationID',
        :'username' => :'username',
        :'access_token' => :'accessToken',
        :'refresh_token' => :'refreshToken',
        :'instance_url' => :'instanceUrl',
        :'platform' => :'platform',
        :'max_failed_retry' => :'maxFailedRetry',
        :'synch_interval' => :'synchInterval',
        :'deleted' => :'deleted'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'organization_id' => :'String',
        :'username' => :'String',
        :'access_token' => :'String',
        :'refresh_token' => :'String',
        :'instance_url' => :'String',
        :'platform' => :'String',
        :'max_failed_retry' => :'Integer',
        :'synch_interval' => :'Integer',
        :'deleted' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'changedBy')
        self.changed_by = attributes[:'changedBy']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'accessToken')
        self.access_token = attributes[:'accessToken']
      end

      if attributes.has_key?(:'refreshToken')
        self.refresh_token = attributes[:'refreshToken']
      end

      if attributes.has_key?(:'instanceUrl')
        self.instance_url = attributes[:'instanceUrl']
      end

      if attributes.has_key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.has_key?(:'maxFailedRetry')
        self.max_failed_retry = attributes[:'maxFailedRetry']
      end

      if attributes.has_key?(:'synchInterval')
        self.synch_interval = attributes[:'synchInterval']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = false
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @organization_id.nil?
        invalid_properties.push("invalid value for 'organization_id', organization_id cannot be nil.")
      end

      if @username.nil?
        invalid_properties.push("invalid value for 'username', username cannot be nil.")
      end

      if @access_token.nil?
        invalid_properties.push("invalid value for 'access_token', access_token cannot be nil.")
      end

      if @refresh_token.nil?
        invalid_properties.push("invalid value for 'refresh_token', refresh_token cannot be nil.")
      end

      if @instance_url.nil?
        invalid_properties.push("invalid value for 'instance_url', instance_url cannot be nil.")
      end

      if @platform.nil?
        invalid_properties.push("invalid value for 'platform', platform cannot be nil.")
      end

      if @deleted.nil?
        invalid_properties.push("invalid value for 'deleted', deleted cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @organization_id.nil?
      return false if @username.nil?
      return false if @access_token.nil?
      return false if @refresh_token.nil?
      return false if @instance_url.nil?
      return false if @platform.nil?
      platform_validator = EnumAttributeValidator.new('String', ["Salesforce"])
      return false unless platform_validator.valid?(@platform)
      return false if @deleted.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] platform Object to be assigned
    def platform=(platform)
      validator = EnumAttributeValidator.new('String', ["Salesforce"])
      unless validator.valid?(platform)
        fail ArgumentError, "invalid value for 'platform', must be one of #{validator.allowable_values}."
      end
      @platform = platform
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          id == o.id &&
          organization_id == o.organization_id &&
          username == o.username &&
          access_token == o.access_token &&
          refresh_token == o.refresh_token &&
          instance_url == o.instance_url &&
          platform == o.platform &&
          max_failed_retry == o.max_failed_retry &&
          synch_interval == o.synch_interval &&
          deleted == o.deleted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, organization_id, username, access_token, refresh_token, instance_url, platform, max_failed_retry, synch_interval, deleted].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Bfwd.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
