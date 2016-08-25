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
  # Account
  class Account
    # { \"description\" : \"CRM ID of the account.\", \"verbs\":[\"GET\"] }
    attr_accessor :crm_id

    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"Add metadata.\", \"verbs\":[\"POST\"] }
    attr_accessor :metadata

    # { \"description\" : \"ID of the account.\", \"verbs\":[\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"Organization associated with the account.\", \"verbs\":[] }
    attr_accessor :organization_id

    # { \"description\" : \"User associated with the account. If this is null, no user is currently assocaited with the account. A user is only set when an account is associated with a user account.\", \"verbs\":[] }
    attr_accessor :user_id

    # { \"description\" : \"Number of distinct, paid subscriptions associated with this account. Initially the value will be 0 when no successful subscriptions have been taken. A subscription cancelled whilst in trial is counted as successful.\", \"verbs\":[\"GET\"] }
    attr_accessor :successful_subscriptions

    # { \"description\" : \"If present, this will be the product rate plan to use when creating an aggregating subscription.  An account level aggregating subscription will be created when the first subscription is created against the account.\", \"verbs\":[] }
    attr_accessor :aggregating_product_rate_plan_id

    # { \"description\" : \"The consistent ID of the account level aggregating subscription, if one exists.\", \"verbs\":[] }
    attr_accessor :aggregating_subscription_id

    # {  \"default\" : \"false\",  \"description\" : \"Indicates if an account has been retired. If an account has been retired it can still be retrieved using the appropriate flag on API requests.\", \"verbs\":[\"GET\"] }
    attr_accessor :deleted

    attr_accessor :profile

    # { \"description\" : \"The payment-methods associated with the account.\", \"verbs\":[\"GET\"] }
    attr_accessor :payment_methods


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'crm_id' => :'crmID',
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'metadata' => :'metadata',
        :'id' => :'id',
        :'organization_id' => :'organizationID',
        :'user_id' => :'userID',
        :'successful_subscriptions' => :'successfulSubscriptions',
        :'aggregating_product_rate_plan_id' => :'aggregatingProductRatePlanID',
        :'aggregating_subscription_id' => :'aggregatingSubscriptionID',
        :'deleted' => :'deleted',
        :'profile' => :'profile',
        :'payment_methods' => :'paymentMethods'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'crm_id' => :'String',
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'metadata' => :'DynamicMetadata',
        :'id' => :'String',
        :'organization_id' => :'String',
        :'user_id' => :'String',
        :'successful_subscriptions' => :'Integer',
        :'aggregating_product_rate_plan_id' => :'String',
        :'aggregating_subscription_id' => :'String',
        :'deleted' => :'BOOLEAN',
        :'profile' => :'Profile',
        :'payment_methods' => :'Array<PaymentMethod>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'crmID')
        self.crm_id = attributes[:'crmID']
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

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'userID')
        self.user_id = attributes[:'userID']
      end

      if attributes.has_key?(:'successfulSubscriptions')
        self.successful_subscriptions = attributes[:'successfulSubscriptions']
      end

      if attributes.has_key?(:'aggregatingProductRatePlanID')
        self.aggregating_product_rate_plan_id = attributes[:'aggregatingProductRatePlanID']
      end

      if attributes.has_key?(:'aggregatingSubscriptionID')
        self.aggregating_subscription_id = attributes[:'aggregatingSubscriptionID']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = false
      end

      if attributes.has_key?(:'profile')
        self.profile = attributes[:'profile']
      end

      if attributes.has_key?(:'paymentMethods')
        if (value = attributes[:'paymentMethods']).is_a?(Array)
          self.payment_methods = value
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
      return false if @id.nil?
      return false if @organization_id.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          crm_id == o.crm_id &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          metadata == o.metadata &&
          id == o.id &&
          organization_id == o.organization_id &&
          user_id == o.user_id &&
          successful_subscriptions == o.successful_subscriptions &&
          aggregating_product_rate_plan_id == o.aggregating_product_rate_plan_id &&
          aggregating_subscription_id == o.aggregating_subscription_id &&
          deleted == o.deleted &&
          profile == o.profile &&
          payment_methods == o.payment_methods
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [crm_id, created, changed_by, updated, metadata, id, organization_id, user_id, successful_subscriptions, aggregating_product_rate_plan_id, aggregating_subscription_id, deleted, profile, payment_methods].hash
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
