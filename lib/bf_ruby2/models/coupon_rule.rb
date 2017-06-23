=begin
#BillForward REST API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module Bfwd
  # A coupon-rule.
  class CouponRule
    # { \"description\" : \"ID of the parent of this coupon-rule.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :parent_rule_id

    # { \"description\" : \"The UTC DateTime when the object was created.\", \"verbs\":[] }
    attr_accessor :created

    # { \"description\" : \"ID of the user who last updated the entity.\", \"verbs\":[] }
    attr_accessor :changed_by

    # { \"description\" : \"The UTC DateTime when the object was last updated.\", \"verbs\":[] }
    attr_accessor :updated

    # { \"description\" : \"ID of the coupon-rule.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :id

    # { \"description\" : \"ID of the organization associated with the coupon-rule.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :organization_id

    # { \"description\" : \"ID of the coupon-definition associated with the coupon-rule.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :coupon_definition_id

    # { \"description\" : \"The subject of the coupon-rule. The coupon-rule can operate on either the user or subscription that the coupon-instance is associated with.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :subject

    # { \"description\" : \"Specifies whether the rule's result will affect the application of the coupon-instance positively or negatively.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :polarity

    # { \"description\" : \"The verb of the coupon-rule. coupon-rules can check whether the user or subscription has a certain property.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :verb

    # { \"description\" : \"This is the comparison operator of the coupon-rule's parameter and the subject's object.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :preposition

    # { \"description\" : \"The parameter for the coupon-rule. This specifies the ID or the quantity for the object of the subject.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :parameter

    # { \"description\" : \"The property of the subject of the coupon-rule. e.g. When the subject is 'subscription' and the object is 'product-ID', the coupon-rule will observe the product-ID for that subscription.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :object

    # { \"description\" : \"The rule-validation-strategy object associated with the coupon-rule.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :rule_validation_strategy

    # { \"description\" : \"When the subject is subscription, the specifier is used to define which unit of measure the coupon rule will operate on. When the subject is user, the specifier defines which property of the user's account it will operate on.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :specifier

    # { \"description\" : \"Has the coupon-modifier been deleted.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :deleted

    # { \"description\" : \"The collection of child coupon-rules associated with the coupon-rule.\", \"verbs\":[\"POST\",\"PUT\",\"GET\"] }
    attr_accessor :child_rules

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
        :'parent_rule_id' => :'parentRuleID',
        :'created' => :'created',
        :'changed_by' => :'changedBy',
        :'updated' => :'updated',
        :'id' => :'id',
        :'organization_id' => :'organizationID',
        :'coupon_definition_id' => :'couponDefinitionID',
        :'subject' => :'subject',
        :'polarity' => :'polarity',
        :'verb' => :'verb',
        :'preposition' => :'preposition',
        :'parameter' => :'parameter',
        :'object' => :'object',
        :'rule_validation_strategy' => :'ruleValidationStrategy',
        :'specifier' => :'specifier',
        :'deleted' => :'deleted',
        :'child_rules' => :'childRules'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'parent_rule_id' => :'String',
        :'created' => :'DateTime',
        :'changed_by' => :'String',
        :'updated' => :'DateTime',
        :'id' => :'String',
        :'organization_id' => :'String',
        :'coupon_definition_id' => :'String',
        :'subject' => :'String',
        :'polarity' => :'String',
        :'verb' => :'String',
        :'preposition' => :'String',
        :'parameter' => :'String',
        :'object' => :'String',
        :'rule_validation_strategy' => :'String',
        :'specifier' => :'String',
        :'deleted' => :'BOOLEAN',
        :'child_rules' => :'Array<CouponRule>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'parentRuleID')
        self.parent_rule_id = attributes[:'parentRuleID']
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

      if attributes.has_key?(:'organizationID')
        self.organization_id = attributes[:'organizationID']
      end

      if attributes.has_key?(:'couponDefinitionID')
        self.coupon_definition_id = attributes[:'couponDefinitionID']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'polarity')
        self.polarity = attributes[:'polarity']
      end

      if attributes.has_key?(:'verb')
        self.verb = attributes[:'verb']
      end

      if attributes.has_key?(:'preposition')
        self.preposition = attributes[:'preposition']
      end

      if attributes.has_key?(:'parameter')
        self.parameter = attributes[:'parameter']
      end

      if attributes.has_key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.has_key?(:'ruleValidationStrategy')
        self.rule_validation_strategy = attributes[:'ruleValidationStrategy']
      end

      if attributes.has_key?(:'specifier')
        self.specifier = attributes[:'specifier']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = false
      end

      if attributes.has_key?(:'childRules')
        if (value = attributes[:'childRules']).is_a?(Array)
          self.child_rules = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @parent_rule_id.nil?
        invalid_properties.push("invalid value for 'parent_rule_id', parent_rule_id cannot be nil.")
      end

      if @organization_id.nil?
        invalid_properties.push("invalid value for 'organization_id', organization_id cannot be nil.")
      end

      if @coupon_definition_id.nil?
        invalid_properties.push("invalid value for 'coupon_definition_id', coupon_definition_id cannot be nil.")
      end

      if @subject.nil?
        invalid_properties.push("invalid value for 'subject', subject cannot be nil.")
      end

      if @polarity.nil?
        invalid_properties.push("invalid value for 'polarity', polarity cannot be nil.")
      end

      if @verb.nil?
        invalid_properties.push("invalid value for 'verb', verb cannot be nil.")
      end

      if @preposition.nil?
        invalid_properties.push("invalid value for 'preposition', preposition cannot be nil.")
      end

      if @parameter.nil?
        invalid_properties.push("invalid value for 'parameter', parameter cannot be nil.")
      end

      if @object.nil?
        invalid_properties.push("invalid value for 'object', object cannot be nil.")
      end

      if @rule_validation_strategy.nil?
        invalid_properties.push("invalid value for 'rule_validation_strategy', rule_validation_strategy cannot be nil.")
      end

      if @specifier.nil?
        invalid_properties.push("invalid value for 'specifier', specifier cannot be nil.")
      end

      if @deleted.nil?
        invalid_properties.push("invalid value for 'deleted', deleted cannot be nil.")
      end

      if @child_rules.nil?
        invalid_properties.push("invalid value for 'child_rules', child_rules cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @parent_rule_id.nil?
      return false if @organization_id.nil?
      return false if @coupon_definition_id.nil?
      return false if @subject.nil?
      subject_validator = EnumAttributeValidator.new('String', ["user", "current_subscription", "child_rules"])
      return false unless subject_validator.valid?(@subject)
      return false if @polarity.nil?
      polarity_validator = EnumAttributeValidator.new('String', ["does", "does_not"])
      return false unless polarity_validator.valid?(@polarity)
      return false if @verb.nil?
      verb_validator = EnumAttributeValidator.new('String', ["have"])
      return false unless verb_validator.valid?(@verb)
      return false if @preposition.nil?
      preposition_validator = EnumAttributeValidator.new('String', ["less_than", "less_than_or_equal_to", "greater_than", "greater_than_or_equal_to", "equal_to"])
      return false unless preposition_validator.valid?(@preposition)
      return false if @parameter.nil?
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["subscription", "unit_of_measure", "satisfaction", "product_rate_plan_id", "product_id"])
      return false unless object_validator.valid?(@object)
      return false if @rule_validation_strategy.nil?
      rule_validation_strategy_validator = EnumAttributeValidator.new('String', ["only_at_initialisation", "while_recurring_or_initialisation", "only_while_recurring"])
      return false unless rule_validation_strategy_validator.valid?(@rule_validation_strategy)
      return false if @specifier.nil?
      return false if @deleted.nil?
      return false if @child_rules.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subject Object to be assigned
    def subject=(subject)
      validator = EnumAttributeValidator.new('String', ["user", "current_subscription", "child_rules"])
      unless validator.valid?(subject)
        fail ArgumentError, "invalid value for 'subject', must be one of #{validator.allowable_values}."
      end
      @subject = subject
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] polarity Object to be assigned
    def polarity=(polarity)
      validator = EnumAttributeValidator.new('String', ["does", "does_not"])
      unless validator.valid?(polarity)
        fail ArgumentError, "invalid value for 'polarity', must be one of #{validator.allowable_values}."
      end
      @polarity = polarity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verb Object to be assigned
    def verb=(verb)
      validator = EnumAttributeValidator.new('String', ["have"])
      unless validator.valid?(verb)
        fail ArgumentError, "invalid value for 'verb', must be one of #{validator.allowable_values}."
      end
      @verb = verb
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preposition Object to be assigned
    def preposition=(preposition)
      validator = EnumAttributeValidator.new('String', ["less_than", "less_than_or_equal_to", "greater_than", "greater_than_or_equal_to", "equal_to"])
      unless validator.valid?(preposition)
        fail ArgumentError, "invalid value for 'preposition', must be one of #{validator.allowable_values}."
      end
      @preposition = preposition
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["subscription", "unit_of_measure", "satisfaction", "product_rate_plan_id", "product_id"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for 'object', must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rule_validation_strategy Object to be assigned
    def rule_validation_strategy=(rule_validation_strategy)
      validator = EnumAttributeValidator.new('String', ["only_at_initialisation", "while_recurring_or_initialisation", "only_while_recurring"])
      unless validator.valid?(rule_validation_strategy)
        fail ArgumentError, "invalid value for 'rule_validation_strategy', must be one of #{validator.allowable_values}."
      end
      @rule_validation_strategy = rule_validation_strategy
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parent_rule_id == o.parent_rule_id &&
          created == o.created &&
          changed_by == o.changed_by &&
          updated == o.updated &&
          id == o.id &&
          organization_id == o.organization_id &&
          coupon_definition_id == o.coupon_definition_id &&
          subject == o.subject &&
          polarity == o.polarity &&
          verb == o.verb &&
          preposition == o.preposition &&
          parameter == o.parameter &&
          object == o.object &&
          rule_validation_strategy == o.rule_validation_strategy &&
          specifier == o.specifier &&
          deleted == o.deleted &&
          child_rules == o.child_rules
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [parent_rule_id, created, changed_by, updated, id, organization_id, coupon_definition_id, subject, polarity, verb, preposition, parameter, object, rule_validation_strategy, specifier, deleted, child_rules].hash
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
