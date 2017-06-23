=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module Bfwd
  # A session of usage
  class UsageSession
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"Organization associated with this session.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"ID of the subscription to which this session pertains.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :subscription_id

    # { \"description\" : \"A (not guaranteed unique) identifier for this session, provided by the user. This, when combined with the subscription ID and unit of measure, uniquely identify a session.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :session_id

    # { \"description\" : \"ID of the pricing-component to which this usage session applies\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :pricing_component_id

    # { \"description\" : \"Name of the pricing-component to which this usage session applies\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :pricing_component_name

    # { \"description\" : \"Unit-of-measure to which this usage session applies\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :uom

    # { \"description\" : \"A description provided by the user, to record details about this session.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :description

    # { \"description\" : \"The current incarnation of the session. Initially 0, this number increments every time the session is 'cut' without ending. For example, a cut is taken of a session if it outlasts the end date of the billing period it started in. The session reincarnates with an incremented sessionix, in the next billing period (that is, if some period indeed follows the current one).\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :sessionix

    # { \"description\" : \"The start date of this session, UTC DateTime\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :start

    # { \"description\" : \"The end date of this session, UTC DateTime\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :stop

    # { \"description\" : \"The type of usage measured within this billing period. Options are '\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }Active', Which refers to a session that is currently running 'Historic', Which refers to a session that has terminated.
    attr_accessor :state

    # { \"description\" : \"The amount of time that elapsed (in milliseconds?) during this session. Initially 0. Presently updated only when a cut is taken of the session (for example if the session or billnig period ends).\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :uduration

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
        :'organization_id' => :'organizationID',
        :'subscription_id' => :'subscriptionID',
        :'session_id' => :'sessionID',
        :'pricing_component_id' => :'pricingComponentID',
        :'pricing_component_name' => :'pricingComponentName',
        :'uom' => :'uom',
        :'description' => :'description',
        :'sessionix' => :'sessionix',
        :'start' => :'start',
        :'stop' => :'stop',
        :'state' => :'state',
        :'uduration' => :'uduration'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'organization_id' => :'String',
        :'subscription_id' => :'String',
        :'session_id' => :'String',
        :'pricing_component_id' => :'String',
        :'pricing_component_name' => :'String',
        :'uom' => :'String',
        :'description' => :'String',
        :'sessionix' => :'Integer',
        :'start' => :'DateTime',
        :'stop' => :'DateTime',
        :'state' => :'String',
        :'uduration' => :'Integer'
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

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'subscriptionID')
        self.subscription_id = attributes[:'subscriptionID']
      end

      if attributes.has_key?(:'sessionID')
        self.session_id = attributes[:'sessionID']
      end

      if attributes.has_key?(:'pricingComponentID')
        self.pricing_component_id = attributes[:'pricingComponentID']
      end

      if attributes.has_key?(:'pricingComponentName')
        self.pricing_component_name = attributes[:'pricingComponentName']
      end

      if attributes.has_key?(:'uom')
        self.uom = attributes[:'uom']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'sessionix')
        self.sessionix = attributes[:'sessionix']
      end

      if attributes.has_key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.has_key?(:'stop')
        self.stop = attributes[:'stop']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'uduration')
        self.uduration = attributes[:'uduration']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @subscription_id.nil?
        invalid_properties.push("invalid value for 'subscription_id', subscription_id cannot be nil.")
      end

      if @session_id.nil?
        invalid_properties.push("invalid value for 'session_id', session_id cannot be nil.")
      end

      if @pricing_component_id.nil?
        invalid_properties.push("invalid value for 'pricing_component_id', pricing_component_id cannot be nil.")
      end

      if @pricing_component_name.nil?
        invalid_properties.push("invalid value for 'pricing_component_name', pricing_component_name cannot be nil.")
      end

      if @uom.nil?
        invalid_properties.push("invalid value for 'uom', uom cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @subscription_id.nil?
      return false if @session_id.nil?
      return false if @pricing_component_id.nil?
      return false if @pricing_component_name.nil?
      return false if @uom.nil?
      state_validator = EnumAttributeValidator.new('String', ["Active", "Historic"])
      return false unless state_validator.valid?(@state)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["Active", "Historic"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          changed_by == o.changed_by &&
          organization_id == o.organization_id &&
          subscription_id == o.subscription_id &&
          session_id == o.session_id &&
          pricing_component_id == o.pricing_component_id &&
          pricing_component_name == o.pricing_component_name &&
          uom == o.uom &&
          description == o.description &&
          sessionix == o.sessionix &&
          start == o.start &&
          stop == o.stop &&
          state == o.state &&
          uduration == o.uduration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, organization_id, subscription_id, session_id, pricing_component_id, pricing_component_name, uom, description, sessionix, start, stop, state, uduration].hash
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
