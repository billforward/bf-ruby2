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
  # Request object for raising a charge against an account.
  class AddChargesToAccountAPIRequest
    # {\"description\":\"Friendly name given to any Invoice immediately produced when adding charges.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :name

    # {\"description\":\"Purchase order associated with any Invoice immediately produced when adding charges.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :purchase_order

    # {\"description\":\"Description to apply to any Invoice immediately produced when adding charges\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :description

    # {\"description\":\"Currency of the charges raised, specified by a three-character ISO 4217 currency code.\",\"verbs\":[\"GET\"]}
    attr_accessor :currency

    # {\"description\":\"Defines the 'payment terms' for any Invoice generated as a result of this action. Number of days after the issued date that the invoice is due. Payment will be attempted regardless of the payment terms. Payment terms are all Net.\",\"verbs\":[\"GET\"]}
    attr_accessor :payment_terms

    # {\"default\":\"<span class=\\\"label label-default\\\">Rollover</span>\",\"description\":\"Defines the behaviour applied to any outstanding credit resulting from the application of the charge.<br><span class=\\\"label label-default\\\">Rollover</span> &mdash; Outstanding credit is returned to the accounts credit pool.<br><span class=\\\"label label-default\\\">Discard</span> &mdash; Outstanding credit is lost.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :remaining_credit_behaviour

    # {\"default\":\"Pending\",\"description\":\"Stipulates the state of the resulting adhoc invoice if the invoicing type is Immediate\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :invoice_state

    # {\"description\":\"The charges which shall be added to the Account.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :charges

    # {\"default\":\"false\",\"description\":\"Calculate the effects of adding charges to an Account, but do not actually persist any changes.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :dry_run

    # {\"default\":true,\"description\":\"If we have created an adhoc invoice and it has had an unsuccessful payment attempt, should we void it\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :void_on_failure

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
        :'name' => :'name',
        :'purchase_order' => :'purchaseOrder',
        :'description' => :'description',
        :'currency' => :'currency',
        :'payment_terms' => :'paymentTerms',
        :'remaining_credit_behaviour' => :'remainingCreditBehaviour',
        :'invoice_state' => :'invoiceState',
        :'charges' => :'charges',
        :'dry_run' => :'dryRun',
        :'void_on_failure' => :'voidOnFailure'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'purchase_order' => :'String',
        :'description' => :'String',
        :'currency' => :'String',
        :'payment_terms' => :'Integer',
        :'remaining_credit_behaviour' => :'String',
        :'invoice_state' => :'String',
        :'charges' => :'Array<NestedChargeRequest>',
        :'dry_run' => :'BOOLEAN',
        :'void_on_failure' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'purchaseOrder')
        self.purchase_order = attributes[:'purchaseOrder']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'paymentTerms')
        self.payment_terms = attributes[:'paymentTerms']
      end

      if attributes.has_key?(:'remainingCreditBehaviour')
        self.remaining_credit_behaviour = attributes[:'remainingCreditBehaviour']
      end

      if attributes.has_key?(:'invoiceState')
        self.invoice_state = attributes[:'invoiceState']
      end

      if attributes.has_key?(:'charges')
        if (value = attributes[:'charges']).is_a?(Array)
          self.charges = value
        end
      end

      if attributes.has_key?(:'dryRun')
        self.dry_run = attributes[:'dryRun']
      end

      if attributes.has_key?(:'voidOnFailure')
        self.void_on_failure = attributes[:'voidOnFailure']
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
      remaining_credit_behaviour_validator = EnumAttributeValidator.new('String', ["Rollover", "Discard"])
      return false unless remaining_credit_behaviour_validator.valid?(@remaining_credit_behaviour)
      invoice_state_validator = EnumAttributeValidator.new('String', ["Unpaid", "Pending"])
      return false unless invoice_state_validator.valid?(@invoice_state)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] remaining_credit_behaviour Object to be assigned
    def remaining_credit_behaviour=(remaining_credit_behaviour)
      validator = EnumAttributeValidator.new('String', ["Rollover", "Discard"])
      unless validator.valid?(remaining_credit_behaviour)
        fail ArgumentError, "invalid value for 'remaining_credit_behaviour', must be one of #{validator.allowable_values}."
      end
      @remaining_credit_behaviour = remaining_credit_behaviour
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_state Object to be assigned
    def invoice_state=(invoice_state)
      validator = EnumAttributeValidator.new('String', ["Unpaid", "Pending"])
      unless validator.valid?(invoice_state)
        fail ArgumentError, "invalid value for 'invoice_state', must be one of #{validator.allowable_values}."
      end
      @invoice_state = invoice_state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          purchase_order == o.purchase_order &&
          description == o.description &&
          currency == o.currency &&
          payment_terms == o.payment_terms &&
          remaining_credit_behaviour == o.remaining_credit_behaviour &&
          invoice_state == o.invoice_state &&
          charges == o.charges &&
          dry_run == o.dry_run &&
          void_on_failure == o.void_on_failure
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, purchase_order, description, currency, payment_terms, remaining_credit_behaviour, invoice_state, charges, dry_run, void_on_failure].hash
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
