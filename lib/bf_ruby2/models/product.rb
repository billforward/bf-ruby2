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

require 'date'

module BillForward
  # Product
  class Product
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # {\"description\":\"ID uniquely identifying this product.\",\"verbs\":[\"GET\"]}
    attr_accessor :id

    # {\"description\":\"Customer-relationship-management ID of the product.\",\"verbs\":[\"GET\",\"PUT\",\"POST\"]}
    attr_accessor :crm_id

    # {\"description\":\"\",\"verbs\":[]}
    attr_accessor :account_id

    # {\"description\":\"A unique name &mdash; for your benefit &mdash; used to identify this product within BillForward. It should reflect the fact that this product confers some service to a customer (e.g. \\\"Gold membership\\\").<br>The product can also be defined by the frequency with which it recurs (e.g. \\\"Monthly Gold membership\\\").<br>Remember also that rate plans can override the timing prescribed by their product. If you intend to override that timing, you may consider the product's period duration to be an unimportant factor when it comes to naming it.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :name

    # {\"description\":\"A friendly non-unique name used to identify this product\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :public_name

    # {\"description\":\"A description &mdash; for your benefit &mdash; of the product. For example: you could explain what service this product entitles a customer to.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :description

    # {\"description\":\"Number of length-measures which constitute the product's period.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :duration

    # {\"description\":\"Measure describing the magnitude of the product's period.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :duration_period

    attr_accessor :metadata

    # {\"default\":0,\"description\":\"Number of trial-length-measures which constitute the product's trial period\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :trial

    # {\"default\":\"none\",\"description\":\"Measure describing the magnitude of the product's trial period.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :trial_period

    # {\"default\":\"recurring\",\"description\":\"The frequency of the product &mdash; either recurring or non-recurring.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :product_type

    # {\"description\":\"\",\"verbs\":[\"GET\"]}
    attr_accessor :deleted

    # {\"description\":\"\",\"verbs\":[]}
    attr_accessor :start_date

    attr_accessor :payment_terms

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
        :'crm_id' => :'crmID',
        :'account_id' => :'accountID',
        :'name' => :'name',
        :'public_name' => :'publicName',
        :'description' => :'description',
        :'duration' => :'duration',
        :'duration_period' => :'durationPeriod',
        :'metadata' => :'metadata',
        :'trial' => :'trial',
        :'trial_period' => :'trialPeriod',
        :'product_type' => :'productType',
        :'deleted' => :'deleted',
        :'start_date' => :'startDate',
        :'payment_terms' => :'paymentTerms'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'crm_id' => :'String',
        :'account_id' => :'String',
        :'name' => :'String',
        :'public_name' => :'String',
        :'description' => :'String',
        :'duration' => :'Integer',
        :'duration_period' => :'String',
        :'metadata' => :'DynamicMetadata',
        :'trial' => :'Integer',
        :'trial_period' => :'String',
        :'product_type' => :'String',
        :'deleted' => :'BOOLEAN',
        :'start_date' => :'DateTime',
        :'payment_terms' => :'Integer'
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

      if attributes.has_key?(:'crmID')
        self.crm_id = attributes[:'crmID']
      end

      if attributes.has_key?(:'accountID')
        self.account_id = attributes[:'accountID']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'publicName')
        self.public_name = attributes[:'publicName']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'durationPeriod')
        self.duration_period = attributes[:'durationPeriod']
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'trial')
        self.trial = attributes[:'trial']
      end

      if attributes.has_key?(:'trialPeriod')
        self.trial_period = attributes[:'trialPeriod']
      end

      if attributes.has_key?(:'productType')
        self.product_type = attributes[:'productType']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = false
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'paymentTerms')
        self.payment_terms = attributes[:'paymentTerms']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @description.nil?
      return false if @duration.nil?
      return false if @duration_period.nil?
      duration_period_validator = EnumAttributeValidator.new('String', ["minutes", "days", "months", "years"])
      return false unless duration_period_validator.valid?(@duration_period)
      return false if @trial.nil?
      return false if @trial_period.nil?
      trial_period_validator = EnumAttributeValidator.new('String', ["none", "minutes", "days", "months"])
      return false unless trial_period_validator.valid?(@trial_period)
      return false if @product_type.nil?
      product_type_validator = EnumAttributeValidator.new('String', ["nonrecurring", "recurring"])
      return false unless product_type_validator.valid?(@product_type)
      return false if @deleted.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duration_period Object to be assigned
    def duration_period=(duration_period)
      validator = EnumAttributeValidator.new('String', ["minutes", "days", "months", "years"])
      unless validator.valid?(duration_period)
        fail ArgumentError, "invalid value for 'duration_period', must be one of #{validator.allowable_values}."
      end
      @duration_period = duration_period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_period Object to be assigned
    def trial_period=(trial_period)
      validator = EnumAttributeValidator.new('String', ["none", "minutes", "days", "months"])
      unless validator.valid?(trial_period)
        fail ArgumentError, "invalid value for 'trial_period', must be one of #{validator.allowable_values}."
      end
      @trial_period = trial_period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_type Object to be assigned
    def product_type=(product_type)
      validator = EnumAttributeValidator.new('String', ["nonrecurring", "recurring"])
      unless validator.valid?(product_type)
        fail ArgumentError, "invalid value for 'product_type', must be one of #{validator.allowable_values}."
      end
      @product_type = product_type
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
          crm_id == o.crm_id &&
          account_id == o.account_id &&
          name == o.name &&
          public_name == o.public_name &&
          description == o.description &&
          duration == o.duration &&
          duration_period == o.duration_period &&
          metadata == o.metadata &&
          trial == o.trial &&
          trial_period == o.trial_period &&
          product_type == o.product_type &&
          deleted == o.deleted &&
          start_date == o.start_date &&
          payment_terms == o.payment_terms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, crm_id, account_id, name, public_name, description, duration, duration_period, metadata, trial, trial_period, product_type, deleted, start_date, payment_terms].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = BillForward.const_get(type).new
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