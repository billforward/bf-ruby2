=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module Bfwd
  # A coupon-book.
  class CouponBook
    # { \"description\" : \"The book code for the coupon-book. This is used to create coupon-instances which are associated with subscriptions.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :book_code

    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"ID of the coupon-book.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"CRM ID of the product-rate-plan.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :crm_id

    # { \"description\" : \"Organization associated with the  the coupon-book.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"ID of the coupon-book-definition associated with the coupon-book.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :coupon_book_definition_id

    # { \"description\" : \"The human readable name of the coupon-book.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :name

    # { \"description\" : \"The cost of the coupon-book. Can be used to keep track of coupon-book sales.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :cost

    # { \"description\" : \"The number of available coupon-instances left in the coupon-book.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :remaining_coupons

    # { \"description\" : \"The original number of available coupon-instances that the coupon-book can hold.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :max_remaining_coupons

    # { \"description\" : \"The maximum number of uses each coupon-instance created from this coupon-book can have.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :maximum_coupon_uses

    # { \"description\" : \"Has the coupon book been deleted?\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :deleted


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'book_code' => :'bookCode',
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'id' => :'id',
        :'crm_id' => :'crmID',
        :'organization_id' => :'organizationID',
        :'coupon_book_definition_id' => :'couponBookDefinitionID',
        :'name' => :'name',
        :'cost' => :'cost',
        :'remaining_coupons' => :'remainingCoupons',
        :'max_remaining_coupons' => :'maxRemainingCoupons',
        :'maximum_coupon_uses' => :'maximumCouponUses',
        :'deleted' => :'deleted'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'book_code' => :'String',
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'crm_id' => :'String',
        :'organization_id' => :'String',
        :'coupon_book_definition_id' => :'String',
        :'name' => :'String',
        :'cost' => :'Float',
        :'remaining_coupons' => :'Integer',
        :'max_remaining_coupons' => :'Integer',
        :'maximum_coupon_uses' => :'Integer',
        :'deleted' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'bookCode')
        self.book_code = attributes[:'bookCode']
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

      if attributes.has_key?(:'crmID')
        self.crm_id = attributes[:'crmID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'couponBookDefinitionID')
        self.coupon_book_definition_id = attributes[:'couponBookDefinitionID']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'remainingCoupons')
        self.remaining_coupons = attributes[:'remainingCoupons']
      end

      if attributes.has_key?(:'maxRemainingCoupons')
        self.max_remaining_coupons = attributes[:'maxRemainingCoupons']
      end

      if attributes.has_key?(:'maximumCouponUses')
        self.maximum_coupon_uses = attributes[:'maximumCouponUses']
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
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @crm_id.nil?
        invalid_properties.push("invalid value for 'crm_id', crm_id cannot be nil.")
      end

      if @organization_id.nil?
        invalid_properties.push("invalid value for 'organization_id', organization_id cannot be nil.")
      end

      if @coupon_book_definition_id.nil?
        invalid_properties.push("invalid value for 'coupon_book_definition_id', coupon_book_definition_id cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @cost.nil?
        invalid_properties.push("invalid value for 'cost', cost cannot be nil.")
      end

      if @remaining_coupons.nil?
        invalid_properties.push("invalid value for 'remaining_coupons', remaining_coupons cannot be nil.")
      end

      if @max_remaining_coupons.nil?
        invalid_properties.push("invalid value for 'max_remaining_coupons', max_remaining_coupons cannot be nil.")
      end

      if @maximum_coupon_uses.nil?
        invalid_properties.push("invalid value for 'maximum_coupon_uses', maximum_coupon_uses cannot be nil.")
      end

      if @deleted.nil?
        invalid_properties.push("invalid value for 'deleted', deleted cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @crm_id.nil?
      return false if @organization_id.nil?
      return false if @coupon_book_definition_id.nil?
      return false if @name.nil?
      return false if @cost.nil?
      return false if @remaining_coupons.nil?
      return false if @max_remaining_coupons.nil?
      return false if @maximum_coupon_uses.nil?
      return false if @deleted.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          book_code == o.book_code &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          id == o.id &&
          crm_id == o.crm_id &&
          organization_id == o.organization_id &&
          coupon_book_definition_id == o.coupon_book_definition_id &&
          name == o.name &&
          cost == o.cost &&
          remaining_coupons == o.remaining_coupons &&
          max_remaining_coupons == o.max_remaining_coupons &&
          maximum_coupon_uses == o.maximum_coupon_uses &&
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
      [book_code, created, changed_by, updated, id, crm_id, organization_id, coupon_book_definition_id, name, cost, remaining_coupons, max_remaining_coupons, maximum_coupon_uses, deleted].hash
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
