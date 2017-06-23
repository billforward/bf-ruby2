=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module Bfwd
  # Request object for recalculating a charge raised against a subscription or invoice.
  class RecalculateChargeRequest
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # {\"description\":\"New friendly name given to the charge to help identify it.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :name

    # {\"description\":\"New description given to the charge.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :description

    # {\"description\":\"(Applicable only if the existing charge has none of [`pricingComponentName`, `pricingComponentID`] defined)<br>New monetary amount for which to charge. Used only for ad-hoc charges (i.e charges not associated with any pricing component).<br>This amount excludes tax.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :amount

    # {\"default\":\"<span class=\\\"label label-default\\\">Aggregated</span>\",\"description\":\"The strategy for how to raise invoices describing the charges produced by this charge recalculation.<br><span class=\\\"label label-default\\\">Immediate</span> &mdash; Generate straight-away an invoice containing these charges.<br><span class=\\\"label label-default\\\">Aggregated</span> &mdash; Add these charges to the next invoice which is generated naturally &mdash; i.e. the invoice raised at the current period's end.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :invoicing_type

    # {\"description\":\"(Applicable only if the existing charge has any of [`pricingComponentName`, `pricingComponentID`] defined)<br>The updated value consumed of the pricing component which this charge concerns.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :pricing_component_value

    # {\"default\":\"RecalculateWithLatestPricing\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :recalculation_behaviour

    # {\"default\":false,\"description\":\"Changes described in the response:<br><span class=\\\"label label-default\\\">true</span> &mdash; Are not actually performed; your subscription remains unchanged, no billing events run, and no invoices are executed.<br><span class=\\\"label label-default\\\">false</span> &mdash; Are actually performed and committed.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :dry_run

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
        :'name' => :'name',
        :'description' => :'description',
        :'amount' => :'amount',
        :'invoicing_type' => :'invoicingType',
        :'pricing_component_value' => :'pricingComponentValue',
        :'recalculation_behaviour' => :'recalculationBehaviour',
        :'dry_run' => :'dryRun'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'name' => :'String',
        :'description' => :'String',
        :'amount' => :'Float',
        :'invoicing_type' => :'String',
        :'pricing_component_value' => :'Integer',
        :'recalculation_behaviour' => :'String',
        :'dry_run' => :'BOOLEAN'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'invoicingType')
        self.invoicing_type = attributes[:'invoicingType']
      end

      if attributes.has_key?(:'pricingComponentValue')
        self.pricing_component_value = attributes[:'pricingComponentValue']
      end

      if attributes.has_key?(:'recalculationBehaviour')
        self.recalculation_behaviour = attributes[:'recalculationBehaviour']
      end

      if attributes.has_key?(:'dryRun')
        self.dry_run = attributes[:'dryRun']
      else
        self.dry_run = false
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @recalculation_behaviour.nil?
        invalid_properties.push("invalid value for 'recalculation_behaviour', recalculation_behaviour cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invoicing_type_validator = EnumAttributeValidator.new('String', ["Immediate", "Aggregated"])
      return false unless invoicing_type_validator.valid?(@invoicing_type)
      return false if @recalculation_behaviour.nil?
      recalculation_behaviour_validator = EnumAttributeValidator.new('String', ["RecalculateWithLatestPricing", "RecalculateWithCurrentPricing"])
      return false unless recalculation_behaviour_validator.valid?(@recalculation_behaviour)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoicing_type Object to be assigned
    def invoicing_type=(invoicing_type)
      validator = EnumAttributeValidator.new('String', ["Immediate", "Aggregated"])
      unless validator.valid?(invoicing_type)
        fail ArgumentError, "invalid value for 'invoicing_type', must be one of #{validator.allowable_values}."
      end
      @invoicing_type = invoicing_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recalculation_behaviour Object to be assigned
    def recalculation_behaviour=(recalculation_behaviour)
      validator = EnumAttributeValidator.new('String', ["RecalculateWithLatestPricing", "RecalculateWithCurrentPricing"])
      unless validator.valid?(recalculation_behaviour)
        fail ArgumentError, "invalid value for 'recalculation_behaviour', must be one of #{validator.allowable_values}."
      end
      @recalculation_behaviour = recalculation_behaviour
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          name == o.name &&
          description == o.description &&
          amount == o.amount &&
          invoicing_type == o.invoicing_type &&
          pricing_component_value == o.pricing_component_value &&
          recalculation_behaviour == o.recalculation_behaviour &&
          dry_run == o.dry_run
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, name, description, amount, invoicing_type, pricing_component_value, recalculation_behaviour, dry_run].hash
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
