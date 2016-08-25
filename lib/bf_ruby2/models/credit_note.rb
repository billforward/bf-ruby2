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

module Bfwd
  # CreditNote
  class CreditNote
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :account_id

    # { \"description\" : \"References an invoice from this credit note. This has no side-effects, such as limited scope of credit note.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :invoice_id

    # { \"description\" : \"Subscription to apply the credit note to. By default credit notes are owned by the account an can be used on any subscription. Providing this value limits the credit-note to only being used on the specified subscription.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :subscription_id

    # { \"description\" : \"\", \"verbs\":[] }
    attr_accessor :organization_id

    # { \"description\" : \"\", \"verbs\":[] }
    attr_accessor :type

    # { \"description\" : \"Currency of the credit-note specified by a three character ISO 4217 currency code.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :currency

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :description

    # { \"description\" : \" Monetary value of the credit-note\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :value

    # { \"description\" : \"Remaining value of the payment not used. In the case when a credit-note is used across a range of invoices, each use reducing the available blance of the credit note.\", \"verbs\":[\"GET\"] }
    attr_accessor :remaining_value

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :created_by

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
        :'account_id' => :'accountID',
        :'invoice_id' => :'invoiceID',
        :'subscription_id' => :'subscriptionID',
        :'organization_id' => :'organizationID',
        :'type' => :'type',
        :'currency' => :'currency',
        :'description' => :'description',
        :'value' => :'value',
        :'remaining_value' => :'remainingValue',
        :'created_by' => :'createdBy'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'account_id' => :'String',
        :'invoice_id' => :'String',
        :'subscription_id' => :'String',
        :'organization_id' => :'String',
        :'type' => :'String',
        :'currency' => :'String',
        :'description' => :'String',
        :'value' => :'Float',
        :'remaining_value' => :'Float',
        :'created_by' => :'String'
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

      if attributes.has_key?(:'accountID')
        self.account_id = attributes[:'accountID']
      end

      if attributes.has_key?(:'invoiceID')
        self.invoice_id = attributes[:'invoiceID']
      end

      if attributes.has_key?(:'subscriptionID')
        self.subscription_id = attributes[:'subscriptionID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'remainingValue')
        self.remaining_value = attributes[:'remainingValue']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
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
      return false if @account_id.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["invoice", "manual"])
      return false unless type_validator.valid?(@type)
      return false if @currency.nil?
      return false if @value.nil?
      return false if @remaining_value.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["invoice", "manual"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
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
          account_id == o.account_id &&
          invoice_id == o.invoice_id &&
          subscription_id == o.subscription_id &&
          organization_id == o.organization_id &&
          type == o.type &&
          currency == o.currency &&
          description == o.description &&
          value == o.value &&
          remaining_value == o.remaining_value &&
          created_by == o.created_by
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, account_id, invoice_id, subscription_id, organization_id, type, currency, description, value, remaining_value, created_by].hash
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
