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
  # An invoice-line represents the portion of an invoice specific to one particular pricing-component and its associated pricing-component-value.
  class InvoiceLine
    # { \"description\" : \"The unit-of-measure associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :unit_of_measure

    # { \"description\" : \"The type of the pricing component associated with the invoice line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :pricing_component_type

    # { \"description\" : \"charge-type.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :charge_type

    # The period start of the charge.
    attr_accessor :period_start

    # The period end of the charge.
    attr_accessor :period_end

    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"ID of the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"invoice associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :invoice_id

    # { \"description\" : \"unit-of-measure associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :unit_of_measure_id

    # { \"description\" : \"the subscription ID associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :subscription_id

    # { \"description\" : \"the product rate plan ID associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :product_rate_plan_id

    # { \"description\" : \"the public product rate plan name associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :public_product_rate_plan_name

    # { \"description\" : \"the product rate plan name associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :product_rate_plan_name

    # { \"description\" : \"the product ID associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :product_id

    # { \"description\" : \"the public product name associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :public_product_name

    # { \"description\" : \"the product name associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :product_name

    # { \"description\" : \"ID of the organization associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"The human readable name of the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :name

    # { \"description\" : \"The human readable description of the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :description

    # { \"description\" : \"A human readable explanation of how the value of the invoice-line was calculated.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :calculation

    # { \"description\" : \"The cost of the invoice-line including tax.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :cost

    # { \"description\" : \"The cumulative tax of the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :tax

    # { \"description\" : \"The component value for the unit-of-measure that is associated with the invoice-line.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :component_value

    # The ID of the pricing-component that is associated with the invoice-line.
    attr_accessor :pricing_component_id

    # The public name of the pricing-component that is associated with the invoice-line.
    attr_accessor :public_pricing_component_name

    # The name of the pricing-component that is associated with the invoice-line.
    attr_accessor :pricing_component_name

    # The ID of the subscription-charge that is associated with the invoice-line.
    attr_accessor :subscription_charge_id

    # The ID of the invoice that is associated with the invoice-line.
    attr_accessor :child_invoice_id

    # The type of the invoice-line.
    attr_accessor :type

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
        :'unit_of_measure' => :'unitOfMeasure',
        :'pricing_component_type' => :'pricingComponentType',
        :'charge_type' => :'chargeType',
        :'period_start' => :'periodStart',
        :'period_end' => :'periodEnd',
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'id' => :'id',
        :'invoice_id' => :'invoiceID',
        :'unit_of_measure_id' => :'unitOfMeasureID',
        :'subscription_id' => :'subscriptionID',
        :'product_rate_plan_id' => :'productRatePlanID',
        :'public_product_rate_plan_name' => :'publicProductRatePlanName',
        :'product_rate_plan_name' => :'productRatePlanName',
        :'product_id' => :'productID',
        :'public_product_name' => :'publicProductName',
        :'product_name' => :'productName',
        :'organization_id' => :'organizationID',
        :'name' => :'name',
        :'description' => :'description',
        :'calculation' => :'calculation',
        :'cost' => :'cost',
        :'tax' => :'tax',
        :'component_value' => :'componentValue',
        :'pricing_component_id' => :'pricingComponentID',
        :'public_pricing_component_name' => :'publicPricingComponentName',
        :'pricing_component_name' => :'pricingComponentName',
        :'subscription_charge_id' => :'subscriptionChargeID',
        :'child_invoice_id' => :'childInvoiceID',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'unit_of_measure' => :'UnitOfMeasure',
        :'pricing_component_type' => :'String',
        :'charge_type' => :'String',
        :'period_start' => :'DateTime',
        :'period_end' => :'DateTime',
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'invoice_id' => :'String',
        :'unit_of_measure_id' => :'String',
        :'subscription_id' => :'String',
        :'product_rate_plan_id' => :'String',
        :'public_product_rate_plan_name' => :'String',
        :'product_rate_plan_name' => :'String',
        :'product_id' => :'String',
        :'public_product_name' => :'String',
        :'product_name' => :'String',
        :'organization_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'calculation' => :'String',
        :'cost' => :'Float',
        :'tax' => :'Float',
        :'component_value' => :'Integer',
        :'pricing_component_id' => :'String',
        :'public_pricing_component_name' => :'String',
        :'pricing_component_name' => :'String',
        :'subscription_charge_id' => :'String',
        :'child_invoice_id' => :'String',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
      end

      if attributes.has_key?(:'pricingComponentType')
        self.pricing_component_type = attributes[:'pricingComponentType']
      end

      if attributes.has_key?(:'chargeType')
        self.charge_type = attributes[:'chargeType']
      end

      if attributes.has_key?(:'periodStart')
        self.period_start = attributes[:'periodStart']
      end

      if attributes.has_key?(:'periodEnd')
        self.period_end = attributes[:'periodEnd']
      end

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

      if attributes.has_key?(:'invoiceID')
        self.invoice_id = attributes[:'invoiceID']
      end

      if attributes.has_key?(:'unitOfMeasureID')
        self.unit_of_measure_id = attributes[:'unitOfMeasureID']
      end

      if attributes.has_key?(:'subscriptionID')
        self.subscription_id = attributes[:'subscriptionID']
      end

      if attributes.has_key?(:'productRatePlanID')
        self.product_rate_plan_id = attributes[:'productRatePlanID']
      end

      if attributes.has_key?(:'publicProductRatePlanName')
        self.public_product_rate_plan_name = attributes[:'publicProductRatePlanName']
      end

      if attributes.has_key?(:'productRatePlanName')
        self.product_rate_plan_name = attributes[:'productRatePlanName']
      end

      if attributes.has_key?(:'productID')
        self.product_id = attributes[:'productID']
      end

      if attributes.has_key?(:'publicProductName')
        self.public_product_name = attributes[:'publicProductName']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'calculation')
        self.calculation = attributes[:'calculation']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.has_key?(:'componentValue')
        self.component_value = attributes[:'componentValue']
      end

      if attributes.has_key?(:'pricingComponentID')
        self.pricing_component_id = attributes[:'pricingComponentID']
      end

      if attributes.has_key?(:'publicPricingComponentName')
        self.public_pricing_component_name = attributes[:'publicPricingComponentName']
      end

      if attributes.has_key?(:'pricingComponentName')
        self.pricing_component_name = attributes[:'pricingComponentName']
      end

      if attributes.has_key?(:'subscriptionChargeID')
        self.subscription_charge_id = attributes[:'subscriptionChargeID']
      end

      if attributes.has_key?(:'childInvoiceID')
        self.child_invoice_id = attributes[:'childInvoiceID']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
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
      return false if @pricing_component_type.nil?
      pricing_component_type_validator = EnumAttributeValidator.new('String', ["setup", "subscription", "arrears", "usage"])
      return false unless pricing_component_type_validator.valid?(@pricing_component_type)
      return false if @charge_type.nil?
      charge_type_validator = EnumAttributeValidator.new('String', ["Credit", "Debit"])
      return false unless charge_type_validator.valid?(@charge_type)
      return false if @period_start.nil?
      return false if @period_end.nil?
      return false if @invoice_id.nil?
      return false if @organization_id.nil?
      return false if @name.nil?
      return false if @description.nil?
      return false if @calculation.nil?
      return false if @cost.nil?
      return false if @tax.nil?
      return false if @component_value.nil?
      return false if @pricing_component_id.nil?
      return false if @public_pricing_component_name.nil?
      return false if @pricing_component_name.nil?
      return false if @subscription_charge_id.nil?
      return false if @child_invoice_id.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["PricingComponent", "Coupon", "Migration", "AggregatedInvoice"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pricing_component_type Object to be assigned
    def pricing_component_type=(pricing_component_type)
      validator = EnumAttributeValidator.new('String', ["setup", "subscription", "arrears", "usage"])
      unless validator.valid?(pricing_component_type)
        fail ArgumentError, "invalid value for 'pricing_component_type', must be one of #{validator.allowable_values}."
      end
      @pricing_component_type = pricing_component_type
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
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["PricingComponent", "Coupon", "Migration", "AggregatedInvoice"])
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
          unit_of_measure == o.unit_of_measure &&
          pricing_component_type == o.pricing_component_type &&
          charge_type == o.charge_type &&
          period_start == o.period_start &&
          period_end == o.period_end &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          id == o.id &&
          invoice_id == o.invoice_id &&
          unit_of_measure_id == o.unit_of_measure_id &&
          subscription_id == o.subscription_id &&
          product_rate_plan_id == o.product_rate_plan_id &&
          public_product_rate_plan_name == o.public_product_rate_plan_name &&
          product_rate_plan_name == o.product_rate_plan_name &&
          product_id == o.product_id &&
          public_product_name == o.public_product_name &&
          product_name == o.product_name &&
          organization_id == o.organization_id &&
          name == o.name &&
          description == o.description &&
          calculation == o.calculation &&
          cost == o.cost &&
          tax == o.tax &&
          component_value == o.component_value &&
          pricing_component_id == o.pricing_component_id &&
          public_pricing_component_name == o.public_pricing_component_name &&
          pricing_component_name == o.pricing_component_name &&
          subscription_charge_id == o.subscription_charge_id &&
          child_invoice_id == o.child_invoice_id &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [unit_of_measure, pricing_component_type, charge_type, period_start, period_end, created, changed_by, updated, id, invoice_id, unit_of_measure_id, subscription_id, product_rate_plan_id, public_product_rate_plan_name, product_rate_plan_name, product_id, public_product_name, product_name, organization_id, name, description, calculation, cost, tax, component_value, pricing_component_id, public_pricing_component_name, pricing_component_name, subscription_charge_id, child_invoice_id, type].hash
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