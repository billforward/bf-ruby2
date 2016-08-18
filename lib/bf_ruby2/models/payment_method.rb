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
  # PaymentMethod
  class PaymentMethod
    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"ID of the payment-method.\", \"verbs\":[\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"CRM ID of the product-rate-plan.\", \"verbs\":] }
    attr_accessor :crm_id

    # { \"description\" : \"ID of the account associated with the payment-method.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :account_id

    attr_accessor :organization_id

    # { \"description\" : \"Name of the payment-method.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :name

    # { \"description\" : \"Description of the payment-method.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :description

    # { \"description\" : \"Name of the card holder\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :card_holder_name

    # { \"description\" : \"In the case of card payment methods this is the expiry date of the card, format should be MMYY including leading 0's. For example 0115 for January 2015.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :expiry_date

    # { \"description\" : \"Type of the card. In the case of card payment methods this is the payment type, for example VISA, MasterCard.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :card_type

    attr_accessor :country

    attr_accessor :province

    attr_accessor :first_six

    attr_accessor :last_four

    attr_accessor :expiry_year

    attr_accessor :expiry_month

    attr_accessor :link_id

    # { \"description\" : \"Gateway type for payment-method.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :gateway

    # {\"description\":\"IP address associated with this payment method.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :ip_address

    # {\"description\":\"Country of the IP address associated with this payment method.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :ip_address_country

    # { \"description\" : \"State of the payment-method.\", \"verbs\":[\"POST\",\"GET\"] }
    attr_accessor :state

    # {\"default\" : \"false\", \"description\" : \"Indicates if a payment-method has been retired. If a payment-method has been retired it can still be retrieved using the appropriate flag on API requests. Generally payment-methods will be retired by customers wanting to remove the payment method from their account. Caution should be used when requested deleted payment methods.\", \"verbs\":[\"GET\"] }
    attr_accessor :deleted

    # {\"default\" : \"false\", \"description\" : \"Indicates if this is the default payment method for the account.\", \"verbs\":[\"GET\",\"POST\",\"PUT\"]  }
    attr_accessor :default_payment_method

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
        :'organization_id' => :'organizationID',
        :'name' => :'name',
        :'description' => :'description',
        :'card_holder_name' => :'cardHolderName',
        :'expiry_date' => :'expiryDate',
        :'card_type' => :'cardType',
        :'country' => :'country',
        :'province' => :'province',
        :'first_six' => :'firstSix',
        :'last_four' => :'lastFour',
        :'expiry_year' => :'expiryYear',
        :'expiry_month' => :'expiryMonth',
        :'link_id' => :'linkID',
        :'gateway' => :'gateway',
        :'ip_address' => :'ipAddress',
        :'ip_address_country' => :'ipAddressCountry',
        :'state' => :'state',
        :'deleted' => :'deleted',
        :'default_payment_method' => :'defaultPaymentMethod'
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
        :'organization_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'card_holder_name' => :'String',
        :'expiry_date' => :'String',
        :'card_type' => :'String',
        :'country' => :'String',
        :'province' => :'String',
        :'first_six' => :'String',
        :'last_four' => :'String',
        :'expiry_year' => :'Integer',
        :'expiry_month' => :'Integer',
        :'link_id' => :'String',
        :'gateway' => :'String',
        :'ip_address' => :'String',
        :'ip_address_country' => :'String',
        :'state' => :'String',
        :'deleted' => :'BOOLEAN',
        :'default_payment_method' => :'BOOLEAN'
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

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'cardHolderName')
        self.card_holder_name = attributes[:'cardHolderName']
      end

      if attributes.has_key?(:'expiryDate')
        self.expiry_date = attributes[:'expiryDate']
      end

      if attributes.has_key?(:'cardType')
        self.card_type = attributes[:'cardType']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'province')
        self.province = attributes[:'province']
      end

      if attributes.has_key?(:'firstSix')
        self.first_six = attributes[:'firstSix']
      end

      if attributes.has_key?(:'lastFour')
        self.last_four = attributes[:'lastFour']
      end

      if attributes.has_key?(:'expiryYear')
        self.expiry_year = attributes[:'expiryYear']
      end

      if attributes.has_key?(:'expiryMonth')
        self.expiry_month = attributes[:'expiryMonth']
      end

      if attributes.has_key?(:'linkID')
        self.link_id = attributes[:'linkID']
      end

      if attributes.has_key?(:'gateway')
        self.gateway = attributes[:'gateway']
      end

      if attributes.has_key?(:'ipAddress')
        self.ip_address = attributes[:'ipAddress']
      end

      if attributes.has_key?(:'ipAddressCountry')
        self.ip_address_country = attributes[:'ipAddressCountry']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = false
      end

      if attributes.has_key?(:'defaultPaymentMethod')
        self.default_payment_method = attributes[:'defaultPaymentMethod']
      else
        self.default_payment_method = false
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
      return false if @name.nil?
      return false if @expiry_date.nil?
      return false if @link_id.nil?
      return false if @gateway.nil?
      gateway_validator = EnumAttributeValidator.new('String', ["cybersource_token", "card_vault", "paypal_simple", "locustworld", "free", "coupon", "credit_note", "stripe", "braintree", "balanced", "paypal", "billforward_test", "offline", "trial", "stripeACH", "authorizeNet", "spreedly", "sagePay", "trustCommerce", "payvision", "kash"])
      return false unless gateway_validator.valid?(@gateway)
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["Pending", "Active", "Expiring", "Expired"])
      return false unless state_validator.valid?(@state)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gateway Object to be assigned
    def gateway=(gateway)
      validator = EnumAttributeValidator.new('String', ["cybersource_token", "card_vault", "paypal_simple", "locustworld", "free", "coupon", "credit_note", "stripe", "braintree", "balanced", "paypal", "billforward_test", "offline", "trial", "stripeACH", "authorizeNet", "spreedly", "sagePay", "trustCommerce", "payvision", "kash"])
      unless validator.valid?(gateway)
        fail ArgumentError, "invalid value for 'gateway', must be one of #{validator.allowable_values}."
      end
      @gateway = gateway
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["Pending", "Active", "Expiring", "Expired"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
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
          organization_id == o.organization_id &&
          name == o.name &&
          description == o.description &&
          card_holder_name == o.card_holder_name &&
          expiry_date == o.expiry_date &&
          card_type == o.card_type &&
          country == o.country &&
          province == o.province &&
          first_six == o.first_six &&
          last_four == o.last_four &&
          expiry_year == o.expiry_year &&
          expiry_month == o.expiry_month &&
          link_id == o.link_id &&
          gateway == o.gateway &&
          ip_address == o.ip_address &&
          ip_address_country == o.ip_address_country &&
          state == o.state &&
          deleted == o.deleted &&
          default_payment_method == o.default_payment_method
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created, changed_by, updated, id, crm_id, account_id, organization_id, name, description, card_holder_name, expiry_date, card_type, country, province, first_six, last_four, expiry_year, expiry_month, link_id, gateway, ip_address, ip_address_country, state, deleted, default_payment_method].hash
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