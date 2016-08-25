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
  # PricingComponentValue
  class PricingComponentValue
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :version_id

    # { \"description\" : \"\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :pricing_component_id

    # { \"description\" : \"Name of the pricing-component associated with the pricing-component-value.\", \"verbs\":[\"GET\"] }
    attr_accessor :pricing_component_name

    # { \"description\" : \"Value can be left null if setting the pricing component value on the subscription directly.\", \"verbs\":[\"GET\", \"POST\"] }
    attr_accessor :subscription_id

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"Quantity of a particular pricing component the subscription should have. For example if you have a pricing component for widgets, where $5/widget/month and you set the value to 10 then the customer will be charged $50 ($5 x 10) monthly.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :value

    # { \"description\" : \"<p>The appliesFrom can be left null. If appliesFrom is set, it indicates when a value came into effect.</p>\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :applies_from

    # { \"description\" : \"<p>For <span class=\\\"label label-default\\\">setup</span>, <span class=\\\"label label-default\\\">subscription</span>, and <span class=\\\"label label-default\\\">arrears</span> pricing components if appliesTill is specificed the value will be used whilst the time has not been reached. If appliesTill is null the pricing component value will be used until a new value is added. When a new value is added appliesTill will be set to the time the new value will take effect.</p><p><span class=\\\"label label-default\\\">usage</span> pricing applies to the previous billing period as it is charged in-arrears. When adding usage a new pricing component value should be added with appliesTill set to the end of the usages billing period. For example a monthly subscription results in an invoice being generated on the 1<sup>st</sup> of March, the previous months usage period ended on the same date. A usage value should be added to the subscription with the appliesTill set to the invoices periodStart, the 1<sup>st</sup> of March.</p>\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :applies_till

    attr_accessor :pending_change


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'id' => :'id',
        :'version_id' => :'versionID',
        :'pricing_component_id' => :'pricingComponentID',
        :'pricing_component_name' => :'pricingComponentName',
        :'subscription_id' => :'subscriptionID',
        :'organization_id' => :'organizationID',
        :'value' => :'value',
        :'applies_from' => :'appliesFrom',
        :'applies_till' => :'appliesTill',
        :'pending_change' => :'pendingChange'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'version_id' => :'String',
        :'pricing_component_id' => :'String',
        :'pricing_component_name' => :'String',
        :'subscription_id' => :'String',
        :'organization_id' => :'String',
        :'value' => :'Integer',
        :'applies_from' => :'DateTime',
        :'applies_till' => :'DateTime',
        :'pending_change' => :'PendingComponentValueChange'
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

      if attributes.has_key?(:'versionID')
        self.version_id = attributes[:'versionID']
      end

      if attributes.has_key?(:'pricingComponentID')
        self.pricing_component_id = attributes[:'pricingComponentID']
      end

      if attributes.has_key?(:'pricingComponentName')
        self.pricing_component_name = attributes[:'pricingComponentName']
      end

      if attributes.has_key?(:'subscriptionID')
        self.subscription_id = attributes[:'subscriptionID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'appliesFrom')
        self.applies_from = attributes[:'appliesFrom']
      end

      if attributes.has_key?(:'appliesTill')
        self.applies_till = attributes[:'appliesTill']
      end

      if attributes.has_key?(:'pendingChange')
        self.pending_change = attributes[:'pendingChange']
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
      return false if @id.nil?
      return false if @pricing_component_id.nil?
      return false if @subscription_id.nil?
      return false if @value.nil?
      return true
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
          version_id == o.version_id &&
          pricing_component_id == o.pricing_component_id &&
          pricing_component_name == o.pricing_component_name &&
          subscription_id == o.subscription_id &&
          organization_id == o.organization_id &&
          value == o.value &&
          applies_from == o.applies_from &&
          applies_till == o.applies_till &&
          pending_change == o.pending_change
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, version_id, pricing_component_id, pricing_component_name, subscription_id, organization_id, value, applies_from, applies_till, pending_change].hash
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
