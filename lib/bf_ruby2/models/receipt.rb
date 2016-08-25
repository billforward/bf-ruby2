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
  # Receipt
  class Receipt
    attr_accessor :refund_id

    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    attr_accessor :id

    # { \"description\" : \"CRM ID of the subscription.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :crm_id

    attr_accessor :invoice_id

    attr_accessor :gateway_reference_id

    attr_accessor :account_id

    attr_accessor :payment_id

    attr_accessor :payment_method_id

    attr_accessor :organization_id

    attr_accessor :cardholder_name

    attr_accessor :card_last_four

    attr_accessor :card_description

    attr_accessor :card_country

    attr_accessor :card_province

    attr_accessor :card_type

    # {\"description\":\"IP address associated with this payment method.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :ip_address

    # {\"description\":\"Country of the IP address associated with this payment method.\",\"verbs\":[\"POST\",\"PUT\",\"GET\"]}
    attr_accessor :ip_address_country

    # { \"description\" : \"Type of transaction.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :type

    # { \"description\" : \"Currency of the invoice specified by a three character ISO 4217 currency code.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :currency

    attr_accessor :value

    attr_accessor :payment_gateway

    # { \"description\" : \"The type of the invoice. A subscription invoice is raised every time a subscription recurs. An amendment is created for intra-contract changes. An Adhoc invoice is created for payment that is taken out-of-band of a subscription. Finally the invoice generated for a trial period is marked as Trial.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :invoice_type

    attr_accessor :execution_attempt

    attr_accessor :decision

    attr_accessor :reason_code

    attr_accessor :raw_reason_code

    attr_accessor :raw_data

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
        :'refund_id' => :'refundID',
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'id' => :'id',
        :'crm_id' => :'crmID',
        :'invoice_id' => :'invoiceID',
        :'gateway_reference_id' => :'gatewayReferenceID',
        :'account_id' => :'accountID',
        :'payment_id' => :'paymentID',
        :'payment_method_id' => :'paymentMethodID',
        :'organization_id' => :'organizationID',
        :'cardholder_name' => :'cardholderName',
        :'card_last_four' => :'cardLastFour',
        :'card_description' => :'cardDescription',
        :'card_country' => :'cardCountry',
        :'card_province' => :'cardProvince',
        :'card_type' => :'cardType',
        :'ip_address' => :'ipAddress',
        :'ip_address_country' => :'ipAddressCountry',
        :'type' => :'type',
        :'currency' => :'currency',
        :'value' => :'value',
        :'payment_gateway' => :'paymentGateway',
        :'invoice_type' => :'invoiceType',
        :'execution_attempt' => :'executionAttempt',
        :'decision' => :'decision',
        :'reason_code' => :'reasonCode',
        :'raw_reason_code' => :'rawReasonCode',
        :'raw_data' => :'rawData'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'refund_id' => :'String',
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'id' => :'String',
        :'crm_id' => :'String',
        :'invoice_id' => :'String',
        :'gateway_reference_id' => :'String',
        :'account_id' => :'String',
        :'payment_id' => :'String',
        :'payment_method_id' => :'String',
        :'organization_id' => :'String',
        :'cardholder_name' => :'String',
        :'card_last_four' => :'String',
        :'card_description' => :'String',
        :'card_country' => :'String',
        :'card_province' => :'String',
        :'card_type' => :'String',
        :'ip_address' => :'String',
        :'ip_address_country' => :'String',
        :'type' => :'String',
        :'currency' => :'String',
        :'value' => :'Float',
        :'payment_gateway' => :'String',
        :'invoice_type' => :'String',
        :'execution_attempt' => :'Integer',
        :'decision' => :'String',
        :'reason_code' => :'Integer',
        :'raw_reason_code' => :'String',
        :'raw_data' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'refundID')
        self.refund_id = attributes[:'refundID']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'changedBy')
        self.changed_by = attributes[:'changedBy']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'crmID')
        self.crm_id = attributes[:'crmID']
      end

      if attributes.has_key?(:'invoiceID')
        self.invoice_id = attributes[:'invoiceID']
      end

      if attributes.has_key?(:'gatewayReferenceID')
        self.gateway_reference_id = attributes[:'gatewayReferenceID']
      end

      if attributes.has_key?(:'accountID')
        self.account_id = attributes[:'accountID']
      end

      if attributes.has_key?(:'paymentID')
        self.payment_id = attributes[:'paymentID']
      end

      if attributes.has_key?(:'paymentMethodID')
        self.payment_method_id = attributes[:'paymentMethodID']
      end

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'cardholderName')
        self.cardholder_name = attributes[:'cardholderName']
      end

      if attributes.has_key?(:'cardLastFour')
        self.card_last_four = attributes[:'cardLastFour']
      end

      if attributes.has_key?(:'cardDescription')
        self.card_description = attributes[:'cardDescription']
      end

      if attributes.has_key?(:'cardCountry')
        self.card_country = attributes[:'cardCountry']
      end

      if attributes.has_key?(:'cardProvince')
        self.card_province = attributes[:'cardProvince']
      end

      if attributes.has_key?(:'cardType')
        self.card_type = attributes[:'cardType']
      end

      if attributes.has_key?(:'ipAddress')
        self.ip_address = attributes[:'ipAddress']
      end

      if attributes.has_key?(:'ipAddressCountry')
        self.ip_address_country = attributes[:'ipAddressCountry']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'paymentGateway')
        self.payment_gateway = attributes[:'paymentGateway']
      end

      if attributes.has_key?(:'invoiceType')
        self.invoice_type = attributes[:'invoiceType']
      end

      if attributes.has_key?(:'executionAttempt')
        self.execution_attempt = attributes[:'executionAttempt']
      end

      if attributes.has_key?(:'decision')
        self.decision = attributes[:'decision']
      end

      if attributes.has_key?(:'reasonCode')
        self.reason_code = attributes[:'reasonCode']
      end

      if attributes.has_key?(:'rawReasonCode')
        self.raw_reason_code = attributes[:'rawReasonCode']
      end

      if attributes.has_key?(:'rawData')
        if (value = attributes[:'rawData']).is_a?(Array)
          self.raw_data = value
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
      return false if @refund_id.nil?
      return false if @crm_id.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["credit", "debit"])
      return false unless type_validator.valid?(@type)
      return false if @currency.nil?
      payment_gateway_validator = EnumAttributeValidator.new('String', ["cybersource_token", "card_vault", "paypal_simple", "locustworld", "free", "coupon", "credit_note", "stripe", "braintree", "balanced", "paypal", "billforward_test", "offline", "trial", "stripeACH", "authorizeNet", "spreedly", "sagePay", "trustCommerce", "payvision", "kash"])
      return false unless payment_gateway_validator.valid?(@payment_gateway)
      return false if @invoice_type.nil?
      invoice_type_validator = EnumAttributeValidator.new('String', ["Subscription", "Trial", "Charge", "FinalArrears", "Amendment", "Aggregated"])
      return false unless invoice_type_validator.valid?(@invoice_type)
      decision_validator = EnumAttributeValidator.new('String', ["Accept", "Reject", "Error"])
      return false unless decision_validator.valid?(@decision)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["credit", "debit"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_gateway Object to be assigned
    def payment_gateway=(payment_gateway)
      validator = EnumAttributeValidator.new('String', ["cybersource_token", "card_vault", "paypal_simple", "locustworld", "free", "coupon", "credit_note", "stripe", "braintree", "balanced", "paypal", "billforward_test", "offline", "trial", "stripeACH", "authorizeNet", "spreedly", "sagePay", "trustCommerce", "payvision", "kash"])
      unless validator.valid?(payment_gateway)
        fail ArgumentError, "invalid value for 'payment_gateway', must be one of #{validator.allowable_values}."
      end
      @payment_gateway = payment_gateway
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_type Object to be assigned
    def invoice_type=(invoice_type)
      validator = EnumAttributeValidator.new('String', ["Subscription", "Trial", "Charge", "FinalArrears", "Amendment", "Aggregated"])
      unless validator.valid?(invoice_type)
        fail ArgumentError, "invalid value for 'invoice_type', must be one of #{validator.allowable_values}."
      end
      @invoice_type = invoice_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] decision Object to be assigned
    def decision=(decision)
      validator = EnumAttributeValidator.new('String', ["Accept", "Reject", "Error"])
      unless validator.valid?(decision)
        fail ArgumentError, "invalid value for 'decision', must be one of #{validator.allowable_values}."
      end
      @decision = decision
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          refund_id == o.refund_id &&
          created == o.created &&
          changed_by == o.changed_by &&
          id == o.id &&
          crm_id == o.crm_id &&
          invoice_id == o.invoice_id &&
          gateway_reference_id == o.gateway_reference_id &&
          account_id == o.account_id &&
          payment_id == o.payment_id &&
          payment_method_id == o.payment_method_id &&
          organization_id == o.organization_id &&
          cardholder_name == o.cardholder_name &&
          card_last_four == o.card_last_four &&
          card_description == o.card_description &&
          card_country == o.card_country &&
          card_province == o.card_province &&
          card_type == o.card_type &&
          ip_address == o.ip_address &&
          ip_address_country == o.ip_address_country &&
          type == o.type &&
          currency == o.currency &&
          value == o.value &&
          payment_gateway == o.payment_gateway &&
          invoice_type == o.invoice_type &&
          execution_attempt == o.execution_attempt &&
          decision == o.decision &&
          reason_code == o.reason_code &&
          raw_reason_code == o.raw_reason_code &&
          raw_data == o.raw_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [refund_id, created, changed_by, id, crm_id, invoice_id, gateway_reference_id, account_id, payment_id, payment_method_id, organization_id, cardholder_name, card_last_four, card_description, card_country, card_province, card_type, ip_address, ip_address_country, type, currency, value, payment_gateway, invoice_type, execution_attempt, decision, reason_code, raw_reason_code, raw_data].hash
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
