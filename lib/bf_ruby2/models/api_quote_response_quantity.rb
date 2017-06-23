=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module Bfwd
  # Calculated value of some pricing component for which a quote was requested.
  class APIQuoteResponseQuantity
    # {\"description\":\"Name of the pricing component whose price was calculated.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :pricing_component_name

    # {\"description\":\"Charge type of the pricing component whose price was calculated.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :pricing_component_type

    # {\"description\":\"ID of the pricing component whose price was calculated.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :pricing_component_id

    # {\"description\":\"Quantity of the pricing component whose price was calculated.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :quantity

    # {\"description\":\"Previous quantity of the pricing component. Price is calculated with respect to a delta from this quantity.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :existing_quantity

    # {\"description\":\"The cost &mdash; including tax, and with discounts (themselves including tax) applied &mdash; contributed by consumption of this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :final_cost

    # {\"description\":\"The cost &mdash; excluding tax, and with discounts (themselves excluding tax) applied &mdash; contributed by consumption of this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :final_cost_excluding_tax

    # {\"description\":\"The cost &mdash; including tax, but excluding discounts &mdash; contributed by consumption of this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :cost

    # {\"description\":\"The cost &mdash; excluding tax, and excluding discounts &mdash; contributed by consumption of this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :cost_excluding_tax

    # {\"description\":\"The portion of this pricing component's cost which is comprised of tax.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :tax

    # {\"description\":\"The discount &mdash; including tax &mdash; applied to this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :discount

    # {\"description\":\"The discount &mdash; excluding tax &mdash; applied to this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :discount_excluding_tax

    # {\"description\":\"ID of the 'Unit of Measure' entity  &mdash; in which this pricing component is measured.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :unit_of_measure_id

    # {\"description\":\"Name of the 'Unit of Measure' entity  &mdash; in which this pricing component is measured.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :unit_of_measure_name

    # {\"description\":\"Displayable units of the 'Unit of Measure' entity &mdash; in which this pricing component is measured.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :unit_of_measure_display

    # {\"description\":\"The 'Unit of Measure' entity used to measure this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :unit_of_measure

    # {\"description\":\"The date-time from which the pricing component's new value would apply.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :applies_from

    # {\"description\":\"A list of discounts applied in calculating the price of this pricing component.\",\"verbs\":[\"POST\",\"GET\"]}
    attr_accessor :discounts

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
        :'pricing_component_name' => :'pricingComponentName',
        :'pricing_component_type' => :'pricingComponentType',
        :'pricing_component_id' => :'pricingComponentID',
        :'quantity' => :'quantity',
        :'existing_quantity' => :'existingQuantity',
        :'final_cost' => :'finalCost',
        :'final_cost_excluding_tax' => :'finalCostExcludingTax',
        :'cost' => :'cost',
        :'cost_excluding_tax' => :'costExcludingTax',
        :'tax' => :'tax',
        :'discount' => :'discount',
        :'discount_excluding_tax' => :'discountExcludingTax',
        :'unit_of_measure_id' => :'unitOfMeasureID',
        :'unit_of_measure_name' => :'unitOfMeasureName',
        :'unit_of_measure_display' => :'unitOfMeasureDisplay',
        :'unit_of_measure' => :'unitOfMeasure',
        :'applies_from' => :'appliesFrom',
        :'discounts' => :'discounts'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'pricing_component_name' => :'String',
        :'pricing_component_type' => :'String',
        :'pricing_component_id' => :'String',
        :'quantity' => :'Integer',
        :'existing_quantity' => :'Integer',
        :'final_cost' => :'Float',
        :'final_cost_excluding_tax' => :'Float',
        :'cost' => :'Float',
        :'cost_excluding_tax' => :'Float',
        :'tax' => :'Float',
        :'discount' => :'Float',
        :'discount_excluding_tax' => :'Float',
        :'unit_of_measure_id' => :'String',
        :'unit_of_measure_name' => :'String',
        :'unit_of_measure_display' => :'String',
        :'unit_of_measure' => :'String',
        :'applies_from' => :'DateTime',
        :'discounts' => :'Array<CouponWrapperResponse>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'pricingComponentName')
        self.pricing_component_name = attributes[:'pricingComponentName']
      end

      if attributes.has_key?(:'pricingComponentType')
        self.pricing_component_type = attributes[:'pricingComponentType']
      end

      if attributes.has_key?(:'pricingComponentID')
        self.pricing_component_id = attributes[:'pricingComponentID']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'existingQuantity')
        self.existing_quantity = attributes[:'existingQuantity']
      end

      if attributes.has_key?(:'finalCost')
        self.final_cost = attributes[:'finalCost']
      end

      if attributes.has_key?(:'finalCostExcludingTax')
        self.final_cost_excluding_tax = attributes[:'finalCostExcludingTax']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'costExcludingTax')
        self.cost_excluding_tax = attributes[:'costExcludingTax']
      end

      if attributes.has_key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.has_key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.has_key?(:'discountExcludingTax')
        self.discount_excluding_tax = attributes[:'discountExcludingTax']
      end

      if attributes.has_key?(:'unitOfMeasureID')
        self.unit_of_measure_id = attributes[:'unitOfMeasureID']
      end

      if attributes.has_key?(:'unitOfMeasureName')
        self.unit_of_measure_name = attributes[:'unitOfMeasureName']
      end

      if attributes.has_key?(:'unitOfMeasureDisplay')
        self.unit_of_measure_display = attributes[:'unitOfMeasureDisplay']
      end

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
      end

      if attributes.has_key?(:'appliesFrom')
        self.applies_from = attributes[:'appliesFrom']
      end

      if attributes.has_key?(:'discounts')
        if (value = attributes[:'discounts']).is_a?(Array)
          self.discounts = value
        end
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
      pricing_component_type_validator = EnumAttributeValidator.new('String', ["setup", "subscription", "arrears", "usage"])
      return false unless pricing_component_type_validator.valid?(@pricing_component_type)
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pricing_component_name == o.pricing_component_name &&
          pricing_component_type == o.pricing_component_type &&
          pricing_component_id == o.pricing_component_id &&
          quantity == o.quantity &&
          existing_quantity == o.existing_quantity &&
          final_cost == o.final_cost &&
          final_cost_excluding_tax == o.final_cost_excluding_tax &&
          cost == o.cost &&
          cost_excluding_tax == o.cost_excluding_tax &&
          tax == o.tax &&
          discount == o.discount &&
          discount_excluding_tax == o.discount_excluding_tax &&
          unit_of_measure_id == o.unit_of_measure_id &&
          unit_of_measure_name == o.unit_of_measure_name &&
          unit_of_measure_display == o.unit_of_measure_display &&
          unit_of_measure == o.unit_of_measure &&
          applies_from == o.applies_from &&
          discounts == o.discounts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [pricing_component_name, pricing_component_type, pricing_component_id, quantity, existing_quantity, final_cost, final_cost_excluding_tax, cost, cost_excluding_tax, tax, discount, discount_excluding_tax, unit_of_measure_id, unit_of_measure_name, unit_of_measure_display, unit_of_measure, applies_from, discounts].hash
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
