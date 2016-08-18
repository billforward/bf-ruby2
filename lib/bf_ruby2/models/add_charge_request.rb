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
  # Request object for raising a charge against a subscription or invoice.
  class AddChargeRequest
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # {\"description\":\"ID of an existing charge to add to the invoice \",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :id

    # {\"description\":\"Friendly name given to the charge to help identify it.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :name

    # {\"description\":\"\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :description

    # { \"description\" : \"Currency of the invoice specified by a three character ISO 4217 currency code.\", \"verbs\":[\"GET\"] }
    attr_accessor :currency

    # {\"description\":\"Monetary amount for which to charge. Used only for ad-hoc charges i.e charges not associated with any pricing component. Applicable if pricingComponent is NOT defined\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :amount

    # {\"default\":false,\"description\":\"Applicable if amount is specified and indicates whether or not to apply tax in addition to the value specified.<br><span class=\\\"label label-default\\\">true</span> &mdash; Tax will be added on top of the nominal price specified in amount &mdash; in accordance with any taxation strategies you have defined.<br><span class=\\\"label label-default\\\">false</span> &mdash; No tax will be applied on top of the price specified in amount.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :tax_amount

    # {\"default\":\"Now\",\"description\":\"Start of the interval to which the charge applies. This can be used to apply a charge across partial or multiple periods. Pro-rating the price of pricingComponents purchased\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :period_start

    # {\"default\":\"(End of current period)\",\"description\":\"(Applicable only if `pricingComponent` is defined)<br>End of the interval to which the charge applies. Used in pro-rata calculation\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :period_end

    # {\"default\":\"<span class=\\\"label label-default\\\">Aggregated</span>\",\"description\":\"Applicable if adding a charge to the subscription.<br><span class=\\\"label label-default\\\">Immediate</span> &mdash; Generate straight-away an invoice containing these charges.<br><span class=\\\"label label-default\\\">Aggregated</span> &mdash; Add these charges to the next invoice &mdash; for example the invoice raised at the current period's end.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :invoicing_type

    # {\"default\":\"<span class=\\\"label label-default\\\">Debit</span>\",\"description\":\"Whether this charge represents an increase or decrease in invoice cost<br><span class=\\\"label label-default\\\">Credit</span> &mdash; This results in a reduction to the invoice cost<br><span class=\\\"label label-default\\\">Debit</span> &mdash; This will increase the invoice cost\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :charge_type

    # {\"default\":\"false\",\"description\":\"Whether the charge is meant in the context of a trial.<br><span class=\\\"label label-default\\\">false</span> &mdash; This is a non-trial charge, so funds will be sought from the customer.<br><span class=\\\"label label-default\\\">true</span> &mdash; This is a trial charge, soThe charge can be considered 'Paid' without taking any funds from the customer.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :trial

    # {\"default\":\"<span class=\\\"label label-default\\\">Rollover</span>\",\"description\":\"Defines the behaviour applied to any outstanding credit resulting from the application of the charge.<br><span class=\\\"label label-default\\\">Rollover</span> &mdash; Outstanding credit is returned to the accounts credit pool.<br><span class=\\\"label label-default\\\">Discard</span> &mdash; Outstanding credit is lost.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :remaining_credit_behaviour

    # {\"description\":\"Specifies that this charge is for consumption of some quantity of this pricing component (whose name or ID can be provided).<br>If left blank:<br>The charge will be created as 'ad-hoc'. That is: a monetary lump sum, associated with no pricing component\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :pricing_component

    # {\"description\":\"The value consumed of the pricing component which this charge concerns.Required if pricingComponent is defined\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :pricing_component_value

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
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'currency' => :'currency',
        :'amount' => :'amount',
        :'tax_amount' => :'taxAmount',
        :'period_start' => :'periodStart',
        :'period_end' => :'periodEnd',
        :'invoicing_type' => :'invoicingType',
        :'charge_type' => :'chargeType',
        :'trial' => :'trial',
        :'remaining_credit_behaviour' => :'remainingCreditBehaviour',
        :'pricing_component' => :'pricingComponent',
        :'pricing_component_value' => :'pricingComponentValue',
        :'dry_run' => :'dryRun'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'currency' => :'String',
        :'amount' => :'Float',
        :'tax_amount' => :'BOOLEAN',
        :'period_start' => :'DateTime',
        :'period_end' => :'DateTime',
        :'invoicing_type' => :'String',
        :'charge_type' => :'String',
        :'trial' => :'BOOLEAN',
        :'remaining_credit_behaviour' => :'String',
        :'pricing_component' => :'String',
        :'pricing_component_value' => :'Integer',
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

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      else
        self.tax_amount = false
      end

      if attributes.has_key?(:'periodStart')
        self.period_start = attributes[:'periodStart']
      end

      if attributes.has_key?(:'periodEnd')
        self.period_end = attributes[:'periodEnd']
      end

      if attributes.has_key?(:'invoicingType')
        self.invoicing_type = attributes[:'invoicingType']
      end

      if attributes.has_key?(:'chargeType')
        self.charge_type = attributes[:'chargeType']
      end

      if attributes.has_key?(:'trial')
        self.trial = attributes[:'trial']
      else
        self.trial = false
      end

      if attributes.has_key?(:'remainingCreditBehaviour')
        self.remaining_credit_behaviour = attributes[:'remainingCreditBehaviour']
      end

      if attributes.has_key?(:'pricingComponent')
        self.pricing_component = attributes[:'pricingComponent']
      end

      if attributes.has_key?(:'pricingComponentValue')
        self.pricing_component_value = attributes[:'pricingComponentValue']
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
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invoicing_type_validator = EnumAttributeValidator.new('String', ["Immediate", "Aggregated"])
      return false unless invoicing_type_validator.valid?(@invoicing_type)
      charge_type_validator = EnumAttributeValidator.new('String', ["Credit", "Debit"])
      return false unless charge_type_validator.valid?(@charge_type)
      return false if @remaining_credit_behaviour.nil?
      remaining_credit_behaviour_validator = EnumAttributeValidator.new('String', ["Rollover", "Discard"])
      return false unless remaining_credit_behaviour_validator.valid?(@remaining_credit_behaviour)
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
    # @param [Object] charge_type Object to be assigned
    def charge_type=(charge_type)
      validator = EnumAttributeValidator.new('String', ["Credit", "Debit"])
      unless validator.valid?(charge_type)
        fail ArgumentError, "invalid value for 'charge_type', must be one of #{validator.allowable_values}."
      end
      @charge_type = charge_type
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created == o.created &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          currency == o.currency &&
          amount == o.amount &&
          tax_amount == o.tax_amount &&
          period_start == o.period_start &&
          period_end == o.period_end &&
          invoicing_type == o.invoicing_type &&
          charge_type == o.charge_type &&
          trial == o.trial &&
          remaining_credit_behaviour == o.remaining_credit_behaviour &&
          pricing_component == o.pricing_component &&
          pricing_component_value == o.pricing_component_value &&
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
      [created, id, name, description, currency, amount, tax_amount, period_start, period_end, invoicing_type, charge_type, trial, remaining_credit_behaviour, pricing_component, pricing_component_value, dry_run].hash
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