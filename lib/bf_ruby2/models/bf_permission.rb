=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module Bfwd
  # BFPermission
  class BFPermission
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"\", \"verbs\":[\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"\", \"verbs\":[\"GET\", \"POST\"] }
    attr_accessor :role_id

    # { \"description\" : \"\", \"verbs\":[\"GET\", \"POST\"] }
    attr_accessor :role_name

    # { \"description\" : \"BillForward resource associated with this permission.\", \"verbs\":[\"GET\",\"POST\",\"PUT\"] }
    attr_accessor :resource

    # { \"description\" : \"Action they may be performed on the associated resource.\", \"verbs\":[\"GET\",\"POST\",\"PUT\"] }
    attr_accessor :action

    # { \"description\" : \"If a permission is deleted it is set as revoked from this date. The role with this permission will no longer have its applied.\", \"verbs\":[\"GET\",\"POST\",\"PUT\"] }
    attr_accessor :revoked

    # { \"default\" : \"false\", \"description\" : \"If a permission is deleted the role with this permission will no longer have its applied.\", \"verbs\":[\"GET\",\"POST\",\"PUT\"] }
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
        :'role_id' => :'roleID',
        :'role_name' => :'roleName',
        :'resource' => :'resource',
        :'action' => :'action',
        :'revoked' => :'revoked',
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
        :'role_id' => :'String',
        :'role_name' => :'String',
        :'resource' => :'String',
        :'action' => :'String',
        :'revoked' => :'DateTime',
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

      if attributes.has_key?(:'roleID')
        self.role_id = attributes[:'roleID']
      end

      if attributes.has_key?(:'roleName')
        self.role_name = attributes[:'roleName']
      end

      if attributes.has_key?(:'resource')
        self.resource = attributes[:'resource']
      end

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'revoked')
        self.revoked = attributes[:'revoked']
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
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      resource_validator = EnumAttributeValidator.new('String', ["All", "Account", "Address", "Amendment", "Analytics", "Audit", "BFAdmin", "BFJS", "Charge", "Client", "Configuration", "CouponBook", "CouponBookDefinition", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "Coupon", "Credit", "CybersourceToken", "Dunning", "Email", "FixedTerm", "Gateway", "Invoice", "Notification", "Organization", "Password", "PaymentMethod", "Payment", "Permission", "PricingComponent", "PricingComponentTier", "PricingComponentValueChange", "PricingComponentValue", "ProductRatePlan", "Product", "ProductResources", "Profile", "Quote", "Receipt", "Refund", "Salesforce", "Search", "Subscription", "Tax", "UnitOfMeasure", "Usage", "Username", "User", "UserResources", "Webhook"])
      return false unless resource_validator.valid?(@resource)
      action_validator = EnumAttributeValidator.new('String', ["All", "AddToInvoice", "AddToProductRatePlan", "AddToSubscription", "Advance", "Aggregate", "RemoveFromInvoice", "RemoveFromProductRatePlan", "RemoveFromSubscription", "Cancel", "Create", "Delete", "Edit", "Execute", "Freeze", "Import", "InvoiceCharges", "Issue", "Migrate", "Read", "Recalculate", "Reset", "Resume", "Revive", "Stop", "Tokenize", "Void"])
      return false unless action_validator.valid?(@action)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource Object to be assigned
    def resource=(resource)
      validator = EnumAttributeValidator.new('String', ["All", "Account", "Address", "Amendment", "Analytics", "Audit", "BFAdmin", "BFJS", "Charge", "Client", "Configuration", "CouponBook", "CouponBookDefinition", "CouponDefinition", "CouponInstance", "CouponModifier", "CouponRule", "Coupon", "Credit", "CybersourceToken", "Dunning", "Email", "FixedTerm", "Gateway", "Invoice", "Notification", "Organization", "Password", "PaymentMethod", "Payment", "Permission", "PricingComponent", "PricingComponentTier", "PricingComponentValueChange", "PricingComponentValue", "ProductRatePlan", "Product", "ProductResources", "Profile", "Quote", "Receipt", "Refund", "Salesforce", "Search", "Subscription", "Tax", "UnitOfMeasure", "Usage", "Username", "User", "UserResources", "Webhook"])
      unless validator.valid?(resource)
        fail ArgumentError, "invalid value for 'resource', must be one of #{validator.allowable_values}."
      end
      @resource = resource
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["All", "AddToInvoice", "AddToProductRatePlan", "AddToSubscription", "Advance", "Aggregate", "RemoveFromInvoice", "RemoveFromProductRatePlan", "RemoveFromSubscription", "Cancel", "Create", "Delete", "Edit", "Execute", "Freeze", "Import", "InvoiceCharges", "Issue", "Migrate", "Read", "Recalculate", "Reset", "Resume", "Revive", "Stop", "Tokenize", "Void"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for 'action', must be one of #{validator.allowable_values}."
      end
      @action = action
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
          role_id == o.role_id &&
          role_name == o.role_name &&
          resource == o.resource &&
          action == o.action &&
          revoked == o.revoked &&
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
      [created, changed_by, updated, id, role_id, role_name, resource, action, revoked, deleted].hash
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
